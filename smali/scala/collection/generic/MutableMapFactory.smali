.class public abstract Lscala/collection/generic/MutableMapFactory;
.super Lscala/collection/generic/MapFactory;
.source "MutableMapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/mutable/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/MapFactory",
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
    .line 24
    invoke-direct {p0}, Lscala/collection/generic/MapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TCC;>;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lscala/collection/generic/MutableMapFactory;->empty()Lscala/collection/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    return-object v0
.end method
