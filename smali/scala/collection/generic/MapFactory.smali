.class public abstract Lscala/collection/generic/MapFactory;
.super Lscala/collection/generic/GenMapFactory;
.source "MapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenMapFactory",
        "<TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lscala/collection/generic/GenMapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract empty()Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation
.end method
