.class public Lscala/collection/IndexedSeqLike$Elements;
.super Lscala/collection/AbstractIterator;
.source "IndexedSeqLike.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/BufferedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IndexedSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Elements"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/BufferedIterator",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/IndexedSeqLike;

.field private final end:I

.field private index:I


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeqLike;II)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/IndexedSeqLike;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeqLike",
            "<TA;TRepr;>;II)V"
        }
    .end annotation

    .prologue
    .line 55
    iput p3, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/IndexedSeqLike$Elements;->$outer:Lscala/collection/IndexedSeqLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->$init$(Lscala/collection/BufferedIterator;)V

    .line 56
    iput p2, p0, Lscala/collection/IndexedSeqLike$Elements;->index:I

    return-void
.end method

.method private index()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lscala/collection/IndexedSeqLike$Elements;->index:I

    return v0
.end method

.method private index_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 56
    iput p1, p0, Lscala/collection/IndexedSeqLike$Elements;->index:I

    return-void
.end method


# virtual methods
.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->buffered(Lscala/collection/BufferedIterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Lscala/collection/Iterator;
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 78
    if-gtz p1, :cond_0

    new-instance v0, Lscala/collection/IndexedSeqLike$Elements;

    invoke-virtual {p0}, Lscala/collection/IndexedSeqLike$Elements;->scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v2

    iget v3, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/IndexedSeqLike$Elements;-><init>(Lscala/collection/IndexedSeqLike;II)V

    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    if-lt v0, v1, :cond_1

    new-instance v0, Lscala/collection/IndexedSeqLike$Elements;

    invoke-virtual {p0}, Lscala/collection/IndexedSeqLike$Elements;->scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;

    move-result-object v1

    iget v2, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    iget v3, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/IndexedSeqLike$Elements;-><init>(Lscala/collection/IndexedSeqLike;II)V

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lscala/collection/IndexedSeqLike$Elements;

    invoke-virtual {p0}, Lscala/collection/IndexedSeqLike$Elements;->scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/IndexedSeqLike$Elements;-><init>(Lscala/collection/IndexedSeqLike;II)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v0

    iget v1, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v0

    iget v1, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    if-lt v0, v1, :cond_0

    .line 72
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 74
    :goto_0
    invoke-virtual {p0}, Lscala/collection/IndexedSeqLike$Elements;->scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeqLike;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v1

    iget v2, p0, Lscala/collection/IndexedSeqLike$Elements;->end:I

    if-lt v1, v2, :cond_0

    .line 63
    sget-object v1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v1}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 65
    :goto_0
    invoke-virtual {p0}, Lscala/collection/IndexedSeqLike$Elements;->scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v2

    invoke-interface {v1, v2}, Lscala/collection/IndexedSeqLike;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "x":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/IndexedSeqLike$Elements;->index()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/IndexedSeqLike$Elements;->index_$eq(I)V

    .line 67
    return-object v0

    .line 62
    .end local v0    # "x":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public synthetic scala$collection$IndexedSeqLike$Elements$$$outer()Lscala/collection/IndexedSeqLike;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lscala/collection/IndexedSeqLike$Elements;->$outer:Lscala/collection/IndexedSeqLike;

    return-object v0
.end method
