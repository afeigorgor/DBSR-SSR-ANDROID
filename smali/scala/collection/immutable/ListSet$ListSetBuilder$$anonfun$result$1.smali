.class public final Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction2;
.source "ListSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListSet$ListSetBuilder;->result()Lscala/collection/immutable/ListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<",
        "Lscala/collection/immutable/ListSet",
        "<TElem;>;TElem;",
        "Lscala/collection/immutable/ListSet",
        "<TElem;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListSet$ListSetBuilder;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/ListSet$ListSetBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet$ListSetBuilder",
            "<TElem;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lscala/collection/immutable/ListSet;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;->apply(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .param p1, "x$1"    # Lscala/collection/immutable/ListSet;
    .param p2, "x$2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet",
            "<TElem;>;TElem;)",
            "Lscala/collection/immutable/ListSet",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Lscala/collection/immutable/ListSet;->scala$collection$immutable$ListSet$$unchecked_$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method
