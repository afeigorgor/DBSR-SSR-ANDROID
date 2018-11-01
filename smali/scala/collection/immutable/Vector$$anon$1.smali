.class public final Lscala/collection/immutable/Vector$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "Vector.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Vector;->reverseIterator()Lscala/collection/Iterator;
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
.field private final synthetic $outer:Lscala/collection/immutable/Vector;

.field private i:I


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Vector;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Vector",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/Vector$$anon$1;->$outer:Lscala/collection/immutable/Vector;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 105
    invoke-virtual {p1}, Lscala/collection/immutable/Vector;->length()I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/Vector$$anon$1;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lscala/collection/immutable/Vector$$anon$1;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 105
    iput p1, p0, Lscala/collection/immutable/Vector$$anon$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lscala/collection/immutable/Vector$$anon$1;->i()I

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
    .line 108
    invoke-direct {p0}, Lscala/collection/immutable/Vector$$anon$1;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lscala/collection/immutable/Vector$$anon$1;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector$$anon$1;->i_$eq(I)V

    .line 110
    iget-object v0, p0, Lscala/collection/immutable/Vector$$anon$1;->$outer:Lscala/collection/immutable/Vector;

    invoke-direct {p0}, Lscala/collection/immutable/Vector$$anon$1;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
