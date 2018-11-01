.class public interface abstract Lscala/reflect/ClassManifestDeprecatedApis;
.super Ljava/lang/Object;
.source "ClassManifestDeprecatedApis.scala"

# interfaces
.implements Lscala/reflect/OptManifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/reflect/OptManifest",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $less$colon$less(Lscala/reflect/ClassTag;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract typeArguments()Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/reflect/OptManifest",
            "<*>;>;"
        }
    .end annotation
.end method
