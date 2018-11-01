.class public abstract Lscala/collection/immutable/TrieIterator;
.super Lscala/collection/AbstractIterator;
.source "TrieIterator.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final elems:[Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field public scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field public scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field

.field public scala$collection$immutable$TrieIterator$$depth:I

.field public scala$collection$immutable$TrieIterator$$posD:I

.field public scala$collection$immutable$TrieIterator$$posStack:[I

.field public scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lscala/collection/immutable/Iterable;)V
    .locals 1
    .param p1, "elems"    # [Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lscala/collection/immutable/TrieIterator;->elems:[Lscala/collection/immutable/Iterable;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initDepth()I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    .line 34
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initArrayStack()[[Lscala/collection/immutable/Iterable;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;

    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initPosStack()[I

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posStack:[I

    .line 36
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initArrayD()[Lscala/collection/immutable/Iterable;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initPosD()I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    .line 38
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->initSubIter()Lscala/collection/Iterator;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    return-void
.end method

.method private getElems(Lscala/collection/immutable/Iterable;)[Lscala/collection/immutable/Iterable;
    .locals 1
    .param p1, "x"    # Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;)[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    .end local p1    # "x":Lscala/collection/immutable/Iterable;
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    check-cast v0, [Lscala/collection/AbstractIterable;

    .line 40
    :goto_0
    check-cast v0, [Lscala/collection/immutable/Iterable;

    return-object v0

    .line 42
    .restart local p1    # "x":Lscala/collection/immutable/Iterable;
    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .end local p1    # "x":Lscala/collection/immutable/Iterable;
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    check-cast v0, [Lscala/collection/AbstractIterable;

    goto :goto_0

    .line 40
    .restart local p1    # "x":Lscala/collection/immutable/Iterable;
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private isContainer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 57
    instance-of v2, p1, Lscala/collection/immutable/HashMap$HashMap1;

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 56
    :goto_1
    return v0

    .line 57
    :cond_0
    instance-of v2, p1, Lscala/collection/immutable/HashSet$HashSet1;

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_1
.end method

.method private isTrie(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 53
    instance-of v2, p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 52
    :goto_1
    return v0

    .line 53
    :cond_0
    instance-of v2, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 54
    goto :goto_1
.end method

.method private next0([Lscala/collection/immutable/Iterable;I)Ljava/lang/Object;
    .locals 6
    .param p1, "elems"    # [Lscala/collection/immutable/Iterable;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 108
    iget v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    .line 109
    iget v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    if-ltz v1, :cond_0

    .line 110
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    .line 111
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posStack:[I

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    aget v1, v1, v2

    iput v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    .line 112
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    aput-object v5, v1, v2

    .line 120
    :goto_1
    aget-object v0, p1, p2

    .line 125
    .local v0, "m":Lscala/collection/immutable/Iterable;
    invoke-direct {p0, v0}, Lscala/collection/immutable/TrieIterator;->isContainer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lscala/collection/immutable/TrieIterator;->getElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    :goto_2
    return-object v1

    .line 114
    .end local v0    # "m":Lscala/collection/immutable/Iterable;
    :cond_0
    iput-object v5, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    .line 115
    iput v4, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    goto :goto_1

    .line 118
    :cond_1
    iget v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    goto :goto_1

    .line 127
    .restart local v0    # "m":Lscala/collection/immutable/Iterable;
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/immutable/TrieIterator;->isTrie(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    iget v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    if-ltz v1, :cond_3

    .line 129
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    iget-object v3, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    aput-object v3, v1, v2

    .line 130
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posStack:[I

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    iget v3, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    aput v3, v1, v2

    .line 132
    :cond_3
    iget v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    .line 133
    invoke-direct {p0, v0}, Lscala/collection/immutable/TrieIterator;->getElems(Lscala/collection/immutable/Iterable;)[Lscala/collection/immutable/Iterable;

    move-result-object v1

    iput-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    .line 134
    iput v4, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    .line 135
    invoke-direct {p0, v0}, Lscala/collection/immutable/TrieIterator;->getElems(Lscala/collection/immutable/Iterable;)[Lscala/collection/immutable/Iterable;

    move-result-object p1

    .end local p1    # "elems":[Lscala/collection/immutable/Iterable;
    const/4 p2, 0x0

    .restart local p1    # "elems":[Lscala/collection/immutable/Iterable;
    goto :goto_0

    .line 138
    :cond_4
    invoke-interface {v0}, Lscala/collection/immutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    iput-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    .line 139
    invoke-virtual {p0}, Lscala/collection/immutable/TrieIterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public abstract getElem(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    if-nez v0, :cond_0

    iget v0, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initArrayD()[Lscala/collection/immutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator;->elems:[Lscala/collection/immutable/Iterable;

    return-object v0
.end method

.method public initArrayStack()[[Lscala/collection/immutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Lscala/collection/immutable/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [[Lscala/collection/immutable/Iterable;

    return-object v0
.end method

.method public initDepth()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public initPosD()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public initPosStack()[I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public initSubIter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "el":Ljava/lang/Object;
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    .line 97
    .end local v0    # "el":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    iget-object v1, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    iget v2, p0, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    invoke-direct {p0, v1, v2}, Lscala/collection/immutable/TrieIterator;->next0([Lscala/collection/immutable/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
