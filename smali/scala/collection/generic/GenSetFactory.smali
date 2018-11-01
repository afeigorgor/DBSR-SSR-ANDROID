.class public abstract Lscala/collection/generic/GenSetFactory;
.super Lscala/collection/generic/GenericCompanion;
.source "GenSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/GenSet",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenericCompanion",
        "<TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lscala/collection/generic/GenericCompanion;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation
.end method

.method public setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lscala/collection/generic/GenSetFactory$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenSetFactory$$anon$1;-><init>(Lscala/collection/generic/GenSetFactory;)V

    return-object v0
.end method
