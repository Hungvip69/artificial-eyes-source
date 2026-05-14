package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import com.google.appinventor.components.runtime.repackaged.org.json.Kim;

/* JADX INFO: loaded from: classes.dex */
class TrieKeep extends Keep {
    private int[] froms;
    private Kim[] kims;
    private Node root;
    private int[] thrus;

    class Node implements PostMortem {
        private int integer = -1;
        private Node[] next = null;

        public Node() {
        }

        public Node get(int cell) {
            if (this.next == null) {
                return null;
            }
            return this.next[cell];
        }

        public Node get(byte cell) {
            return get(cell & 255);
        }

        @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
        public boolean postMortem(PostMortem pm) {
            Node that = (Node) pm;
            if (that == null) {
                JSONzip.log("\nMisalign");
                return false;
            }
            if (this.integer != that.integer) {
                JSONzip.log(new StringBuffer().append("\nInteger ").append(this.integer).append(" <> ").append(that.integer).toString());
                return false;
            }
            if (this.next == null) {
                if (that.next == null) {
                    return true;
                }
                JSONzip.log(new StringBuffer().append("\nNext is null ").append(this.integer).toString());
                return false;
            }
            for (int i = 0; i < 256; i++) {
                Node node = this.next[i];
                if (node != null) {
                    if (!node.postMortem(that.next[i])) {
                        return false;
                    }
                } else if (that.next[i] != null) {
                    JSONzip.log(new StringBuffer().append("\nMisalign ").append(i).toString());
                    return false;
                }
            }
            return true;
        }

        public void set(int cell, Node node) {
            if (this.next == null) {
                this.next = new Node[256];
            }
            this.next[cell] = node;
        }

        public void set(byte cell, Node node) {
            set(cell & 255, node);
        }

        public Node vet(int cell) {
            Node node = get(cell);
            if (node == null) {
                Node node2 = TrieKeep.this.new Node();
                set(cell, node2);
                return node2;
            }
            return node;
        }

        public Node vet(byte cell) {
            return vet(cell & 255);
        }
    }

    public TrieKeep(int bits) {
        super(bits);
        this.froms = new int[this.capacity];
        this.thrus = new int[this.capacity];
        this.kims = new Kim[this.capacity];
        this.root = new Node();
    }

    public Kim kim(int integer) {
        Kim kim = this.kims[integer];
        int from = this.froms[integer];
        int thru = this.thrus[integer];
        if (from != 0 || thru != kim.length) {
            Kim kim2 = new Kim(kim, from, thru);
            this.froms[integer] = 0;
            this.thrus[integer] = kim2.length;
            this.kims[integer] = kim2;
            return kim2;
        }
        return kim;
    }

    public int length(int integer) {
        return this.thrus[integer] - this.froms[integer];
    }

    public int match(Kim kim, int from, int thru) {
        Node node = this.root;
        int best = -1;
        for (int at = from; at < thru; at++) {
            node = node.get(kim.get(at));
            if (node == null) {
                break;
            }
            if (node.integer != -1) {
                best = node.integer;
            }
            from++;
        }
        return best;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
    public boolean postMortem(PostMortem pm) {
        boolean result = true;
        TrieKeep that = (TrieKeep) pm;
        if (this.length != that.length) {
            JSONzip.log(new StringBuffer().append("\nLength ").append(this.length).append(" <> ").append(that.length).toString());
            return false;
        }
        if (this.capacity != that.capacity) {
            JSONzip.log(new StringBuffer().append("\nCapacity ").append(this.capacity).append(" <> ").append(that.capacity).toString());
            return false;
        }
        for (int i = 0; i < this.length; i++) {
            Kim thiskim = kim(i);
            Kim thatkim = that.kim(i);
            if (!thiskim.equals(thatkim)) {
                JSONzip.log(new StringBuffer().append("\n[").append(i).append("] ").append(thiskim).append(" <> ").append(thatkim).toString());
                result = false;
            }
        }
        return result && this.root.postMortem(that.root);
    }

    public void registerMany(Kim kim) {
        int length = kim.length;
        int limit = this.capacity - this.length;
        if (limit > 40) {
            limit = 40;
        }
        int until = length - 2;
        for (int from = 0; from < until; from++) {
            int len = length - from;
            if (len > 10) {
                len = 10;
            }
            int len2 = len + from;
            Node node = this.root;
            for (int at = from; at < len2; at++) {
                Node next = node.vet(kim.get(at));
                if (next.integer == -1 && at - from >= 2) {
                    next.integer = this.length;
                    this.uses[this.length] = 1;
                    this.kims[this.length] = kim;
                    this.froms[this.length] = from;
                    this.thrus[this.length] = at + 1;
                    this.length++;
                    limit--;
                    if (limit <= 0) {
                        return;
                    }
                }
                node = next;
            }
        }
    }

    public void registerOne(Kim kim) {
        int integer = registerOne(kim, 0, kim.length);
        if (integer != -1) {
            this.kims[integer] = kim;
        }
    }

    public int registerOne(Kim kim, int from, int thru) {
        if (this.length < this.capacity) {
            Node node = this.root;
            for (int at = from; at < thru; at++) {
                node = node.vet(kim.get(at));
            }
            int at2 = node.integer;
            if (at2 == -1) {
                int integer = this.length;
                node.integer = integer;
                this.uses[integer] = 1;
                this.kims[integer] = kim;
                this.froms[integer] = from;
                this.thrus[integer] = thru;
                this.length++;
                return integer;
            }
        }
        return -1;
    }

    public void reserve() {
        if (this.capacity - this.length < 40) {
            int to = 0;
            this.root = new Node();
            for (int from = 0; from < this.capacity; from++) {
                if (this.uses[from] > 1) {
                    Kim kim = this.kims[from];
                    int thru = this.thrus[from];
                    Node node = this.root;
                    for (int at = this.froms[from]; at < thru; at++) {
                        Node next = node.vet(kim.get(at));
                        node = next;
                    }
                    node.integer = to;
                    this.uses[to] = age(this.uses[from]);
                    this.froms[to] = this.froms[from];
                    this.thrus[to] = thru;
                    this.kims[to] = kim;
                    to++;
                }
            }
            if (this.capacity - to < 40) {
                this.power = 0;
                this.root = new Node();
                to = 0;
            }
            this.length = to;
            while (to < this.capacity) {
                this.uses[to] = 0;
                this.kims[to] = null;
                this.froms[to] = 0;
                this.thrus[to] = 0;
                to++;
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.Keep
    public Object value(int integer) {
        return kim(integer);
    }
}
