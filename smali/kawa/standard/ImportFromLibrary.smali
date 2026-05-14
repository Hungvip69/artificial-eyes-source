.class public Lkawa/standard/ImportFromLibrary;
.super Lkawa/lang/Syntax;
.source "ImportFromLibrary.java"


# static fields
.field private static final BUILTIN:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/lang/String;

.field static final SRFI97Map:[[Ljava/lang/String;

.field public static final instance:Lkawa/standard/ImportFromLibrary;


# instance fields
.field public classPrefixPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 18
    new-instance v0, Lkawa/standard/ImportFromLibrary;

    invoke-direct {v0}, Lkawa/standard/ImportFromLibrary;-><init>()V

    sput-object v0, Lkawa/standard/ImportFromLibrary;->instance:Lkawa/standard/ImportFromLibrary;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "let"

    aput-object v4, v1, v3

    sget-object v5, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    new-array v5, v0, [Ljava/lang/String;

    const-string v7, "14"

    aput-object v7, v5, v2

    const-string v7, "char-sets"

    aput-object v7, v5, v3

    sget-object v7, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v7, v5, v6

    new-array v7, v0, [Ljava/lang/String;

    const-string v8, "18"

    aput-object v8, v7, v2

    const-string v8, "multithreading"

    aput-object v8, v7, v3

    sget-object v8, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v8, v7, v6

    new-array v8, v0, [Ljava/lang/String;

    const-string v9, "19"

    aput-object v9, v8, v2

    const-string v9, "time"

    aput-object v9, v8, v3

    sget-object v9, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v9, v8, v6

    new-array v9, v0, [Ljava/lang/String;

    const-string v10, "21"

    aput-object v10, v9, v2

    const-string v10, "real-time-multithreading"

    aput-object v10, v9, v3

    sget-object v10, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v10, v9, v6

    new-array v10, v0, [Ljava/lang/String;

    const-string v11, "27"

    aput-object v11, v10, v2

    const-string v11, "random-bits"

    aput-object v11, v10, v3

    sget-object v11, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v11, v10, v6

    new-array v11, v0, [Ljava/lang/String;

    const-string v12, "29"

    aput-object v12, v11, v2

    const-string v12, "localization"

    aput-object v12, v11, v3

    sget-object v12, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v12, v11, v6

    new-array v12, v0, [Ljava/lang/String;

    const-string v13, "31"

    aput-object v13, v12, v2

    const-string v13, "rec"

    aput-object v13, v12, v3

    sget-object v13, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v13, v12, v6

    new-array v13, v0, [Ljava/lang/String;

    const-string v14, "38"

    aput-object v14, v13, v2

    const-string v14, "with-shared-structure"

    aput-object v14, v13, v3

    sget-object v14, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v14, v13, v6

    new-array v14, v0, [Ljava/lang/String;

    const-string v15, "41"

    aput-object v15, v14, v2

    const-string v15, "streams"

    aput-object v15, v14, v3

    sget-object v15, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v15, v14, v6

    new-array v15, v0, [Ljava/lang/String;

    const-string v16, "42"

    aput-object v16, v15, v2

    const-string v16, "eager-comprehensions"

    aput-object v16, v15, v3

    sget-object v16, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v16, v15, v6

    new-array v6, v0, [Ljava/lang/String;

    const-string v17, "43"

    aput-object v17, v6, v2

    const-string v17, "vectors"

    aput-object v17, v6, v3

    sget-object v17, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v17, v6, v16

    new-array v3, v0, [Ljava/lang/String;

    const-string v18, "44"

    aput-object v18, v3, v2

    const-string v18, "collections"

    const/16 v17, 0x1

    aput-object v18, v3, v17

    sget-object v18, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v18, v3, v16

    move-object/from16 v18, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v19, "45"

    aput-object v19, v3, v2

    const-string v19, "lazy"

    aput-object v19, v3, v17

    sget-object v19, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v19, v3, v16

    move-object/from16 v19, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v20, "46"

    aput-object v20, v3, v2

    const-string v20, "syntax-rules"

    aput-object v20, v3, v17

    sget-object v20, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v20, v3, v16

    move-object/from16 v20, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v21, "47"

    aput-object v21, v3, v2

    const-string v21, "arrays"

    aput-object v21, v3, v17

    sget-object v22, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v22, v3, v16

    move-object/from16 v22, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v23, "48"

    aput-object v23, v3, v2

    const-string v23, "intermediate-format-strings"

    aput-object v23, v3, v17

    sget-object v23, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v23, v3, v16

    move-object/from16 v23, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v24, "51"

    aput-object v24, v3, v2

    const-string v24, "rest-values"

    aput-object v24, v3, v17

    sget-object v24, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v24, v3, v16

    move-object/from16 v24, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v25, "54"

    aput-object v25, v3, v2

    const-string v25, "cat"

    aput-object v25, v3, v17

    sget-object v25, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v25, v3, v16

    move-object/from16 v25, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v26, "57"

    aput-object v26, v3, v2

    const-string v26, "records"

    aput-object v26, v3, v17

    sget-object v27, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v27, v3, v16

    move-object/from16 v27, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v28, "59"

    aput-object v28, v3, v2

    const-string v28, "vicinities"

    aput-object v28, v3, v17

    sget-object v28, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v28, v3, v16

    move-object/from16 v28, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v29, "60"

    aput-object v29, v3, v2

    const-string v29, "integer-bits"

    aput-object v29, v3, v17

    sget-object v29, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v29, v3, v16

    move-object/from16 v29, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v30, "61"

    aput-object v30, v3, v2

    const-string v30, "cond"

    aput-object v30, v3, v17

    sget-object v30, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v30, v3, v16

    move-object/from16 v30, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v31, "63"

    aput-object v31, v3, v2

    aput-object v21, v3, v17

    sget-object v21, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v21, v3, v16

    move-object/from16 v21, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v31, "66"

    aput-object v31, v3, v2

    const-string v31, "octet-vectors"

    aput-object v31, v3, v17

    sget-object v31, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v31, v3, v16

    move-object/from16 v31, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v32, "67"

    aput-object v32, v3, v2

    const-string v32, "compare-procedures"

    aput-object v32, v3, v17

    sget-object v32, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v32, v3, v16

    move-object/from16 v32, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v33, "71"

    aput-object v33, v3, v2

    aput-object v4, v3, v17

    sget-object v4, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v4, v3, v16

    new-array v4, v0, [Ljava/lang/String;

    const-string v33, "74"

    aput-object v33, v4, v2

    const-string v33, "blobs"

    aput-object v33, v4, v17

    sget-object v33, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v33, v4, v16

    move-object/from16 v33, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v34, "78"

    aput-object v34, v4, v2

    const-string v34, "lightweight-testing"

    aput-object v34, v4, v17

    sget-object v34, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v34, v4, v16

    move-object/from16 v34, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v35, "86"

    aput-object v35, v4, v2

    const-string v35, "mu-and-nu"

    aput-object v35, v4, v17

    sget-object v35, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v35, v4, v16

    move-object/from16 v35, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v36, "87"

    aput-object v36, v4, v2

    const-string v36, "case"

    aput-object v36, v4, v17

    sget-object v36, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    aput-object v36, v4, v16

    const/16 v2, 0x30

    new-array v2, v2, [[Ljava/lang/String;

    move-object/from16 v37, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v38, "1"

    const/16 v36, 0x0

    aput-object v38, v4, v36

    const-string v38, "lists"

    aput-object v38, v4, v17

    const-string v38, "gnu.kawa.slib.srfi1"

    aput-object v38, v4, v16

    aput-object v4, v2, v36

    new-array v4, v0, [Ljava/lang/String;

    const-string v38, "2"

    aput-object v38, v4, v36

    const-string v38, "and-let*"

    aput-object v38, v4, v17

    const-string v38, "gnu.kawa.slib.srfi2"

    aput-object v38, v4, v16

    aput-object v4, v2, v17

    aput-object v1, v2, v16

    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "6"

    aput-object v4, v1, v36

    const-string v4, "basic-string-ports"

    aput-object v4, v1, v17

    const-string v4, ""

    aput-object v4, v1, v16

    aput-object v1, v2, v0

    new-array v1, v0, [Ljava/lang/String;

    const-string v38, "8"

    aput-object v38, v1, v36

    const-string v38, "receive"

    aput-object v38, v1, v17

    aput-object v4, v1, v16

    const/16 v38, 0x4

    aput-object v1, v2, v38

    new-array v1, v0, [Ljava/lang/String;

    const-string v38, "9"

    aput-object v38, v1, v36

    aput-object v26, v1, v17

    aput-object v4, v1, v16

    const/16 v26, 0x5

    aput-object v1, v2, v26

    new-array v1, v0, [Ljava/lang/String;

    const-string v26, "11"

    aput-object v26, v1, v36

    const-string v26, "let-values"

    aput-object v26, v1, v17

    aput-object v4, v1, v16

    const/16 v26, 0x6

    aput-object v1, v2, v26

    new-array v1, v0, [Ljava/lang/String;

    const-string v26, "13"

    aput-object v26, v1, v36

    const-string v26, "strings"

    aput-object v26, v1, v17

    const-string v26, "gnu.kawa.slib.srfi13"

    aput-object v26, v1, v16

    const/16 v26, 0x7

    aput-object v1, v2, v26

    const/16 v1, 0x8

    aput-object v5, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v5, "16"

    aput-object v5, v1, v36

    const-string v5, "case-lambda"

    aput-object v5, v1, v17

    aput-object v4, v1, v16

    const/16 v5, 0x9

    aput-object v1, v2, v5

    new-array v1, v0, [Ljava/lang/String;

    const-string v5, "17"

    aput-object v5, v1, v36

    const-string v5, "generalized-set!"

    aput-object v5, v1, v17

    aput-object v4, v1, v16

    const/16 v5, 0xa

    aput-object v1, v2, v5

    const/16 v1, 0xb

    aput-object v7, v2, v1

    const/16 v1, 0xc

    aput-object v8, v2, v1

    const/16 v1, 0xd

    aput-object v9, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v5, "23"

    const/4 v7, 0x0

    aput-object v5, v1, v7

    const-string v5, "error"

    const/4 v8, 0x1

    aput-object v5, v1, v8

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v9, 0xe

    aput-object v1, v2, v9

    new-array v1, v0, [Ljava/lang/String;

    const-string v9, "25"

    aput-object v9, v1, v7

    const-string v9, "multi-dimensional-arrays"

    aput-object v9, v1, v8

    aput-object v4, v1, v5

    const/16 v9, 0xf

    aput-object v1, v2, v9

    new-array v1, v0, [Ljava/lang/String;

    const-string v9, "26"

    aput-object v9, v1, v7

    const-string v9, "cut"

    aput-object v9, v1, v8

    aput-object v4, v1, v5

    const/16 v9, 0x10

    aput-object v1, v2, v9

    const/16 v1, 0x11

    aput-object v10, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v9, "28"

    aput-object v9, v1, v7

    const-string v7, "basic-format-strings"

    aput-object v7, v1, v8

    aput-object v4, v1, v5

    const/16 v5, 0x12

    aput-object v1, v2, v5

    const/16 v1, 0x13

    aput-object v11, v2, v1

    const/16 v1, 0x14

    aput-object v12, v2, v1

    const/16 v1, 0x15

    aput-object v13, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v5, "39"

    const/4 v7, 0x0

    aput-object v5, v1, v7

    const-string v5, "parameters"

    const/4 v7, 0x1

    aput-object v5, v1, v7

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x16

    aput-object v1, v2, v4

    const/16 v1, 0x17

    aput-object v14, v2, v1

    const/16 v1, 0x18

    aput-object v15, v2, v1

    const/16 v1, 0x19

    aput-object v6, v2, v1

    const/16 v1, 0x1a

    aput-object v18, v2, v1

    const/16 v1, 0x1b

    aput-object v19, v2, v1

    const/16 v1, 0x1c

    aput-object v20, v2, v1

    const/16 v1, 0x1d

    aput-object v22, v2, v1

    const/16 v1, 0x1e

    aput-object v23, v2, v1

    const/16 v1, 0x1f

    aput-object v24, v2, v1

    const/16 v1, 0x20

    aput-object v25, v2, v1

    const/16 v1, 0x21

    aput-object v27, v2, v1

    const/16 v1, 0x22

    aput-object v28, v2, v1

    const/16 v1, 0x23

    aput-object v29, v2, v1

    const/16 v1, 0x24

    aput-object v30, v2, v1

    const/16 v1, 0x25

    aput-object v21, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "64"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "testing"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "gnu.kawa.slib.testing"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x26

    aput-object v1, v2, v4

    const/16 v1, 0x27

    aput-object v31, v2, v1

    const/16 v1, 0x28

    aput-object v32, v2, v1

    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "69"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "basic-hash-tables"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "gnu.kawa.slib.srfi69"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/16 v4, 0x29

    aput-object v1, v2, v4

    const/16 v1, 0x2a

    aput-object v3, v2, v1

    const/16 v1, 0x2b

    aput-object v33, v2, v1

    const/16 v1, 0x2c

    aput-object v34, v2, v1

    const/16 v1, 0x2d

    aput-object v35, v2, v1

    const/16 v1, 0x2e

    aput-object v37, v2, v1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "95"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "sorting-and-merging"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "kawa.lib.srfi95"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x2f

    aput-object v0, v2, v1

    sput-object v2, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "kawa.lib."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 25
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 80
    .local v0, "mapper":Lgnu/mapping/Procedure;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 81
    .local v9, "args":Ljava/lang/Object;
    instance-of v2, v9, Lgnu/lists/Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 82
    return v3

    .line 83
    :cond_0
    move-object v2, v9

    check-cast v2, Lgnu/lists/Pair;

    .line 84
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, "libref":Ljava/lang/Object;
    invoke-static {v4, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v5

    const/16 v6, 0x65

    if-gtz v5, :cond_1

    .line 87
    const-string v5, "expected <library reference> which must be a list"

    invoke-virtual {v8, v6, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 88
    return v3

    .line 90
    :cond_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 91
    .local v10, "rest":Ljava/lang/Object;
    instance-of v5, v10, Lgnu/lists/Pair;

    if-eqz v5, :cond_2

    move-object v5, v10

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_2

    .line 92
    move-object v5, v10

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v11, v0

    goto :goto_0

    .line 94
    :cond_2
    move-object v11, v0

    .end local v0    # "mapper":Lgnu/mapping/Procedure;
    .local v11, "mapper":Lgnu/mapping/Procedure;
    :goto_0
    const/4 v0, 0x0

    .line 95
    .local v0, "versionSpec":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 96
    .local v5, "sourcePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v7

    move-object v13, v0

    move-object v14, v2

    move-object v15, v4

    move-object v7, v5

    .line 97
    .end local v0    # "versionSpec":Ljava/lang/Object;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v4    # "libref":Ljava/lang/Object;
    .end local v5    # "sourcePath":Ljava/lang/String;
    .local v7, "sourcePath":Ljava/lang/String;
    .local v12, "sbuf":Ljava/lang/StringBuffer;
    .local v13, "versionSpec":Ljava/lang/Object;
    .local v14, "pair":Lgnu/lists/Pair;
    .local v15, "libref":Ljava/lang/Object;
    :goto_1
    instance-of v0, v15, Lgnu/lists/Pair;

    const/16 v2, 0x2e

    if-eqz v0, :cond_8

    .line 99
    move-object v14, v15

    check-cast v14, Lgnu/lists/Pair;

    .line 100
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "car":Ljava/lang/Object;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 102
    .local v4, "cdr":Ljava/lang/Object;
    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_4

    .line 104
    if-eqz v13, :cond_3

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate version reference - was "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_3
    move-object v2, v0

    .line 109
    .end local v13    # "versionSpec":Ljava/lang/Object;
    .local v2, "versionSpec":Ljava/lang/Object;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "import version "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v13, v2

    goto :goto_2

    .line 111
    .end local v2    # "versionSpec":Ljava/lang/Object;
    .restart local v13    # "versionSpec":Ljava/lang/Object;
    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 113
    instance-of v2, v4, Lgnu/lists/Pair;

    if-eqz v2, :cond_5

    .line 114
    const-string v2, "source specifier must be last elemnt in library reference"

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 115
    :cond_5
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .end local v7    # "sourcePath":Ljava/lang/String;
    .local v2, "sourcePath":Ljava/lang/String;
    goto :goto_2

    .line 119
    .end local v2    # "sourcePath":Ljava/lang/String;
    .restart local v7    # "sourcePath":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 120
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :goto_2
    move-object v15, v4

    .line 124
    .end local v0    # "car":Ljava/lang/Object;
    .end local v4    # "cdr":Ljava/lang/Object;
    const/4 v3, 0x0

    goto :goto_1

    .line 126
    :cond_8
    const/4 v0, 0x0

    .line 127
    .local v0, "minfo":Lgnu/expr/ModuleInfo;
    if-eqz v7, :cond_9

    .line 129
    move-object/from16 v5, p3

    invoke-static {v7, v5}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 130
    if-nez v0, :cond_a

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    return v2

    .line 127
    :cond_9
    move-object/from16 v5, p3

    .line 136
    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "lname":Ljava/lang/String;
    const-string v4, "srfi."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 140
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "demangled":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 143
    .local v2, "dot":I
    if-gez v2, :cond_b

    .line 145
    const/16 v18, 0x0

    .line 146
    .local v18, "srfiName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v6, v18

    goto :goto_3

    .line 149
    .end local v18    # "srfiName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "srfiName":Ljava/lang/String;
    :goto_3
    const/16 v19, 0x0

    .line 151
    .local v19, "srfiNumber":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .local v20, "minfo":Lgnu/expr/ModuleInfo;
    const/4 v0, 0x2

    if-ge v2, v0, :cond_d

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "lname":Ljava/lang/String;
    .local v21, "lname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v23, v2

    goto :goto_6

    .end local v21    # "lname":Ljava/lang/String;
    .restart local v3    # "lname":Ljava/lang/String;
    :cond_d
    move-object/from16 v21, v3

    .line 153
    .end local v3    # "lname":Ljava/lang/String;
    .restart local v21    # "lname":Ljava/lang/String;
    :goto_4
    const/4 v0, 0x1

    .line 155
    .local v0, "i":I
    :goto_5
    if-ne v0, v2, :cond_e

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 158
    move/from16 v23, v2

    move-object/from16 v2, v19

    goto :goto_7

    .line 160
    :cond_e
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v23, v2

    .end local v2    # "dot":I
    .local v23, "dot":I
    const/16 v2, 0xa

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_15

    .line 161
    nop

    .line 164
    .end local v0    # "i":I
    .end local v23    # "dot":I
    .restart local v2    # "dot":I
    :goto_6
    move-object/from16 v2, v19

    .end local v19    # "srfiNumber":Ljava/lang/String;
    .local v2, "srfiNumber":Ljava/lang/String;
    .restart local v23    # "dot":I
    :goto_7
    if-nez v2, :cond_f

    .line 166
    const-string v0, "SRFI library reference must have the form: (srfi :NNN [name])"

    const/16 v3, 0x65

    invoke-virtual {v8, v3, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 167
    const/4 v3, 0x0

    return v3

    .line 169
    :cond_f
    sget-object v0, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    array-length v0, v0

    .line 172
    .local v0, "srfiIndex":I
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_10

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "demangled":Ljava/lang/String;
    .local v24, "demangled":Ljava/lang/String;
    const-string v4, "unknown SRFI number \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in SRFI library reference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v8, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 175
    const/4 v3, 0x0

    return v3

    .line 177
    .end local v24    # "demangled":Ljava/lang/String;
    .restart local v4    # "demangled":Ljava/lang/String;
    :cond_10
    move-object/from16 v24, v4

    const/4 v3, 0x0

    .end local v4    # "demangled":Ljava/lang/String;
    .restart local v24    # "demangled":Ljava/lang/String;
    sget-object v4, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 178
    nop

    .line 180
    sget-object v3, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 181
    .local v3, "srfiNameExpected":Ljava/lang/String;
    sget-object v4, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/16 v22, 0x2

    aget-object v4, v4, v22

    .line 182
    .local v4, "srfiClass":Ljava/lang/String;
    if-eqz v6, :cond_11

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 184
    move/from16 v19, v0

    .end local v0    # "srfiIndex":I
    .local v19, "srfiIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the name of SRFI "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " should be \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x77

    invoke-virtual {v8, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_9

    .line 182
    .end local v19    # "srfiIndex":I
    .restart local v0    # "srfiIndex":I
    :cond_11
    move/from16 v19, v0

    .line 187
    .end local v0    # "srfiIndex":I
    .restart local v19    # "srfiIndex":I
    :goto_9
    const-string v0, ""

    if-ne v4, v0, :cond_12

    .line 188
    const/16 v18, 0x1

    return v18

    .line 189
    :cond_12
    const/16 v18, 0x1

    sget-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    if-ne v4, v0, :cond_13

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sorry - Kawa does not support SRFI "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x65

    invoke-virtual {v8, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 192
    const/4 v5, 0x0

    return v5

    .line 195
    :cond_13
    move-object v0, v4

    move-object v6, v0

    .end local v21    # "lname":Ljava/lang/String;
    .local v0, "lname":Ljava/lang/String;
    goto :goto_a

    .line 177
    .end local v3    # "srfiNameExpected":Ljava/lang/String;
    .end local v4    # "srfiClass":Ljava/lang/String;
    .end local v19    # "srfiIndex":I
    .local v0, "srfiIndex":I
    .restart local v21    # "lname":Ljava/lang/String;
    :cond_14
    move/from16 v19, v0

    const/16 v18, 0x1

    const/16 v22, 0x2

    .end local v0    # "srfiIndex":I
    .restart local v19    # "srfiIndex":I
    move-object/from16 v5, p3

    move-object/from16 v4, v24

    goto/16 :goto_8

    .line 153
    .end local v2    # "srfiNumber":Ljava/lang/String;
    .end local v24    # "demangled":Ljava/lang/String;
    .local v0, "i":I
    .local v4, "demangled":Ljava/lang/String;
    .local v19, "srfiNumber":Ljava/lang/String;
    :cond_15
    move-object/from16 v24, v4

    const/16 v18, 0x1

    const/16 v22, 0x2

    .end local v4    # "demangled":Ljava/lang/String;
    .restart local v24    # "demangled":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, p3

    move/from16 v2, v23

    goto/16 :goto_5

    .line 138
    .end local v6    # "srfiName":Ljava/lang/String;
    .end local v19    # "srfiNumber":Ljava/lang/String;
    .end local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v21    # "lname":Ljava/lang/String;
    .end local v23    # "dot":I
    .end local v24    # "demangled":Ljava/lang/String;
    .local v0, "minfo":Lgnu/expr/ModuleInfo;
    .local v3, "lname":Ljava/lang/String;
    :cond_16
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    const/16 v18, 0x1

    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v3    # "lname":Ljava/lang/String;
    .restart local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v21    # "lname":Ljava/lang/String;
    move-object/from16 v6, v21

    .line 198
    .end local v21    # "lname":Ljava/lang/String;
    .local v6, "lname":Ljava/lang/String;
    :goto_a
    iget-object v0, v1, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    array-length v5, v0

    .line 199
    .local v5, "classPrefixPathLength":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_b
    if-ge v2, v5, :cond_17

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "tname":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v0    # "minfo":Lgnu/expr/ModuleInfo;
    move-object/from16 v20, v0

    goto :goto_c

    .line 206
    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v20    # "minfo":Lgnu/expr/ModuleInfo;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/Exception;
    nop

    .line 199
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "tname":Ljava/lang/String;
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 211
    .end local v2    # "i":I
    :cond_17
    if-nez v20, :cond_18

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    return v2

    .line 216
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v3, v20

    move-object v4, v11

    move/from16 v16, v5

    .end local v5    # "classPrefixPathLength":I
    .local v16, "classPrefixPathLength":I
    move-object/from16 v5, p2

    move-object/from16 v21, v6

    const/16 v17, 0x1

    .end local v6    # "lname":Ljava/lang/String;
    .restart local v21    # "lname":Ljava/lang/String;
    move-object/from16 v6, p3

    move-object/from16 v18, v7

    .end local v7    # "sourcePath":Ljava/lang/String;
    .local v18, "sourcePath":Ljava/lang/String;
    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 218
    return v17
.end method
