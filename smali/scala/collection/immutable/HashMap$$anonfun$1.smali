.class public final Lscala/collection/immutable/HashMap$$anonfun$1;
.super Lscala/runtime/AbstractFunction2;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    check-cast p2, Lscala/Tuple2;

    .end local p2    # "v2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap$$anonfun$1;->apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;
    .locals 0
    .param p1, "a"    # Lscala/Tuple2;
    .param p2, "b"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    return-object p1
.end method
