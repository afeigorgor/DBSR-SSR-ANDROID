.class public Lscala/reflect/ClassTypeManifest;
.super Ljava/lang/Object;
.source "ClassManifestDeprecatedApis.scala"

# interfaces
.implements Lscala/reflect/ClassTag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/reflect/ClassTag",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final prefix:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option",
            "<",
            "Lscala/reflect/OptManifest",
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
            "Lscala/reflect/OptManifest",
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
            "Lscala/reflect/OptManifest",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/reflect/OptManifest",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lscala/reflect/ClassTypeManifest;->prefix:Lscala/Option;

    .line 235
    iput-object p2, p0, Lscala/reflect/ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    .line 236
    iput-object p3, p0, Lscala/reflect/ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

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
    .line 233
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result v0

    return v0
.end method

.method public argString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->argString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->equals(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 233
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->hashCode(Lscala/reflect/ClassTag;)I

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
    .line 233
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
    .line 235
    iget-object v0, p0, Lscala/reflect/ClassTypeManifest;->runtimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 239
    iget-object v0, p0, Lscala/reflect/ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lscala/reflect/ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Array"

    :goto_1
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lscala/reflect/ClassTypeManifest;->argString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v2, p0, Lscala/reflect/ClassTypeManifest;->prefix:Lscala/Option;

    invoke-virtual {v2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lscala/reflect/ClassTypeManifest;->runtimeClass()Ljava/lang/Class;

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
            "Lscala/reflect/OptManifest",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lscala/reflect/ClassTypeManifest;->typeArguments:Lscala/collection/immutable/List;

    return-object v0
.end method
