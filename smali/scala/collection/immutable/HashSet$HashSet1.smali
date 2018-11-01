.class public Lscala/collection/immutable/HashSet$HashSet1;
.super Lscala/collection/immutable/HashSet$LeafHashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashSet1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet$LeafHashSet",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;I)V"
        }
    .end annotation

    .prologue
    .line 250
    iput-object p1, p0, Lscala/collection/immutable/HashSet$HashSet1;->key:Ljava/lang/Object;

    iput p2, p0, Lscala/collection/immutable/HashSet$HashSet1;->hash:I

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$LeafHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 1
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
    .line 313
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
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
    .line 316
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v2

    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    move v2, v0

    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .end local p1    # "key":Ljava/lang/Object;
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public hash()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lscala/collection/immutable/HashSet$HashSet1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSet1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 2
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
    .line 310
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    :cond_0
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 2
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
    .line 261
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 6
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
    .line 265
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSet1;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    if-eq p2, v0, :cond_5

    .line 268
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v1

    new-instance v4, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v4, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p0

    goto :goto_1

    .line 271
    :cond_5
    new-instance v1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    move-object p0, v1

    goto :goto_1
.end method
