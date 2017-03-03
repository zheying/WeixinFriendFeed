.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse;,
        Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 24
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p2, "entriesToAdd":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 56
    const-wide v22, 0x3ff3333333333333L    # 1.2

    move/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v16

    .line 57
    .local v16, "tableSize":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 58
    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v12

    .line 59
    .local v12, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v21

    .line 60
    .local v21, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    .line 61
    .local v4, "entries":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v6, 0x0

    .line 63
    .local v6, "hashCode":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_5

    .line 65
    aget-object v5, p2, v7

    .line 66
    .local v5, "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 69
    .local v17, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 70
    .local v11, "keyHash":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v20

    .line 71
    .local v20, "valueHash":I
    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v23, v0

    and-int v9, v22, v23

    .line 72
    .local v9, "keyBucket":I
    invoke-static/range {v20 .. v20}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v23, v0

    and-int v18, v22, v23

    .line 74
    .local v18, "valueBucket":I
    aget-object v14, v12, v9

    .line 75
    .local v14, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    move-object v10, v14

    .local v10, "keyEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v10, :cond_1

    .line 77
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x1

    :goto_2
    const-string v23, "key"

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5, v10}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 76
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    goto :goto_1

    .line 77
    :cond_0
    const/16 v22, 0x0

    goto :goto_2

    .line 79
    :cond_1
    aget-object v15, v21, v18

    .line 80
    .local v15, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    move-object/from16 v19, v15

    .local v19, "valueEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v19, :cond_3

    .line 82
    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const/16 v22, 0x1

    :goto_4
    const-string v23, "value"

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 81
    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v19

    goto :goto_3

    .line 82
    :cond_2
    const/16 v22, 0x0

    goto :goto_4

    .line 84
    :cond_3
    if-nez v14, :cond_4

    if-nez v15, :cond_4

    move-object v13, v5

    .line 88
    .local v13, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_5
    aput-object v13, v12, v9

    .line 89
    aput-object v13, v21, v18

    .line 90
    aput-object v13, v4, v7

    .line 91
    xor-int v22, v11, v20

    add-int v6, v6, v22

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 84
    .end local v13    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_4
    new-instance v13, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v13, v5, v14, v15}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_5

    .line 94
    .end local v5    # "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    .end local v8    # "key":Ljava/lang/Object;, "TK;"
    .end local v9    # "keyBucket":I
    .end local v10    # "keyEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v11    # "keyHash":I
    .end local v14    # "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v15    # "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v17    # "value":Ljava/lang/Object;, "TV;"
    .end local v18    # "valueBucket":I
    .end local v19    # "valueEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v20    # "valueHash":I
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 95
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 96
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 97
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 98
    return-void
.end method

.method varargs constructor <init>([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "entriesToAdd":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    .line 47
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "entriesToAdd":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 104
    move-object/from16 v0, p1

    array-length v13, v0

    .line 105
    .local v13, "n":I
    const-wide v24, 0x3ff3333333333333L    # 1.2

    move-wide/from16 v0, v24

    invoke-static {v13, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v17

    .line 106
    .local v17, "tableSize":I
    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 107
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v12

    .line 108
    .local v12, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v22

    .line 109
    .local v22, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v13}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    .line 110
    .local v4, "entries":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v6, 0x0

    .line 112
    .local v6, "hashCode":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_5

    .line 114
    aget-object v5, p1, v7

    .line 115
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 116
    .local v8, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 117
    .local v18, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 119
    .local v11, "keyHash":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v21

    .line 120
    .local v21, "valueHash":I
    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v24, v0

    and-int v9, v23, v24

    .line 121
    .local v9, "keyBucket":I
    invoke-static/range {v21 .. v21}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v24, v0

    and-int v19, v23, v24

    .line 123
    .local v19, "valueBucket":I
    aget-object v15, v12, v9

    .line 124
    .local v15, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    move-object v10, v15

    .local v10, "keyEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v10, :cond_1

    .line 126
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x1

    :goto_2
    const-string v24, "key"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5, v10}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 125
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    goto :goto_1

    .line 126
    :cond_0
    const/16 v23, 0x0

    goto :goto_2

    .line 128
    :cond_1
    aget-object v16, v22, v19

    .line 129
    .local v16, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    move-object/from16 v20, v16

    .local v20, "valueEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v20, :cond_3

    .line 131
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    const/16 v23, 0x1

    :goto_4
    const-string v24, "value"

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v5, v2}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v20

    goto :goto_3

    .line 131
    :cond_2
    const/16 v23, 0x0

    goto :goto_4

    .line 133
    :cond_3
    if-nez v15, :cond_4

    if-nez v16, :cond_4

    new-instance v14, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-object/from16 v0, v18

    invoke-direct {v14, v8, v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .local v14, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_5
    aput-object v14, v12, v9

    .line 138
    aput-object v14, v22, v19

    .line 139
    aput-object v14, v4, v7

    .line 140
    xor-int v23, v11, v21

    add-int v6, v6, v23

    .line 112
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 133
    .end local v14    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_4
    new-instance v14, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v14, v8, v0, v15, v1}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_5

    .line 143
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v8    # "key":Ljava/lang/Object;, "TK;"
    .end local v9    # "keyBucket":I
    .end local v10    # "keyEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v11    # "keyHash":I
    .end local v15    # "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v16    # "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v18    # "value":Ljava/lang/Object;, "TV;"
    .end local v19    # "valueBucket":I
    .end local v20    # "valueEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v21    # "valueHash":I
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 144
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 145
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 146
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 183
    new-array v0, p0, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 189
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v2

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v3

    iget v4, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v0, v3, v4

    .line 193
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 247
    .local v0, "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    .end local v0    # "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
