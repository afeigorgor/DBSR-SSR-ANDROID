.class public final Lscala/reflect/ManifestFactory$$anon$2;
.super Lscala/reflect/ManifestFactory$PhantomManifest;
.source "Manifest.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/reflect/ManifestFactory$PhantomManifest",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$ObjectTYPE()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Object"

    invoke-direct {p0, v0, v1}, Lscala/reflect/ManifestFactory$PhantomManifest;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

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
    .line 178
    if-eq p1, p0, :cond_0

    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

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

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$2;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 177
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method
