.class public abstract Lscala/collection/generic/GenTraversableFactory;
.super Lscala/collection/generic/GenericCompanion;
.source "GenTraversableFactory.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/GenTraversable",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenericCompanion",
        "<TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/GenTraversableFactory",
            "<TCC;>.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lscala/collection/generic/GenericCompanion;-><init>()V

    .line 42
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenTraversableFactory$$anon$1;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    iput-object v0, p0, Lscala/collection/generic/GenTraversableFactory;->ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    return-void
.end method


# virtual methods
.method public ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory",
            "<TCC;>.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory;->ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    return-object v0
.end method
