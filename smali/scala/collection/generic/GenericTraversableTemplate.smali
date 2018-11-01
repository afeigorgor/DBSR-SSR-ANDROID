.class public interface abstract Lscala/collection/generic/GenericTraversableTemplate;
.super Ljava/lang/Object;
.source "GenericTraversableTemplate.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "CC::",
        "Lscala/collection/GenTraversable",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<TCC;>;"
        }
    .end annotation
.end method

.method public abstract genericBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TB;TCC;>;"
        }
    .end annotation
.end method
