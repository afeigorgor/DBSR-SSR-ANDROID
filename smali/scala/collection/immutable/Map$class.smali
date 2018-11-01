.class public abstract Lscala/collection/immutable/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/Map;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/Map;

    .prologue
    .line 29
    return-void
.end method

.method public static empty(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/Map;

    .prologue
    .line 34
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v0}, Lscala/collection/immutable/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public static seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/Map;

    .prologue
    .line 44
    return-object p0
.end method

.method public static toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/Map;
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;

    .prologue
    .line 42
    return-object p0
.end method
