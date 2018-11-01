.class public interface abstract Lscala/reflect/ClassTag;
.super Ljava/lang/Object;
.source "ClassTag.scala"

# interfaces
.implements Lscala/Equals;
.implements Lscala/reflect/ClassManifestDeprecatedApis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Equals;",
        "Lscala/reflect/ClassManifestDeprecatedApis",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract runtimeClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
