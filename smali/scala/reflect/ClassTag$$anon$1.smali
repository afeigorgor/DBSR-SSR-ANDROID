.class public final Lscala/reflect/ClassTag$$anon$1;
.super Ljava/lang/Object;
.source "ClassTag.scala"

# interfaces
.implements Lscala/reflect/ClassTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/reflect/ClassTag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final runtimeClass1$1:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "runtimeClass1$1"    # Ljava/lang/Class;

    .prologue
    .line 152
    iput-object p1, p0, Lscala/reflect/ClassTag$$anon$1;->runtimeClass1$1:Ljava/lang/Class;

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
    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result v0

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->equals(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
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
    .line 152
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
    .line 152
    iget-object v0, p0, Lscala/reflect/ClassTag$$anon$1;->runtimeClass1$1:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->toString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 152
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->typeArguments(Lscala/reflect/ClassTag;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method
