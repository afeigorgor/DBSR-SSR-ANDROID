.class public final Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;
.super Lscala/runtime/AbstractFunction1;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/hashing/MurmurHash3;->orderedHash(Lscala/collection/TraversableOnce;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/util/hashing/MurmurHash3;

.field private final h$1:Lscala/runtime/IntRef;

.field private final n$2:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V
    .locals 1
    .param p1, "$outer"    # Lscala/util/hashing/MurmurHash3;
    .param p2, "n$2"    # Lscala/runtime/IntRef;
    .param p3, "h$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->$outer:Lscala/util/hashing/MurmurHash3;

    iput-object p2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->n$2:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->h$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-object v0, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->h$1:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->$outer:Lscala/util/hashing/MurmurHash3;

    iget-object v2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->h$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result v1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    .line 111
    iget-object v0, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->n$2:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->n$2:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
