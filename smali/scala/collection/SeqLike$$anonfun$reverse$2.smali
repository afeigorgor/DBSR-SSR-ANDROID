.class public final Lscala/collection/SeqLike$$anonfun$reverse$2;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike;->reverse()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Lscala/collection/mutable/Builder",
        "<TA;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final b$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/SeqLike;
    .param p2, "b$1"    # Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p2, p0, Lscala/collection/SeqLike$$anonfun$reverse$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anonfun$reverse$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TRepr;>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$reverse$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
