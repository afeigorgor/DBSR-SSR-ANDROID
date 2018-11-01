.class public final Lscala/collection/immutable/Map$;
.super Lscala/collection/generic/ImmutableMapFactory;
.source "Map.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableMapFactory",
        "<",
        "Lscala/collection/immutable/Map;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Map$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Map$;

    invoke-direct {v0}, Lscala/collection/immutable/Map$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lscala/collection/generic/ImmutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    return-void
.end method


# virtual methods
.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lscala/collection/immutable/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lscala/collection/immutable/Map$;->empty()Lscala/collection/immutable/Map;

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
    .line 84
    sget-object v0, Lscala/collection/immutable/Map$EmptyMap$;->MODULE$:Lscala/collection/immutable/Map$EmptyMap$;

    return-object v0
.end method
