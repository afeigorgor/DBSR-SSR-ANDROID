.class public final Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashSet$HashSetCollision1;->subsetOf0(Lscala/collection/immutable/HashSet;I)Z
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
.field private final synthetic $outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

.field private final level$1:I

.field private final that$1:Lscala/collection/immutable/HashSet;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/HashSet$HashSetCollision1;
    .param p2, "that$1"    # Lscala/collection/immutable/HashSet;
    .param p3, "level$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$HashSetCollision1",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->$outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->that$1:Lscala/collection/immutable/HashSet;

    iput p3, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->level$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->that$1:Lscala/collection/immutable/HashSet;

    iget-object v1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->$outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    iget v2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;->level$1:I

    invoke-virtual {v0, p1, v1, v2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
