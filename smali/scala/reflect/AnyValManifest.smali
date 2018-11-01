.class public abstract Lscala/reflect/AnyValManifest;
.super Ljava/lang/Object;
.source "Manifest.scala"

# interfaces
.implements Lscala/reflect/Manifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/reflect/Manifest",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final transient hashCode:I

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lscala/reflect/AnyValManifest;->toString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/Manifest$class;->$init$(Lscala/reflect/Manifest;)V

    .line 77
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lscala/reflect/AnyValManifest;->hashCode:I

    return-void
.end method


# virtual methods
.method public $less$colon$less(Lscala/reflect/ClassTag;)Z
    .locals 1
    .param p1, "that"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 70
    if-eq p1, p0, :cond_0

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 72
    instance-of v0, p1, Lscala/reflect/AnyValManifest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 75
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lscala/reflect/AnyValManifest;->hashCode:I

    return v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lscala/reflect/AnyValManifest;->toString:Ljava/lang/String;

    return-object v0
.end method

.method public typeArguments()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/reflect/Manifest",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lscala/reflect/Manifest$class;->typeArguments(Lscala/reflect/Manifest;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method
