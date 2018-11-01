.class public final Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;
.super Lscala/runtime/AbstractFunction1;
.source "Growable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Lscala/collection/generic/Growable",
        "<TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/Growable;


# direct methods
.method public constructor <init>(Lscala/collection/generic/Growable;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/Growable",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/generic/Growable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;->apply(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;->$outer:Lscala/collection/generic/Growable;

    invoke-interface {v0, p1}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method
