package com.google.api.client.util;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class DateTime implements Serializable {
    private static final long serialVersionUID = 1;
    private final boolean dateOnly;
    private final int tzShift;
    private final long value;
    private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
    private static final String RFC3339_REGEX = "(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?";
    private static final Pattern RFC3339_PATTERN = Pattern.compile(RFC3339_REGEX);

    public DateTime(Date date, TimeZone zone) {
        this(false, date.getTime(), zone == null ? null : Integer.valueOf(zone.getOffset(date.getTime()) / 60000));
    }

    public DateTime(long value) {
        this(false, value, null);
    }

    public DateTime(Date value) {
        this(value.getTime());
    }

    public DateTime(long value, int tzShift) {
        this(false, value, Integer.valueOf(tzShift));
    }

    public DateTime(boolean dateOnly, long value, Integer tzShift) {
        int offset;
        this.dateOnly = dateOnly;
        this.value = value;
        if (dateOnly) {
            offset = 0;
        } else {
            offset = tzShift == null ? TimeZone.getDefault().getOffset(value) / 60000 : tzShift.intValue();
        }
        this.tzShift = offset;
    }

    public DateTime(String value) {
        DateTime dateTime = parseRfc3339(value);
        this.dateOnly = dateTime.dateOnly;
        this.value = dateTime.value;
        this.tzShift = dateTime.tzShift;
    }

    public long getValue() {
        return this.value;
    }

    public boolean isDateOnly() {
        return this.dateOnly;
    }

    public int getTimeZoneShift() {
        return this.tzShift;
    }

    public String toStringRfc3339() {
        StringBuilder sb = new StringBuilder();
        Calendar dateTime = new GregorianCalendar(GMT);
        long localTime = this.value + (((long) this.tzShift) * 60000);
        dateTime.setTimeInMillis(localTime);
        appendInt(sb, dateTime.get(1), 4);
        sb.append('-');
        appendInt(sb, dateTime.get(2) + 1, 2);
        sb.append('-');
        appendInt(sb, dateTime.get(5), 2);
        if (!this.dateOnly) {
            sb.append('T');
            appendInt(sb, dateTime.get(11), 2);
            sb.append(':');
            appendInt(sb, dateTime.get(12), 2);
            sb.append(':');
            appendInt(sb, dateTime.get(13), 2);
            if (dateTime.isSet(14)) {
                sb.append('.');
                appendInt(sb, dateTime.get(14), 3);
            }
            if (this.tzShift == 0) {
                sb.append('Z');
            } else {
                int absTzShift = this.tzShift;
                if (this.tzShift > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    absTzShift = -absTzShift;
                }
                int tzHours = absTzShift / 60;
                int tzMinutes = absTzShift % 60;
                appendInt(sb, tzHours, 2);
                sb.append(':');
                appendInt(sb, tzMinutes, 2);
            }
        }
        return sb.toString();
    }

    public String toString() {
        return toStringRfc3339();
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof DateTime)) {
            return false;
        }
        DateTime other = (DateTime) o;
        return this.dateOnly == other.dateOnly && this.value == other.value && this.tzShift == other.tzShift;
    }

    public int hashCode() {
        return Arrays.hashCode(new long[]{this.value, this.dateOnly ? serialVersionUID : 0L, this.tzShift});
    }

    public static DateTime parseRfc3339(String str) {
        return parseRfc3339WithNanoSeconds(str).toDateTime();
    }

    public static SecondsAndNanos parseRfc3339ToSecondsAndNanos(String str) {
        Rfc3339ParseResult time = parseRfc3339WithNanoSeconds(str);
        return time.toSecondsAndNanos();
    }

    public static final class SecondsAndNanos implements Serializable {
        private final int nanos;
        private final long seconds;

        public static SecondsAndNanos ofSecondsAndNanos(long seconds, int nanos) {
            return new SecondsAndNanos(seconds, nanos);
        }

        private SecondsAndNanos(long seconds, int nanos) {
            this.seconds = seconds;
            this.nanos = nanos;
        }

        public long getSeconds() {
            return this.seconds;
        }

        public int getNanos() {
            return this.nanos;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            SecondsAndNanos that = (SecondsAndNanos) o;
            return this.seconds == that.seconds && this.nanos == that.nanos;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.seconds), Integer.valueOf(this.nanos)});
        }

        public String toString() {
            return String.format("Seconds: %d, Nanos: %d", Long.valueOf(this.seconds), Integer.valueOf(this.nanos));
        }
    }

    private static class Rfc3339ParseResult implements Serializable {
        private final int nanos;
        private final long seconds;
        private final boolean timeGiven;
        private final Integer tzShift;

        private Rfc3339ParseResult(long seconds, int nanos, boolean timeGiven, Integer tzShift) {
            this.seconds = seconds;
            this.nanos = nanos;
            this.timeGiven = timeGiven;
            this.tzShift = tzShift;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DateTime toDateTime() {
            long seconds = TimeUnit.SECONDS.toMillis(this.seconds);
            long nanos = TimeUnit.NANOSECONDS.toMillis(this.nanos);
            return new DateTime(!this.timeGiven, seconds + nanos, this.tzShift);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SecondsAndNanos toSecondsAndNanos() {
            return new SecondsAndNanos(this.seconds, this.nanos);
        }
    }

    private static Rfc3339ParseResult parseRfc3339WithNanoSeconds(String str) throws NumberFormatException {
        int hourOfDay;
        int minute;
        int second;
        int nanoseconds;
        Integer tzShiftInteger;
        Matcher matcher = RFC3339_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new NumberFormatException("Invalid date/time format: " + str);
        }
        int year = Integer.parseInt(matcher.group(1));
        int month = Integer.parseInt(matcher.group(2)) - 1;
        int day = Integer.parseInt(matcher.group(3));
        boolean isTimeGiven = matcher.group(4) != null;
        String tzShiftRegexGroup = matcher.group(9);
        boolean isTzShiftGiven = tzShiftRegexGroup != null;
        if (isTzShiftGiven && !isTimeGiven) {
            throw new NumberFormatException("Invalid date/time format, cannot specify time zone shift without specifying time: " + str);
        }
        if (!isTimeGiven) {
            hourOfDay = 0;
            minute = 0;
            second = 0;
            nanoseconds = 0;
        } else {
            int hourOfDay2 = Integer.parseInt(matcher.group(5));
            int minute2 = Integer.parseInt(matcher.group(6));
            int second2 = Integer.parseInt(matcher.group(7));
            if (matcher.group(8) != null) {
                String fraction = com.google.common.base.Strings.padEnd(matcher.group(8).substring(1), 9, '0');
                int nanoseconds2 = Integer.parseInt(fraction);
                hourOfDay = hourOfDay2;
                minute = minute2;
                second = second2;
                nanoseconds = nanoseconds2;
            } else {
                hourOfDay = hourOfDay2;
                minute = minute2;
                second = second2;
                nanoseconds = 0;
            }
        }
        Calendar dateTime = new GregorianCalendar(GMT);
        dateTime.clear();
        dateTime.set(year, month, day, hourOfDay, minute, second);
        long value = dateTime.getTimeInMillis();
        if (isTimeGiven && isTzShiftGiven) {
            if (Character.toUpperCase(tzShiftRegexGroup.charAt(0)) != 'Z') {
                int tzShift = (Integer.parseInt(matcher.group(11)) * 60) + Integer.parseInt(matcher.group(12));
                if (matcher.group(10).charAt(0) == '-') {
                    tzShift = -tzShift;
                }
                value -= ((long) tzShift) * 60000;
                Integer tzShiftInteger2 = Integer.valueOf(tzShift);
                tzShiftInteger = tzShiftInteger2;
            } else {
                tzShiftInteger = 0;
            }
        } else {
            tzShiftInteger = null;
        }
        long secondsSinceEpoch = value / 1000;
        return new Rfc3339ParseResult(secondsSinceEpoch, nanoseconds, isTimeGiven, tzShiftInteger);
    }

    private static void appendInt(StringBuilder sb, int num, int numDigits) {
        if (num < 0) {
            sb.append('-');
            num = -num;
        }
        int x = num;
        while (x > 0) {
            x /= 10;
            numDigits--;
        }
        for (int i = 0; i < numDigits; i++) {
            sb.append('0');
        }
        if (num != 0) {
            sb.append(num);
        }
    }
}
