.class public final Lscala/collection/IndexedSeqOptimized$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "IndexedSeqOptimized.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IndexedSeqOptimized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/IndexedSeqOptimized;

.field private i:I


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeqOptimized;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/IndexedSeqOptimized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeqOptimized",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/IndexedSeqOptimized$$anon$1;->$outer:Lscala/collection/IndexedSeqOptimized;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 228
    invoke-interface {p1}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    iput v0, p0, Lscala/collection/IndexedSeqOptimized$$anon$1;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lscala/collection/IndexedSeqOptimized$$anon$1;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 228
    iput p1, p0, Lscala/collection/IndexedSeqOptimized$$anon$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;->i()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/IndexedSeqOptimized$$anon$1;->i_$eq(I)V

    .line 233
    iget-object v0, p0, Lscala/collection/IndexedSeqOptimized$$anon$1;->$outer:Lscala/collection/IndexedSeqOptimized;

    invoke-direct {p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;->i()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
