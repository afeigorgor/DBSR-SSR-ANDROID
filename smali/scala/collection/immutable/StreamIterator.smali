.class public final Lscala/collection/immutable/StreamIterator;
.super Lscala/collection/AbstractIterator;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/StreamIterator$LazyCell;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private these:Lscala/collection/immutable/StreamIterator$LazyCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/StreamIterator",
            "<TA;>.",
            "LazyCell;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/Stream;)V
    .locals 2
    .param p1, "self"    # Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1103
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;-><init>()V

    .line 1104
    new-instance v0, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v1, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/collection/immutable/Stream;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v0}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    return-void
.end method

.method private these()Lscala/collection/immutable/StreamIterator$LazyCell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/StreamIterator",
            "<TA;>.",
            "LazyCell;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lscala/collection/immutable/StreamIterator;->these:Lscala/collection/immutable/StreamIterator$LazyCell;

    return-object v0
.end method

.method private these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/immutable/StreamIterator$LazyCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamIterator",
            "<TA;>.",
            "LazyCell;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1112
    iput-object p1, p0, Lscala/collection/immutable/StreamIterator;->these:Lscala/collection/immutable/StreamIterator$LazyCell;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1114
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 1116
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v2}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1118
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 1119
    .local v0, "cur":Lscala/collection/immutable/Stream;
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    .line 1120
    .local v1, "result":Ljava/lang/Object;
    new-instance v2, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v3, Lscala/collection/immutable/StreamIterator$$anonfun$next$1;

    invoke-direct {v3, p0, v0}, Lscala/collection/immutable/StreamIterator$$anonfun$next$1;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/collection/immutable/Stream;)V

    invoke-direct {v2, p0, v3}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v2}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    goto :goto_0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1124
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator;->these()Lscala/collection/immutable/StreamIterator$LazyCell;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/StreamIterator$LazyCell;->v()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 1125
    .local v0, "result":Lscala/collection/immutable/Stream;
    new-instance v1, Lscala/collection/immutable/StreamIterator$LazyCell;

    new-instance v2, Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;-><init>(Lscala/collection/immutable/StreamIterator;)V

    invoke-direct {v1, p0, v2}, Lscala/collection/immutable/StreamIterator$LazyCell;-><init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V

    invoke-direct {p0, v1}, Lscala/collection/immutable/StreamIterator;->these_$eq(Lscala/collection/immutable/StreamIterator$LazyCell;)V

    .line 1126
    return-object v0
.end method
