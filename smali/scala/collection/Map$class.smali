.class public abstract Lscala/collection/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/Map;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/Map;

    .prologue
    .line 30
    return-void
.end method

.method public static empty(Lscala/collection/Map;)Lscala/collection/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Map;

    .prologue
    .line 31
    sget-object v0, Lscala/collection/Map$;->MODULE$:Lscala/collection/Map$;

    invoke-virtual {v0}, Lscala/collection/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public static seq(Lscala/collection/Map;)Lscala/collection/Map;
    .locals 0
    .param p0, "$this"    # Lscala/collection/Map;

    .prologue
    .line 33
    return-object p0
.end method
