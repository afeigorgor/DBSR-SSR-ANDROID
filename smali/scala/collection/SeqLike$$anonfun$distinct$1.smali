.class public final Lscala/collection/SeqLike$$anonfun$distinct$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike;->distinct()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final b$5:Lscala/collection/mutable/Builder;

.field private final seen$1:Lscala/collection/mutable/HashSet;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/HashSet;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/SeqLike;
    .param p2, "b$5"    # Lscala/collection/mutable/Builder;
    .param p3, "seen$1"    # Lscala/collection/mutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    iput-object p2, p0, Lscala/collection/SeqLike$$anonfun$distinct$1;->b$5:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/SeqLike$$anonfun$distinct$1;->seen$1:Lscala/collection/mutable/HashSet;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$distinct$1;->seen$1:Lscala/collection/mutable/HashSet;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$distinct$1;->b$5:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 508
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$distinct$1;->seen$1:Lscala/collection/mutable/HashSet;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object v0

    goto :goto_0
.end method
