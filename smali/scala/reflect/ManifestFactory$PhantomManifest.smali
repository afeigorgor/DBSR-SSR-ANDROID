.class public abstract Lscala/reflect/ManifestFactory$PhantomManifest;
.super Lscala/reflect/ManifestFactory$ClassTypeManifest;
.source "Manifest.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhantomManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/reflect/ManifestFactory$ClassTypeManifest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final transient hashCode:I

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "_runtimeClass"    # Ljava/lang/Class;
    .param p2, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p2, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->toString:Ljava/lang/String;

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0, p1, v1}, Lscala/reflect/ManifestFactory$ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    .line 237
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 235
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
    .line 237
    iget v0, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->toString:Ljava/lang/String;

    return-object v0
.end method
