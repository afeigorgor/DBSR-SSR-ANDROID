.class public Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
.super Ljava/lang/Object;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenTraversableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom",
        "<TCC;TA;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/GenTraversableFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/generic/GenTraversableFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory",
            "<TCC;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/GenTraversableFactory;

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
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;->scala$collection$generic$GenTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/GenTraversableFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lscala/collection/GenTraversable;

    .end local p1    # "from":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;->apply(Lscala/collection/GenTraversable;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/GenTraversable;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "from"    # Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lscala/collection/GenTraversable;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$generic$GenTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/GenTraversableFactory;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/GenTraversableFactory;

    return-object v0
.end method
