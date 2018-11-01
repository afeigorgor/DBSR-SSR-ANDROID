.class public final Lscala/collection/immutable/ListMap$;
.super Lscala/collection/generic/ImmutableMapFactory;
.source "ListMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableMapFactory",
        "<",
        "Lscala/collection/immutable/ListMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/ListMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/ListMap$;

    invoke-direct {v0}, Lscala/collection/immutable/ListMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lscala/collection/generic/ImmutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    return-void
.end method


# virtual methods
.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lscala/collection/immutable/ListMap$EmptyListMap$;->MODULE$:Lscala/collection/immutable/ListMap$EmptyListMap$;

    return-object v0
.end method
