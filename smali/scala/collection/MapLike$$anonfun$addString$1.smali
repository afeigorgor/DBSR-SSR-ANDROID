.class public final Lscala/collection/MapLike$$anonfun$addString$1;
.super Lscala/runtime/AbstractFunction1;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/MapLike;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike",
            "<TA;TB;TThis;>;)V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$$anonfun$addString$1;->apply(Lscala/Tuple2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;)Ljava/lang/String;
    .locals 4
    .param p1, "x0$1"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p1, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v1, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v1, v2, v3}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
