package gnu.mapping;

import gnu.lists.LList;
import gnu.lists.Pair;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyLocation extends Location {
    Pair pair;

    @Override // gnu.mapping.Location
    public final Object get(Object defaultValue) {
        return this.pair.getCar();
    }

    @Override // gnu.mapping.Location
    public boolean isBound() {
        return true;
    }

    @Override // gnu.mapping.Location
    public final void set(Object newValue) {
        this.pair.setCar(newValue);
    }

    public static Object getPropertyList(Object symbol, Environment env) {
        return env.get(Symbol.PLIST, symbol, LList.Empty);
    }

    public static Object getPropertyList(Object symbol) {
        return Environment.getCurrent().get(Symbol.PLIST, symbol, LList.Empty);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a A[Catch: all -> 0x0072, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0015, B:9:0x001b, B:12:0x0020, B:14:0x002d, B:16:0x0036, B:18:0x0042, B:17:0x003a, B:19:0x0050, B:21:0x005e, B:22:0x0061, B:23:0x006d, B:24:0x0070), top: B:31:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void setPropertyList(java.lang.Object r10, java.lang.Object r11, gnu.mapping.Environment r12) {
        /*
            monitor-enter(r12)
            gnu.mapping.Symbol r0 = gnu.mapping.Symbol.PLIST     // Catch: java.lang.Throwable -> L72
            gnu.mapping.Location r0 = r12.lookup(r0, r10)     // Catch: java.lang.Throwable -> L72
            boolean r1 = r10 instanceof gnu.mapping.Symbol     // Catch: java.lang.Throwable -> L72
            if (r1 == 0) goto L6d
            r1 = r10
            gnu.mapping.Symbol r1 = (gnu.mapping.Symbol) r1     // Catch: java.lang.Throwable -> L72
            gnu.lists.LList r2 = gnu.lists.LList.Empty     // Catch: java.lang.Throwable -> L72
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L72
            r3 = r2
        L15:
            boolean r4 = r3 instanceof gnu.lists.Pair     // Catch: java.lang.Throwable -> L72
            if (r4 != 0) goto L50
        L1a:
            r3 = r11
        L1b:
            boolean r4 = r3 instanceof gnu.lists.Pair     // Catch: java.lang.Throwable -> L72
            if (r4 != 0) goto L20
            goto L6d
        L20:
            r4 = r3
            gnu.lists.Pair r4 = (gnu.lists.Pair) r4     // Catch: java.lang.Throwable -> L72
            java.lang.Object r5 = r4.getCar()     // Catch: java.lang.Throwable -> L72
            gnu.mapping.Location r6 = r12.lookup(r1, r5)     // Catch: java.lang.Throwable -> L72
            if (r6 == 0) goto L3a
            gnu.mapping.Location r7 = r6.getBase()     // Catch: java.lang.Throwable -> L72
            r6 = r7
            boolean r7 = r7 instanceof gnu.mapping.PropertyLocation     // Catch: java.lang.Throwable -> L72
            if (r7 == 0) goto L3a
            r7 = r6
            gnu.mapping.PropertyLocation r7 = (gnu.mapping.PropertyLocation) r7     // Catch: java.lang.Throwable -> L72
            goto L42
        L3a:
            gnu.mapping.PropertyLocation r7 = new gnu.mapping.PropertyLocation     // Catch: java.lang.Throwable -> L72
            r7.<init>()     // Catch: java.lang.Throwable -> L72
            r12.addLocation(r1, r5, r7)     // Catch: java.lang.Throwable -> L72
        L42:
            java.lang.Object r8 = r4.getCdr()     // Catch: java.lang.Throwable -> L72
            gnu.lists.Pair r8 = (gnu.lists.Pair) r8     // Catch: java.lang.Throwable -> L72
            r7.pair = r8     // Catch: java.lang.Throwable -> L72
            java.lang.Object r9 = r8.getCdr()     // Catch: java.lang.Throwable -> L72
            r3 = r9
            goto L1b
        L50:
            r4 = r3
            gnu.lists.Pair r4 = (gnu.lists.Pair) r4     // Catch: java.lang.Throwable -> L72
            java.lang.Object r5 = r4.getCar()     // Catch: java.lang.Throwable -> L72
            r6 = 0
            java.lang.Object r6 = plistGet(r11, r5, r6)     // Catch: java.lang.Throwable -> L72
            if (r6 == 0) goto L61
            r12.remove(r1, r5)     // Catch: java.lang.Throwable -> L72
        L61:
            java.lang.Object r6 = r4.getCdr()     // Catch: java.lang.Throwable -> L72
            gnu.lists.Pair r6 = (gnu.lists.Pair) r6     // Catch: java.lang.Throwable -> L72
            java.lang.Object r6 = r6.getCdr()     // Catch: java.lang.Throwable -> L72
            r3 = r6
            goto L15
        L6d:
            r0.set(r11)     // Catch: java.lang.Throwable -> L72
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L72
            return
        L72:
            r0 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L72
            goto L76
        L75:
            throw r0
        L76:
            goto L75
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.PropertyLocation.setPropertyList(java.lang.Object, java.lang.Object, gnu.mapping.Environment):void");
    }

    public static void setPropertyList(Object symbol, Object plist) {
        setPropertyList(symbol, plist, Environment.getCurrent());
    }

    public static Object getProperty(Object symbol, Object property, Object defaultValue, Environment env) {
        if (!(symbol instanceof Symbol)) {
            if (symbol instanceof String) {
                symbol = Namespace.getDefaultSymbol((String) symbol);
            } else {
                return plistGet(env.get(Symbol.PLIST, symbol, LList.Empty), property, defaultValue);
            }
        }
        return env.get((Symbol) symbol, property, defaultValue);
    }

    public static Object getProperty(Object symbol, Object property, Object defaultValue) {
        return getProperty(symbol, property, defaultValue, Environment.getCurrent());
    }

    public static void putProperty(Object symbol, Object property, Object newValue, Environment env) {
        if (!(symbol instanceof Symbol)) {
            if (symbol instanceof String) {
                symbol = Namespace.getDefaultSymbol((String) symbol);
            } else {
                Location lloc = env.getLocation(Symbol.PLIST, symbol);
                lloc.set(plistPut(lloc.get(LList.Empty), property, newValue));
                return;
            }
        }
        Location loc = env.lookup((Symbol) symbol, property);
        if (loc != null) {
            Location loc2 = loc.getBase();
            if (loc2 instanceof PropertyLocation) {
                ((PropertyLocation) loc2).set(newValue);
                return;
            }
        }
        Location lloc2 = env.getLocation(Symbol.PLIST, symbol);
        Object plist = lloc2.get(LList.Empty);
        Pair pair = new Pair(newValue, plist);
        Object plist2 = new Pair(property, pair);
        lloc2.set(plist2);
        PropertyLocation ploc = new PropertyLocation();
        ploc.pair = pair;
        env.addLocation((Symbol) symbol, property, ploc);
    }

    public static void putProperty(Object symbol, Object property, Object newValue) {
        putProperty(symbol, property, newValue, Environment.getCurrent());
    }

    public static boolean removeProperty(Object symbol, Object property, Environment env) {
        Location ploc = env.lookup(Symbol.PLIST, symbol);
        if (ploc == null) {
            return false;
        }
        Object plist = ploc.get(LList.Empty);
        if (!(plist instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) plist;
        Pair prev = null;
        while (pair.getCar() != property) {
            Object next = pair.getCdr();
            if (!(next instanceof Pair)) {
                return false;
            }
            prev = pair;
            pair = (Pair) next;
        }
        Object tail = ((Pair) pair.getCdr()).getCdr();
        if (prev == null) {
            ploc.set(tail);
        } else {
            prev.setCdr(tail);
        }
        if (symbol instanceof Symbol) {
            env.remove((Symbol) symbol, property);
            return true;
        }
        return true;
    }

    public static boolean removeProperty(Object symbol, Object property) {
        return removeProperty(symbol, property, Environment.getCurrent());
    }

    public static Object plistGet(Object plist, Object prop, Object dfault) {
        while (plist instanceof Pair) {
            Pair pair = (Pair) plist;
            if (pair.getCar() == prop) {
                return ((Pair) pair.getCdr()).getCar();
            }
        }
        return dfault;
    }

    public static Object plistPut(Object plist, Object prop, Object value) {
        Object p = plist;
        while (p instanceof Pair) {
            Pair pair = (Pair) p;
            Pair next = (Pair) pair.getCdr();
            if (pair.getCar() == prop) {
                next.setCar(value);
                return plist;
            }
            p = next.getCdr();
        }
        return new Pair(prop, new Pair(value, plist));
    }

    public static Object plistRemove(Object plist, Object prop) {
        Pair prev = null;
        Object p = plist;
        while (p instanceof Pair) {
            Pair pair = (Pair) p;
            Pair next = (Pair) pair.getCdr();
            p = next.getCdr();
            if (pair.getCar() == prop) {
                if (prev == null) {
                    return p;
                }
                prev.setCdr(p);
                return plist;
            }
            prev = next;
        }
        return plist;
    }
}
