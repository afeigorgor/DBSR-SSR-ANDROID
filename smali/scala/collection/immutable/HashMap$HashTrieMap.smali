.class public Lscala/collection/immutable/HashMap$HashTrieMap;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTrieMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashMap",
        "<TA;TB;>;"
    }
.end annotation


# instance fields
.field private final bitmap:I

.field private final elems:[Lscala/collection/immutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private final size0:I


# direct methods
.method public constructor <init>(I[Lscala/collection/immutable/HashMap;I)V
    .locals 0
    .param p1, "bitmap"    # I
    .param p2, "elems"    # [Lscala/collection/immutable/HashMap;
    .param p3, "size0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;I)V"
        }
    .end annotation

    .prologue
    .line 294
    iput p1, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap:I

    .line 295
    iput-object p2, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->elems:[Lscala/collection/immutable/HashMap;

    .line 296
    iput p3, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->size0:I

    .line 297
    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmap()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap:I

    return v0
.end method

.method public elems()[Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->elems:[Lscala/collection/immutable/HashMap;

    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 15
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashMap;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 377
    move/from16 v7, p5

    .line 379
    .local v7, "offset":I
    const/4 v14, 0x0

    .line 381
    .local v14, "rs":I
    const/4 v11, 0x0

    .line 383
    .local v11, "kept":I
    const/4 v10, 0x0

    .line 384
    .local v10, "i":I
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v2

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v2

    aget-object v2, v2, v10

    add-int/lit8 v5, p3, 0x5

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object v13

    .line 386
    .local v13, "result":Lscala/collection/immutable/HashMap;
    if-eqz v13, :cond_0

    .line 387
    aput-object v13, p4, v7

    .line 388
    add-int/lit8 v7, v7, 0x1

    .line 390
    invoke-virtual {v13}, Lscala/collection/immutable/HashMap;->size()I

    move-result v2

    add-int/2addr v14, v2

    .line 392
    const/4 v2, 0x1

    shl-int/2addr v2, v10

    or-int/2addr v11, v2

    .line 394
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 396
    .end local v13    # "result":Lscala/collection/immutable/HashMap;
    :cond_1
    move/from16 v0, p5

    if-ne v7, v0, :cond_3

    .line 398
    const/4 p0, 0x0

    .line 375
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_2
    :goto_1
    return-object p0

    .line 399
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size0()I

    move-result v2

    if-eq v14, v2, :cond_2

    .line 402
    add-int/lit8 v2, p5, 0x1

    if-ne v7, v2, :cond_4

    aget-object v2, p4, p5

    instance-of v2, v2, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez v2, :cond_4

    .line 404
    aget-object p0, p4, p5

    goto :goto_1

    .line 407
    :cond_4
    sub-int v12, v7, p5

    .line 408
    .local v12, "length":I
    new-array v9, v12, [Lscala/collection/immutable/HashMap;

    .line 409
    .local v9, "elems1":[Lscala/collection/immutable/HashMap;
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v9, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v2

    array-length v2, v2

    if-ne v12, v2, :cond_5

    .line 412
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v8

    .line 417
    .local v8, "bitmap1":I
    :goto_2
    new-instance p0, Lscala/collection/immutable/HashMap$HashTrieMap;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    invoke-direct {p0, v8, v9, v14}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_1

    .line 415
    .end local v8    # "bitmap1":I
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_5
    sget-object v2, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    invoke-virtual {v2, v3, v11}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$keepBits(II)I

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
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashMap;->foreach(Lscala/Function1;)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 305
    ushr-int v3, p2, p3

    and-int/lit8 v0, v3, 0x1f

    .line 306
    .local v0, "index":I
    const/4 v3, 0x1

    shl-int v1, v3, v0

    .line 307
    .local v1, "mask":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 308
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    and-int/lit8 v4, v0, 0x1f

    aget-object v3, v3, v4

    add-int/lit8 v4, p3, 0x5

    invoke-virtual {v3, p1, p2, v4}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object v3

    .line 304
    :goto_0
    return-object v3

    .line 309
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 311
    .local v2, "offset":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    aget-object v3, v3, v2

    add-int/lit8 v4, p3, 0x5

    invoke-virtual {v3, p1, p2, v4}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object v3

    goto :goto_0

    .line 313
    .end local v2    # "offset":I
    :cond_1
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;-><init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 21
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 339
    ushr-int v3, p2, p3

    and-int/lit8 v16, v3, 0x1f

    .line 340
    .local v16, "index":I
    const/4 v3, 0x1

    shl-int v17, v3, v16

    .line 341
    .local v17, "mask":I
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    add-int/lit8 v4, v17, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v8

    .line 342
    .local v8, "offset":I
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    and-int v3, v3, v17

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    aget-object v19, v3, v8

    .line 344
    .local v19, "sub":Lscala/collection/immutable/HashMap;
    add-int/lit8 v3, p3, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/HashMap;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;

    move-result-object v20

    .line 345
    .local v20, "subNew":Lscala/collection/immutable/HashMap;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 338
    .end local v19    # "sub":Lscala/collection/immutable/HashMap;
    .end local v20    # "subNew":Lscala/collection/immutable/HashMap;
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_0
    :goto_0
    return-object p0

    .line 346
    .restart local v19    # "sub":Lscala/collection/immutable/HashMap;
    .restart local v20    # "subNew":Lscala/collection/immutable/HashMap;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lscala/collection/immutable/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    xor-int v15, v3, v17

    .line 348
    .local v15, "bitmapNew":I
    if-eqz v15, :cond_3

    .line 349
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v6, v3, [Lscala/collection/immutable/HashMap;

    .line 350
    .local v6, "elemsNew":[Lscala/collection/immutable/HashMap;
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    sget-object v9, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v8

    add-int/lit8 v14, v3, -0x1

    move-object v12, v6

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lscala/collection/immutable/HashMap;->size()I

    move-result v4

    sub-int v18, v3, v4

    .line 355
    .local v18, "sizeNew":I
    array-length v3, v6

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    instance-of v3, v3, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez v3, :cond_2

    .line 356
    const/4 v3, 0x0

    aget-object p0, v6, v3

    goto :goto_0

    .line 358
    :cond_2
    new-instance p0, Lscala/collection/immutable/HashMap$HashTrieMap;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v6, v1}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_0

    .line 360
    .end local v6    # "elemsNew":[Lscala/collection/immutable/HashMap;
    .end local v18    # "sizeNew":I
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_3
    sget-object v3, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v3}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p0

    goto :goto_0

    .line 361
    .end local v15    # "bitmapNew":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    move-object/from16 v0, v20

    instance-of v3, v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez v3, :cond_5

    move-object/from16 p0, v20

    .line 362
    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    new-array v6, v3, [Lscala/collection/immutable/HashMap;

    .line 365
    .restart local v6    # "elemsNew":[Lscala/collection/immutable/HashMap;
    sget-object v9, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v14, v3

    move-object v12, v6

    invoke-virtual/range {v9 .. v14}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    aput-object v20, v6, v8

    .line 367
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lscala/collection/immutable/HashMap;->size()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Lscala/collection/immutable/HashMap;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v18, v3, v4

    .line 368
    .restart local v18    # "sizeNew":I
    new-instance v20, Lscala/collection/immutable/HashMap$HashTrieMap;

    .end local v20    # "subNew":Lscala/collection/immutable/HashMap;
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v3, v6, v1}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object/from16 p0, v20

    goto/16 :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size0()I

    move-result v0

    return v0
.end method

.method public size0()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->size0:I

    return v0
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 13
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "kv"    # Lscala/Tuple2;
    .param p6, "merger"    # Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2",
            "<TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 317
    ushr-int v3, p2, p3

    and-int/lit8 v9, v3, 0x1f

    .line 318
    .local v9, "index":I
    const/4 v3, 0x1

    shl-int v10, v3, v9

    .line 319
    .local v10, "mask":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    add-int/lit8 v4, v10, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v11

    .line 320
    .local v11, "offset":I
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    and-int/2addr v3, v10

    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    aget-object v2, v3, v11

    .line 322
    .local v2, "sub":Lscala/collection/immutable/HashMap;
    add-int/lit8 v5, p3, 0x5

    move-object v3, p1

    move v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v12

    .line 323
    .local v12, "subNew":Lscala/collection/immutable/HashMap;
    if-ne v12, v2, :cond_0

    .line 316
    .end local v2    # "sub":Lscala/collection/immutable/HashMap;
    .end local v12    # "subNew":Lscala/collection/immutable/HashMap;
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :goto_0
    return-object p0

    .line 324
    .restart local v2    # "sub":Lscala/collection/immutable/HashMap;
    .restart local v12    # "subNew":Lscala/collection/immutable/HashMap;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashTrieMap;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    new-array v6, v3, [Lscala/collection/immutable/HashMap;

    .line 325
    .local v6, "elemsNew":[Lscala/collection/immutable/HashMap;
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v8

    array-length v8, v8

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    aput-object v12, v6, v11

    .line 327
    new-instance v3, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v5

    invoke-virtual {v12}, Lscala/collection/immutable/HashMap;->size()I

    move-result v7

    invoke-virtual {v2}, Lscala/collection/immutable/HashMap;->size()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v5, v7

    invoke-direct {v3, v4, v6, v5}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object p0, v3

    goto :goto_0

    .line 330
    .end local v2    # "sub":Lscala/collection/immutable/HashMap;
    .end local v6    # "elemsNew":[Lscala/collection/immutable/HashMap;
    .end local v12    # "subNew":Lscala/collection/immutable/HashMap;
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v6, v3, [Lscala/collection/immutable/HashMap;

    .line 331
    .restart local v6    # "elemsNew":[Lscala/collection/immutable/HashMap;
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v11

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    new-instance v3, Lscala/collection/immutable/HashMap$HashMap1;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v3, p1, p2, v0, v1}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    aput-object v3, v6, v11

    .line 333
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v5

    array-length v5, v5

    sub-int v8, v5, v11

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    new-instance v3, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v4

    or-int/2addr v4, v10

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v6, v5}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object p0, v3

    goto :goto_0
.end method
