package gnu.mapping;

/* JADX INFO: loaded from: classes.dex */
public class InheritingEnvironment extends SimpleEnvironment {
    int baseTimestamp;
    Environment[] inherited;
    Namespace[] namespaceMap;
    int numInherited;
    Object[] propertyMap;

    public InheritingEnvironment(String name, Environment parent) {
        super(name);
        addParent(parent);
        if (parent instanceof SimpleEnvironment) {
            SimpleEnvironment simpleEnvironment = (SimpleEnvironment) parent;
            int timestamp = simpleEnvironment.currentTimestamp + 1;
            simpleEnvironment.currentTimestamp = timestamp;
            this.baseTimestamp = timestamp;
            this.currentTimestamp = timestamp;
        }
    }

    public final int getNumParents() {
        return this.numInherited;
    }

    public final Environment getParent(int index) {
        return this.inherited[index];
    }

    public void addParent(Environment env) {
        if (this.numInherited == 0) {
            this.inherited = new Environment[4];
        } else if (this.numInherited <= this.inherited.length) {
            Environment[] newInherited = new Environment[this.numInherited * 2];
            System.arraycopy(this.inherited, 0, newInherited, 0, this.numInherited);
            this.inherited = newInherited;
        }
        this.inherited[this.numInherited] = env;
        this.numInherited++;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[PHI: r1
      0x0033: PHI (r1v2 'sym' gnu.mapping.Symbol) = 
      (r1v1 'sym' gnu.mapping.Symbol)
      (r1v1 'sym' gnu.mapping.Symbol)
      (r1v3 'sym' gnu.mapping.Symbol)
      (r1v1 'sym' gnu.mapping.Symbol)
     binds: [B:6:0x0009, B:8:0x0010, B:15:0x002b, B:11:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054 A[PHI: r2
      0x0054: PHI (r2v1 'prop' java.lang.Object) = 
      (r2v0 'prop' java.lang.Object)
      (r2v0 'prop' java.lang.Object)
      (r2v2 'prop' java.lang.Object)
      (r2v0 'prop' java.lang.Object)
     binds: [B:17:0x0035, B:19:0x003c, B:25:0x0053, B:22:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0072 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public gnu.mapping.NamedLocation lookupInherited(gnu.mapping.Symbol r7, java.lang.Object r8, int r9) {
        /*
            r6 = this;
            r0 = 0
        L1:
            int r1 = r6.numInherited
            if (r0 >= r1) goto L75
            r1 = r7
            r2 = r8
            gnu.mapping.Namespace[] r3 = r6.namespaceMap
            if (r3 == 0) goto L33
            gnu.mapping.Namespace[] r3 = r6.namespaceMap
            int r3 = r3.length
            int r4 = r0 * 2
            if (r3 <= r4) goto L33
            gnu.mapping.Namespace[] r3 = r6.namespaceMap
            int r4 = r0 * 2
            r3 = r3[r4]
            gnu.mapping.Namespace[] r4 = r6.namespaceMap
            int r5 = r0 * 2
            int r5 = r5 + 1
            r4 = r4[r5]
            if (r3 != 0) goto L24
            if (r4 == 0) goto L33
        L24:
            gnu.mapping.Namespace r5 = r7.getNamespace()
            if (r5 == r4) goto L2b
            goto L72
        L2b:
            java.lang.String r5 = r7.getName()
            gnu.mapping.Symbol r1 = gnu.mapping.Symbol.make(r3, r5)
        L33:
            java.lang.Object[] r3 = r6.propertyMap
            if (r3 == 0) goto L54
            java.lang.Object[] r3 = r6.propertyMap
            int r3 = r3.length
            int r4 = r0 * 2
            if (r3 <= r4) goto L54
            java.lang.Object[] r3 = r6.propertyMap
            int r4 = r0 * 2
            r3 = r3[r4]
            java.lang.Object[] r4 = r6.propertyMap
            int r5 = r0 * 2
            int r5 = r5 + 1
            r4 = r4[r5]
            if (r3 != 0) goto L50
            if (r4 == 0) goto L54
        L50:
            if (r8 == r4) goto L53
            goto L72
        L53:
            r2 = r3
        L54:
            gnu.mapping.Environment[] r3 = r6.inherited
            r3 = r3[r0]
            gnu.mapping.NamedLocation r3 = r3.lookup(r1, r2, r9)
            if (r3 == 0) goto L72
            boolean r4 = r3.isBound()
            if (r4 == 0) goto L72
            boolean r4 = r3 instanceof gnu.mapping.SharedLocation
            if (r4 == 0) goto L71
            r4 = r3
            gnu.mapping.SharedLocation r4 = (gnu.mapping.SharedLocation) r4
            int r4 = r4.timestamp
            int r5 = r6.baseTimestamp
            if (r4 >= r5) goto L72
        L71:
            return r3
        L72:
            int r0 = r0 + 1
            goto L1
        L75:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.InheritingEnvironment.lookupInherited(gnu.mapping.Symbol, java.lang.Object, int):gnu.mapping.NamedLocation");
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public NamedLocation lookup(Symbol name, Object property, int hash) {
        NamedLocation loc = super.lookup(name, property, hash);
        if (loc != null && loc.isBound()) {
            return loc;
        }
        return lookupInherited(name, property, hash);
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public synchronized NamedLocation getLocation(Symbol name, Object property, int hash, boolean create) {
        NamedLocation loc;
        NamedLocation loc2 = lookupDirect(name, property, hash);
        if (loc2 != null && (create || loc2.isBound())) {
            return loc2;
        }
        if ((this.flags & 32) != 0 && create) {
            loc = this.inherited[0].getLocation(name, property, hash, true);
        } else {
            loc = lookupInherited(name, property, hash);
        }
        if (loc != null) {
            if (!create) {
                return loc;
            }
            NamedLocation xloc = addUnboundLocation(name, property, hash);
            if ((1 & this.flags) == 0 && loc.isBound()) {
                redefineError(name, property, xloc);
            }
            xloc.base = loc;
            if (loc.value == IndirectableLocation.INDIRECT_FLUIDS) {
                xloc.value = loc.value;
            } else if ((this.flags & 16) != 0) {
                xloc.value = IndirectableLocation.DIRECT_ON_SET;
            } else {
                xloc.value = null;
            }
            if (xloc instanceof SharedLocation) {
                ((SharedLocation) xloc).timestamp = this.baseTimestamp;
            }
            return xloc;
        }
        return create ? addUnboundLocation(name, property, hash) : null;
    }

    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    public LocationEnumeration enumerateAllLocations() {
        LocationEnumeration it = new LocationEnumeration(this.table, 1 << this.log2Size);
        it.env = this;
        if (this.inherited != null && this.inherited.length > 0) {
            it.inherited = this.inherited[0].enumerateAllLocations();
            it.index = 0;
        }
        return it;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        r6.prevLoc = null;
        r6.nextLoc = r6.inherited.nextLoc;
        r3 = r6.index + 1;
        r6.index = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
    
        if (r3 != r5.numInherited) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r6.inherited = null;
        r6.bindings = r5.table;
        r6.index = 1 << r5.log2Size;
     */
    @Override // gnu.mapping.SimpleEnvironment, gnu.mapping.Environment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean hasMoreElements(gnu.mapping.LocationEnumeration r6) {
        /*
            r5 = this;
            gnu.mapping.LocationEnumeration r0 = r6.inherited
            if (r0 == 0) goto L55
        L4:
            gnu.mapping.NamedLocation r0 = r6.nextLoc
        L6:
            gnu.mapping.LocationEnumeration r1 = r6.inherited
            r1.nextLoc = r0
            gnu.mapping.LocationEnumeration r1 = r6.inherited
            boolean r1 = r1.hasMoreElements()
            r2 = 1
            if (r1 != 0) goto L41
            r1 = 0
            r6.prevLoc = r1
            gnu.mapping.LocationEnumeration r3 = r6.inherited
            gnu.mapping.NamedLocation r3 = r3.nextLoc
            r6.nextLoc = r3
            int r3 = r6.index
            int r3 = r3 + r2
            r6.index = r3
            int r4 = r5.numInherited
            if (r3 != r4) goto L34
        L27:
            r6.inherited = r1
            gnu.mapping.NamedLocation[] r0 = r5.table
            r6.bindings = r0
            int r0 = r5.log2Size
            int r0 = r2 << r0
            r6.index = r0
            goto L55
        L34:
            gnu.mapping.Environment[] r1 = r5.inherited
            int r2 = r6.index
            r1 = r1[r2]
            gnu.mapping.LocationEnumeration r1 = r1.enumerateAllLocations()
            r6.inherited = r1
            goto L4
        L41:
            gnu.mapping.LocationEnumeration r1 = r6.inherited
            gnu.mapping.NamedLocation r0 = r1.nextLoc
            gnu.mapping.Symbol r1 = r0.name
            java.lang.Object r3 = r0.property
            gnu.mapping.Location r1 = r5.lookup(r1, r3)
            if (r1 != r0) goto L52
            r6.nextLoc = r0
            return r2
        L52:
            gnu.mapping.NamedLocation r0 = r0.next
            goto L6
        L55:
            boolean r0 = super.hasMoreElements(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.mapping.InheritingEnvironment.hasMoreElements(gnu.mapping.LocationEnumeration):boolean");
    }

    @Override // gnu.mapping.SimpleEnvironment
    protected void toStringBase(StringBuffer sbuf) {
        sbuf.append(" baseTs:");
        sbuf.append(this.baseTimestamp);
        for (int i = 0; i < this.numInherited; i++) {
            sbuf.append(" base:");
            sbuf.append(this.inherited[i].toStringVerbose());
        }
    }
}
