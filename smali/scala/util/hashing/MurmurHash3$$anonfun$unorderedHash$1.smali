.class public final Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;
.super Lscala/runtime/AbstractFunction1;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/hashing/MurmurHash3;->unorderedHash(Lscala/collection/TraversableOnce;I)I
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
.field private final a$1:Lscala/runtime/IntRef;

.field private final b$1:Lscala/runtime/IntRef;

.field private final c$1:Lscala/runtime/IntRef;

.field private final n$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V
    .locals 0
    .param p1, "$outer"    # Lscala/util/hashing/MurmurHash3;
    .param p2, "a$1"    # Lscala/runtime/IntRef;
    .param p3, "b$1"    # Lscala/runtime/IntRef;
    .param p4, "n$1"    # Lscala/runtime/IntRef;
    .param p5, "c$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 91
    iput-object p2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->a$1:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->b$1:Lscala/runtime/IntRef;

    iput-object p4, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->n$1:Lscala/runtime/IntRef;

    iput-object p5, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->c$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 92
    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "h":I
    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->a$1:Lscala/runtime/IntRef;

    iget-object v2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->a$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    add-int/2addr v2, v0

    iput v2, v1, Lscala/runtime/IntRef;->elem:I

    .line 94
    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->b$1:Lscala/runtime/IntRef;

    iget-object v2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->b$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    xor-int/2addr v2, v0

    iput v2, v1, Lscala/runtime/IntRef;->elem:I

    .line 95
    if-eqz v0, :cond_0

    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->c$1:Lscala/runtime/IntRef;

    iget-object v2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->c$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    mul-int/2addr v2, v0

    iput v2, v1, Lscala/runtime/IntRef;->elem:I

    .line 96
    :cond_0
    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->n$1:Lscala/runtime/IntRef;

    iget-object v2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;->n$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
