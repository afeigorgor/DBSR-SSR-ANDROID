.class public final Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction1;
.source "Vector.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Vector;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TB;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final v$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Vector;Lscala/runtime/ObjectRef;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/Vector;
    .param p2, "v$1"    # Lscala/runtime/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Vector",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    iput-object p2, p0, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;->v$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;->v$1:Lscala/runtime/ObjectRef;

    iget-object v0, p0, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;->v$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Vector;

    sget-object v2, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v2}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lscala/collection/immutable/Vector;->$colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Vector;

    iput-object v0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
