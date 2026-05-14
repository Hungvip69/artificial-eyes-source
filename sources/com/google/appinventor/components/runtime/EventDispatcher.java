package com.google.appinventor.components.runtime;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class EventDispatcher {
    private static final boolean DEBUG = false;
    private static final java.util.Map<HandlesEventDispatching, EventRegistry> mapDispatchDelegateToEventRegistry = new HashMap();

    private static final class EventClosure {
        private final String componentId;
        private final String eventName;

        private EventClosure(String componentId, String eventName) {
            this.componentId = componentId;
            this.eventName = eventName;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            EventClosure that = (EventClosure) o;
            if (this.componentId.equals(that.componentId) && this.eventName.equals(that.eventName)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.eventName.hashCode() * 31) + this.componentId.hashCode();
        }
    }

    private static final class EventRegistry {
        private final HandlesEventDispatching dispatchDelegate;
        private final HashMap<String, Set<EventClosure>> eventClosuresMap = new HashMap<>();

        EventRegistry(HandlesEventDispatching dispatchDelegate) {
            this.dispatchDelegate = dispatchDelegate;
        }
    }

    private EventDispatcher() {
    }

    private static EventRegistry getEventRegistry(HandlesEventDispatching dispatchDelegate) {
        EventRegistry er = mapDispatchDelegateToEventRegistry.get(dispatchDelegate);
        if (er == null) {
            EventRegistry er2 = new EventRegistry(dispatchDelegate);
            mapDispatchDelegateToEventRegistry.put(dispatchDelegate, er2);
            return er2;
        }
        return er;
    }

    private static EventRegistry removeEventRegistry(HandlesEventDispatching dispatchDelegate) {
        return mapDispatchDelegateToEventRegistry.remove(dispatchDelegate);
    }

    public static synchronized void registerEventForDelegation(HandlesEventDispatching dispatchDelegate, String componentId, String eventName) {
        EventRegistry er = getEventRegistry(dispatchDelegate);
        Set<EventClosure> eventClosures = (Set) er.eventClosuresMap.get(eventName);
        HashSet hashSet = eventClosures == null ? new HashSet() : new HashSet(eventClosures);
        hashSet.add(new EventClosure(componentId, eventName));
        er.eventClosuresMap.put(eventName, hashSet);
    }

    public static synchronized void unregisterEventForDelegation(HandlesEventDispatching dispatchDelegate, String componentId, String eventName) {
        EventRegistry er = getEventRegistry(dispatchDelegate);
        Set<EventClosure> eventClosures = (Set) er.eventClosuresMap.get(eventName);
        if (eventClosures != null && !eventClosures.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (EventClosure eventClosure : eventClosures) {
                if (!eventClosure.componentId.equals(componentId)) {
                    hashSet.add(eventClosure);
                }
            }
            er.eventClosuresMap.put(eventName, hashSet);
        }
    }

    public static synchronized void unregisterAllEventsForDelegation() {
        for (EventRegistry er : mapDispatchDelegateToEventRegistry.values()) {
            er.eventClosuresMap.clear();
        }
    }

    public static synchronized void removeDispatchDelegate(HandlesEventDispatching dispatchDelegate) {
        EventRegistry er = removeEventRegistry(dispatchDelegate);
        if (er != null) {
            er.eventClosuresMap.clear();
        }
    }

    public static synchronized boolean dispatchEvent(Component component, String eventName, Object... args) {
        return Boolean.TRUE == dispatchFallibleEvent(component, eventName, args);
    }

    public static synchronized Object dispatchFallibleEvent(Component component, String eventName, Object... args) {
        boolean dispatched;
        dispatched = false;
        try {
            Object[] args2 = OptionHelper.optionListsFromValues(component, eventName, args);
            HandlesEventDispatching dispatchDelegate = component.getDispatchDelegate();
            if (dispatchDelegate.canDispatchEvent(component, eventName)) {
                EventRegistry er = getEventRegistry(dispatchDelegate);
                Set<EventClosure> eventClosures = (Set) er.eventClosuresMap.get(eventName);
                if (eventClosures != null && eventClosures.size() > 0) {
                    dispatched = delegateDispatchEvent(dispatchDelegate, eventClosures, component, args2);
                }
                dispatchDelegate.dispatchGenericEvent(component, eventName, !dispatched, args2);
            }
        } catch (Exception e) {
            return e;
        }
        return Boolean.valueOf(dispatched);
    }

    private static synchronized boolean delegateDispatchEvent(HandlesEventDispatching dispatchDelegate, Set<EventClosure> eventClosures, Component component, Object... args) {
        boolean dispatched;
        dispatched = false;
        for (EventClosure eventClosure : eventClosures) {
            if (dispatchDelegate.dispatchEvent(component, eventClosure.componentId, eventClosure.eventName, args)) {
                dispatched = true;
            }
        }
        return dispatched;
    }

    public static String makeFullEventName(String componentId, String eventName) {
        return componentId + "$" + eventName;
    }
}
