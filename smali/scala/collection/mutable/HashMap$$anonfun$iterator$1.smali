.class public final Lscala/collection/mutable/HashMap$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/collection/mutable/DefaultEntry",
        "<TA;TB;>;",
        "Lscala/Tuple2",
        "<TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashMap;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/mutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashMap",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$iterator$1;->apply(Lscala/collection/mutable/DefaultEntry;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/mutable/DefaultEntry;)Lscala/Tuple2;
    .locals 3
    .param p1, "e"    # Lscala/collection/mutable/DefaultEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;)",
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
