.class public Lscala/collection/immutable/HashSet$HashTrieSet;
.super Lscala/collection/immutable/HashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTrieSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final bitmap:I

.field private final elems:[Lscala/collection/immutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final size0:I


# direct methods
.method public constructor <init>(I[Lscala/collection/immutable/HashSet;I)V
    .locals 3
    .param p1, "bitmap"    # I
    .param p2, "elems"    # [Lscala/collection/immutable/HashSet;
    .param p3, "size0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)V"
        }
    .end annotation

    .prologue
    .line 517
    iput p1, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap:I

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->elems:[Lscala/collection/immutable/HashSet;

    iput p3, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->size0:I

    .line 518
    invoke-direct {p0}, Lscala/collection/immutable/HashSet;-><init>()V

    .line 519
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    array-length v2, p2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lscala/Predef$;->assert(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bitmap()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap:I

    return v0
.end method

.method private size0()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->size0:I

    return v0
.end method


# virtual methods
.method public elems()[Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->elems:[Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 15
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashSet;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 921
    move/from16 v7, p5

    .line 923
    .local v7, "offset":I
    const/4 v14, 0x0

    .line 925
    .local v14, "rs":I
    const/4 v11, 0x0

    .line 927
    .local v11, "kept":I
    const/4 v10, 0x0

    .line 928
    .local v10, "i":I
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v2

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 929
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v2

    aget-object v2, v2, v10

    add-int/lit8 v5, p3, 0x5

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v13

    .line 930
    .local v13, "result":Lscala/collection/immutable/HashSet;
    if-eqz v13, :cond_0

    .line 931
    aput-object v13, p4, v7

    .line 932
    add-int/lit8 v7, v7, 0x1

    .line 934
    invoke-virtual {v13}, Lscala/collection/immutable/HashSet;->size()I

    move-result v2

    add-int/2addr v14, v2

    .line 936
    const/4 v2, 0x1

    shl-int/2addr v2, v10

    or-int/2addr v11, v2

    .line 938
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 940
    .end local v13    # "result":Lscala/collection/immutable/HashSet;
    :cond_1
    move/from16 v0, p5

    if-ne v7, v0, :cond_3

    .line 942
    const/4 p0, 0x0

    .line 919
    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_2
    :goto_1
    return-object p0

    .line 943
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_3
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v2

    if-eq v14, v2, :cond_2

    .line 946
    add-int/lit8 v2, p5, 0x1

    if-ne v7, v2, :cond_4

    aget-object v2, p4, p5

    instance-of v2, v2, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v2, :cond_4

    .line 948
    aget-object p0, p4, p5

    goto :goto_1

    .line 951
    :cond_4
    sub-int v12, v7, p5

    .line 952
    .local v12, "length":I
    new-array v9, v12, [Lscala/collection/immutable/HashSet;

    .line 953
    .local v9, "elems1":[Lscala/collection/immutable/HashSet;
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v9, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v2

    array-length v2, v2

    if-ne v12, v2, :cond_5

    .line 956
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v8

    .line 961
    .local v8, "bitmap1":I
    :goto_2
    new-instance p0, Lscala/collection/immutable/HashSet$HashTrieSet;

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    invoke-direct {p0, v8, v9, v14}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_1

    .line 959
    .end local v8    # "bitmap1":I
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_5
    sget-object v2, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    invoke-virtual {v2, v3, v11}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$keepBits(II)I

    move-result v8

    goto :goto_2
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 972
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashSet;->foreach(Lscala/Function1;)V

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_0
    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .prologue
    .line 526
    ushr-int v3, p2, p3

    and-int/lit8 v0, v3, 0x1f

    .line 527
    .local v0, "index":I
    const/4 v3, 0x1

    shl-int v1, v3, v0

    .line 528
    .local v1, "mask":I
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 529
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    and-int/lit8 v4, v0, 0x1f

    aget-object v3, v3, v4

    add-int/lit8 v4, p3, 0x5

    invoke-virtual {v3, p1, p2, v4}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result v3

    .line 525
    :goto_0
    return v3

    .line 530
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 531
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 532
    .local v2, "offset":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    aget-object v3, v3, v2

    add-int/lit8 v4, p3, 0x5

    invoke-virtual {v3, p1, p2, v4}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result v3

    goto :goto_0

    .line 534
    .end local v2    # "offset":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->iterator()Lscala/collection/immutable/TrieIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/immutable/TrieIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/TrieIterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 965
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashSet$HashTrieSet$$anon$1;-><init>(Lscala/collection/immutable/HashSet$HashTrieSet;)V

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 21
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 840
    ushr-int v3, p2, p3

    and-int/lit8 v16, v3, 0x1f

    .line 841
    .local v16, "index":I
    const/4 v3, 0x1

    shl-int v17, v3, v16

    .line 842
    .local v17, "mask":I
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    add-int/lit8 v4, v17, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v8

    .line 843
    .local v8, "offset":I
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    and-int v3, v3, v17

    if-eqz v3, :cond_0

    .line 844
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    aget-object v19, v3, v8

    .line 845
    .local v19, "sub":Lscala/collection/immutable/HashSet;
    add-int/lit8 v3, p3, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/HashSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object v20

    .line 846
    .local v20, "subNew":Lscala/collection/immutable/HashSet;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 839
    .end local v19    # "sub":Lscala/collection/immutable/HashSet;
    .end local v20    # "subNew":Lscala/collection/immutable/HashSet;
    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_0
    :goto_0
    return-object p0

    .line 847
    .restart local v19    # "sub":Lscala/collection/immutable/HashSet;
    .restart local v20    # "subNew":Lscala/collection/immutable/HashSet;
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_1
    if-nez v20, :cond_4

    .line 848
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    xor-int v15, v3, v17

    .line 849
    .local v15, "bitmapNew":I
    if-eqz v15, :cond_3

    .line 850
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v6, v3, [Lscala/collection/immutable/HashSet;

    .line 851
    .local v6, "elemsNew":[Lscala/collection/immutable/HashSet;
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    sget-object v9, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v8

    add-int/lit8 v14, v3, -0x1

    move-object v12, v6

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    sub-int v18, v3, v4

    .line 856
    .local v18, "sizeNew":I
    array-length v3, v6

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    instance-of v3, v3, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v3, :cond_2

    .line 857
    const/4 v3, 0x0

    aget-object p0, v6, v3

    goto :goto_0

    .line 859
    :cond_2
    new-instance p0, Lscala/collection/immutable/HashSet$HashTrieSet;

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v6, v1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_0

    .line 861
    .end local v6    # "elemsNew":[Lscala/collection/immutable/HashSet;
    .end local v18    # "sizeNew":I
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_3
    const/16 p0, 0x0

    goto :goto_0

    .line 862
    .end local v15    # "bitmapNew":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    move-object/from16 v0, v20

    instance-of v3, v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v3, :cond_5

    move-object/from16 p0, v20

    .line 863
    goto :goto_0

    .line 865
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    array-length v3, v3

    new-array v6, v3, [Lscala/collection/immutable/HashSet;

    .line 866
    .restart local v6    # "elemsNew":[Lscala/collection/immutable/HashSet;
    sget-object v9, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    array-length v14, v3

    move-object v12, v6

    invoke-virtual/range {v9 .. v14}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    aput-object v20, v6, v8

    .line 868
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Lscala/collection/immutable/HashSet;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v18, v3, v4

    .line 869
    .restart local v18    # "sizeNew":I
    new-instance v20, Lscala/collection/immutable/HashSet$HashTrieSet;

    .end local v20    # "subNew":Lscala/collection/immutable/HashSet;
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v3, v6, v1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object/from16 p0, v20

    goto/16 :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    return v0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 13
    .param p1, "that"    # Lscala/collection/immutable/HashSet;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)Z"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 876
    if-ne p1, p0, :cond_1

    .end local p1    # "that":Lscala/collection/immutable/HashSet;
    :goto_0
    move v8, v9

    .line 897
    :cond_0
    return v8

    .line 877
    .restart local p1    # "that":Lscala/collection/immutable/HashSet;
    :cond_1
    instance-of v10, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v10, :cond_4

    check-cast p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .end local p1    # "that":Lscala/collection/immutable/HashSet;
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v10

    invoke-direct {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v11

    if-gt v10, v11, :cond_4

    .line 879
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    .line 880
    .local v1, "abm":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    .line 881
    .local v0, "a":[Lscala/collection/immutable/HashSet;
    const/4 v2, 0x0

    .line 882
    .local v2, "ai":I
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    .line 883
    .local v4, "b":[Lscala/collection/immutable/HashSet;
    invoke-direct {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v5

    .line 884
    .local v5, "bbm":I
    const/4 v6, 0x0

    .line 885
    .local v6, "bi":I
    and-int v10, v1, v5

    if-ne v10, v1, :cond_4

    .line 887
    :goto_1
    if-eqz v1, :cond_3

    .line 889
    add-int/lit8 v10, v1, -0x1

    and-int/2addr v10, v1

    xor-int v3, v1, v10

    .line 891
    .local v3, "alsb":I
    add-int/lit8 v10, v5, -0x1

    and-int/2addr v10, v5

    xor-int v7, v5, v10

    .line 893
    .local v7, "blsb":I
    if-ne v3, v7, :cond_2

    .line 896
    aget-object v10, v0, v2

    aget-object v11, v4, v6

    add-int/lit8 v12, p2, 0x5

    invoke-virtual {v10, v11, v12}, Lscala/collection/immutable/HashSet;->subsetOf0(Lscala/collection/immutable/HashSet;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 899
    xor-int/lit8 v10, v3, -0x1

    and-int/2addr v1, v10

    add-int/lit8 v2, v2, 0x1

    .line 903
    :cond_2
    xor-int/lit8 v10, v7, -0x1

    and-int/2addr v5, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3    # "alsb":I
    .end local v7    # "blsb":I
    :cond_3
    move v8, v9

    .end local v0    # "a":[Lscala/collection/immutable/HashSet;
    .end local v1    # "abm":I
    .end local v2    # "ai":I
    .end local v4    # "b":[Lscala/collection/immutable/HashSet;
    .end local v5    # "bbm":I
    .end local v6    # "bi":I
    :cond_4
    move v9, v8

    .line 876
    goto :goto_0
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 538
    ushr-int v0, p2, p3

    and-int/lit8 v7, v0, 0x1f

    .line 539
    .local v7, "index":I
    const/4 v0, 0x1

    shl-int v8, v0, v7

    .line 540
    .local v8, "mask":I
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    add-int/lit8 v1, v8, -0x1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v9

    .line 541
    .local v9, "offset":I
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    and-int/2addr v0, v8

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    aget-object v10, v0, v9

    .line 543
    .local v10, "sub":Lscala/collection/immutable/HashSet;
    add-int/lit8 v0, p3, 0x5

    invoke-virtual {v10, p1, p2, v0}, Lscala/collection/immutable/HashSet;->updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object v11

    .line 544
    .local v11, "subNew":Lscala/collection/immutable/HashSet;
    if-ne v10, v11, :cond_0

    .line 537
    .end local v10    # "sub":Lscala/collection/immutable/HashSet;
    .end local v11    # "subNew":Lscala/collection/immutable/HashSet;
    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :goto_0
    return-object p0

    .line 546
    .restart local v10    # "sub":Lscala/collection/immutable/HashSet;
    .restart local v11    # "subNew":Lscala/collection/immutable/HashSet;
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashTrieSet;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [Lscala/collection/immutable/HashSet;

    .line 547
    .local v3, "elemsNew":[Lscala/collection/immutable/HashSet;
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    array-length v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    aput-object v11, v3, v9

    .line 549
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v2

    invoke-virtual {v11}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    invoke-virtual {v10}, Lscala/collection/immutable/HashSet;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-direct {v0, v1, v3, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object p0, v0

    goto :goto_0

    .line 552
    .end local v3    # "elemsNew":[Lscala/collection/immutable/HashSet;
    .end local v10    # "sub":Lscala/collection/immutable/HashSet;
    .end local v11    # "subNew":Lscala/collection/immutable/HashSet;
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lscala/collection/immutable/HashSet;

    .line 553
    .restart local v3    # "elemsNew":[Lscala/collection/immutable/HashSet;
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    move v4, v2

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    new-instance v0, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    aput-object v0, v3, v9

    .line 555
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v2

    array-length v2, v2

    sub-int v5, v2, v9

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    or-int v6, v0, v8

    .line 557
    .local v6, "bitmapNew":I
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v6, v3, v1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object p0, v0

    goto :goto_0
.end method
