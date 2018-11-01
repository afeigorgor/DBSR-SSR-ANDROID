.class public final Lscala/reflect/ManifestFactory$$anon$14;
.super Lscala/reflect/AnyValManifest;
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
        "Lscala/reflect/AnyValManifest",
        "<",
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "Unit"

    invoke-direct {p0, v0}, Lscala/reflect/AnyValManifest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$14;->newArray(I)[Lscala/runtime/BoxedUnit;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lscala/runtime/BoxedUnit;
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 157
    new-array v0, p1, [Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0
.end method
