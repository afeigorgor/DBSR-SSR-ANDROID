.class public Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;
.super Ljava/lang/Object;
.source "GenMapFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom",
        "<TCC;",
        "Lscala/Tuple2",
        "<TA;TB;>;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/GenMapFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenMapFactory;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/generic/GenMapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenMapFactory",
            "<TCC;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->$outer:Lscala/collection/generic/GenMapFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TCC;>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenMapFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Lscala/collection/GenMap;

    .end local p1    # "from":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->apply(Lscala/collection/GenMap;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/GenMap;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "from"    # Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TCC;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenMapFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->$outer:Lscala/collection/generic/GenMapFactory;

    return-object v0
.end method
