.class public final Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayOps;->flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TT;",
        "Lscala/collection/mutable/ArrayBuilder",
        "<TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final asTrav$1:Lscala/Function1;

.field private final b$1:Lscala/collection/mutable/ArrayBuilder;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps;Lscala/collection/mutable/ArrayBuilder;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/mutable/ArrayOps;
    .param p2, "b$1"    # Lscala/collection/mutable/ArrayBuilder;
    .param p3, "asTrav$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p2, p0, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;->b$1:Lscala/collection/mutable/ArrayBuilder;

    iput-object p3, p0, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;->asTrav$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;
    .locals 2
    .param p1, "xs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/ArrayBuilder",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;->b$1:Lscala/collection/mutable/ArrayBuilder;

    iget-object v0, p0, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;->asTrav$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder;

    return-object v0
.end method
