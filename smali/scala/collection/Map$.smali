.class public final Lscala/collection/Map$;
.super Lscala/collection/generic/MapFactory;
.source "Map.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MapFactory",
        "<",
        "Lscala/collection/Map;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/Map$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Map$;

    invoke-direct {v0}, Lscala/collection/Map$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lscala/collection/generic/MapFactory;-><init>()V

    sput-object p0, Lscala/collection/Map$;->MODULE$:Lscala/collection/Map$;

    return-void
.end method


# virtual methods
.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v0}, Lscala/collection/immutable/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method
