.class public final Lscala/collection/generic/GenTraversableFactory$$anon$1;
.super Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
.source "GenTraversableFactory.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenTraversableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory",
        "<TCC;>.GenericCanBuildFrom<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenTraversableFactory;


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
    .line 42
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anon$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    invoke-direct {p0, p1}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

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
            "Lscala/runtime/Nothing$;",
            "TCC;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anon$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    invoke-virtual {v0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
