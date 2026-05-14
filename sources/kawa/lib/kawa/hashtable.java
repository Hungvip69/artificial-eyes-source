package kawa.lib.kawa;

import androidx.fragment.app.FragmentTransaction;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.SetNamedPart;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.kawa.util.GeneralHashTable;
import gnu.kawa.util.HashNode;
import gnu.lists.Consumer;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.CallContext;
import gnu.mapping.Location;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.thisRef;

/* JADX INFO: compiled from: hashtable.scm */
/* JADX INFO: loaded from: classes.dex */
public class hashtable extends ModuleBody {
    static final SimpleSymbol Lit1 = (SimpleSymbol) new SimpleSymbol("hashtable-check-mutable").readResolve();
    static final SimpleSymbol Lit0 = (SimpleSymbol) new SimpleSymbol("mutable").readResolve();
    public static final Class $Prvt$hashnode = HashNode.class;
    public static final hashtable $instance = new hashtable();
    public static final Location $Prvt$let$St = StaticFieldLocation.make("kawa.lib.std_syntax", "let$St");
    public static final Location $Prvt$do = StaticFieldLocation.make("kawa.lib.std_syntax", "do");
    public static final Class hashtable = HashTable.class;
    public static final ModuleMethod hashtable$Mncheck$Mnmutable = new ModuleMethod($instance, 1, Lit1, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);

    public hashtable() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
    }

    static {
        $instance.run();
    }

    /* JADX INFO: compiled from: hashtable.scm */
    public class HashTable extends GeneralHashTable {
        public Procedure equivalenceFunction;
        public Procedure hashFunction;
        public boolean mutable;

        private void $finit$() {
            this.mutable = true;
        }

        public HashTable(Procedure eq, Procedure h, int i) {
            super(i);
            $finit$();
            this.equivalenceFunction = eq;
            this.hashFunction = h;
        }

        public HashTable(Procedure eq, Procedure h) {
            $finit$();
            this.equivalenceFunction = eq;
            this.hashFunction = h;
        }

        public HashTable(HashTable ht, boolean mutable) throws Throwable {
            $finit$();
            Invoke.invokeSpecial.applyN(new Object[]{hashtable.hashtable, this, ht.equivalenceFunction.apply0(), ht.hashFunction.apply0(), Integer.valueOf(ht.size() + 100)});
            putAll(ht);
            SetNamedPart.setNamedPart.apply3(thisRef.thisSyntax, hashtable.Lit0, mutable ? Boolean.TRUE : Boolean.FALSE);
        }

        @Override // gnu.kawa.util.AbstractHashTable
        public int hash(Object key) {
            return ((Number) this.hashFunction.apply1(key)).intValue();
        }

        @Override // gnu.kawa.util.AbstractHashTable
        public boolean matches(Object value1, Object value2) {
            return this.equivalenceFunction.apply2(value1, value2) != Boolean.FALSE;
        }

        public void walk(Procedure procedure) throws Throwable {
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        procedure.apply2(entryNext.getKey(), entryNext.getValue());
                        entryNext = getEntryNext(entryNext);
                    }
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Object fold(Procedure procedure, Object obj) throws Throwable {
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        obj = procedure.apply3(entryNext.getKey(), entryNext.getValue(), obj);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return obj;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public FVector keysVector() {
            FVector fVector = new FVector();
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        fVector.add(entryNext.getKey());
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return fVector;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Pair entriesVectorPair() {
            FVector fVector = new FVector();
            FVector fVector2 = new FVector();
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        fVector.add(entryNext.getKey());
                        fVector2.add(entryNext.getValue());
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lists.cons(fVector, fVector2);
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public Object toAlist() {
            LList lListCons = LList.Empty;
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        lListCons = lists.cons(lists.cons(entryNext.getKey(), entryNext.getValue()), lListCons);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lListCons;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public LList toNodeList() {
            LList lListCons = LList.Empty;
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        lListCons = lists.cons(entryNext, lListCons);
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return lListCons;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public HashNode[] toNodeArray() {
            HashNode[] hashNodeArr = new HashNode[size()];
            Entry[] entryArr = this.table;
            try {
                HashNode[] hashNodeArr2 = (HashNode[]) entryArr;
                int i = 0;
                for (int length = hashNodeArr2.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr2[length];
                    while (entryNext != null) {
                        hashNodeArr[i] = entryNext;
                        i++;
                        entryNext = getEntryNext(entryNext);
                    }
                }
                return hashNodeArr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        public void putAll(HashTable hashTable) {
            Entry[] entryArr = hashTable.table;
            try {
                HashNode[] hashNodeArr = (HashNode[]) entryArr;
                for (int length = hashNodeArr.length - 1; length >= 0; length--) {
                    HashNode entryNext = hashNodeArr[length];
                    while (entryNext != null) {
                        put(entryNext.getKey(), entryNext.getValue());
                        entryNext = hashTable.getEntryNext(entryNext);
                    }
                }
            } catch (ClassCastException e) {
                throw new WrongType(e, "table", -2, entryArr);
            }
        }

        @Override // java.util.AbstractMap
        public Object clone() {
            return new HashTable(this, true);
        }
    }

    public static void hashtableCheckMutable(HashTable ht) throws Throwable {
        if (ht.mutable) {
            return;
        }
        misc.error$V("cannot modify non-mutable hashtable", new Object[0]);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
        if (moduleMethod.selector != 1) {
            return super.apply1(moduleMethod, obj);
        }
        try {
            hashtableCheckMutable((HashTable) obj);
            return Values.empty;
        } catch (ClassCastException e) {
            throw new WrongType(e, "hashtable-check-mutable", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.match1(moduleMethod, obj, callContext);
        }
        if (!(obj instanceof HashTable)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }
}
