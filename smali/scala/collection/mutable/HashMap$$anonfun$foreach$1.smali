.class public final Lscala/collection/mutable/HashMap$$anonfun$foreach$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashMap;->foreach(Lscala/Function1;)V
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
        "<TA;TB;>;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashMap;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/mutable/HashMap;
    .param p2, "f$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashMap",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p2, p0, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;->apply(Lscala/collection/mutable/DefaultEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/mutable/DefaultEntry;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Lscala/collection/mutable/DefaultEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;)TU;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;->f$1:Lscala/Function1;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
