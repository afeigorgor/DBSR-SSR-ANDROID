.class public Lscala/reflect/ManifestFactory$ClassTypeManifest;
.super Ljava/lang/Object;
.source "Manifest.scala"

# interfaces
.implements Lscala/reflect/Manifest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassTypeManifest"
.end annotation

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


# instance fields
.field private final prefix:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option",
            "<",
            "Lscala/reflect/Manifest",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final runtimeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final typeArguments:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/reflect/Manifest",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V
    .locals 0
    .param p1, "prefix"    # Lscala/Option;
    .param p2, "runtimeClass"    # Ljava/lang/Class;
    .param p3, "typeArguments"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option",
            "<",
            "Lscala/reflect/Manifest",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/reflect/Manifest",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    .line 243
    iput-object p2, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    .line 244
    iput-object p3, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/Manifest$class;->$init$(Lscala/reflect/Manifest;)V

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
    .line 242
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result v0

    return v0
.end method

.method public argString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->argString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 242
    invoke-static {p0, p1}, Lscala/reflect/Manifest$class;->canEqual(Lscala/reflect/Manifest;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 242
    invoke-static {p0, p1}, Lscala/reflect/Manifest$class;->equals(Lscala/reflect/Manifest;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 242
    invoke-static {p0}, Lscala/reflect/Manifest$class;->hashCode(Lscala/reflect/Manifest;)I

    move-result v0

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
    .line 242
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 246
    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Array"

    :goto_1
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->argString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/reflect/ClassTag;

    invoke-interface {v0}, Lscala/reflect/ClassTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
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
    .line 244
    iget-object v0, p0, Lscala/reflect/ManifestFactory$ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    return-object v0
.end method
