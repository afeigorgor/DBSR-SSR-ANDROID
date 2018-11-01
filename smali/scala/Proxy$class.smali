.class public abstract Lscala/Proxy$class;
.super Ljava/lang/Object;
.source "Proxy.scala"


# direct methods
.method public static $init$(Lscala/Proxy;)V
    .locals 0
    .param p0, "$this"    # Lscala/Proxy;

    .prologue
    .line 25
    return-void
.end method

.method public static equals(Lscala/Proxy;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "$this"    # Lscala/Proxy;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    if-eq p1, p0, :cond_2

    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_2

    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hashCode(Lscala/Proxy;)I
    .locals 1
    .param p0, "$this"    # Lscala/Proxy;

    .prologue
    .line 28
    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static toString(Lscala/Proxy;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/Proxy;

    .prologue
    .line 35
    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
