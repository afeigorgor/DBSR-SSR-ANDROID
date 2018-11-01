.class public abstract Lscala/reflect/Manifest$class;
.super Ljava/lang/Object;
.source "Manifest.scala"


# direct methods
.method public static $init$(Lscala/reflect/Manifest;)V
    .locals 0
    .param p0, "$this"    # Lscala/reflect/Manifest;

    .prologue
    .line 45
    return-void
.end method

.method public static canEqual(Lscala/reflect/Manifest;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/reflect/Manifest;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 52
    instance-of v0, p1, Lscala/reflect/Manifest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Lscala/reflect/Manifest;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "$this"    # Lscala/reflect/Manifest;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 59
    instance-of v1, p1, Lscala/reflect/Manifest;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/reflect/Manifest;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-interface {p1, p0}, Lscala/reflect/Manifest;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {p0, p1}, Lscala/reflect/Manifest;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Lscala/reflect/Manifest;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hashCode(Lscala/reflect/Manifest;)I
    .locals 2
    .param p0, "$this"    # Lscala/reflect/Manifest;

    .prologue
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 62
    invoke-interface {p0}, Lscala/reflect/Manifest;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static typeArguments(Lscala/reflect/Manifest;)Lscala/collection/immutable/List;
    .locals 1
    .param p0, "$this"    # Lscala/reflect/Manifest;

    .prologue
    .line 46
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-object v0
.end method
