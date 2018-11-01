.class public final Lscala/reflect/ManifestFactory$$anon$12;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "Double"

    invoke-direct {p0, v0}, Lscala/reflect/AnyValManifest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$12;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[D
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 141
    new-array v0, p1, [D

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0
.end method
