.class public abstract Lscala/reflect/ClassManifestDeprecatedApis$class;
.super Ljava/lang/Object;
.source "ClassManifestDeprecatedApis.scala"


# direct methods
.method public static $init$(Lscala/reflect/ClassTag;)V
    .locals 0
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 16
    return-void
.end method

.method public static $less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z
    .locals 4
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "that"    # Lscala/reflect/ClassTag;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->cannotMatch$1(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 73
    :cond_0
    invoke-interface {p1}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lscala/reflect/ClassManifestDeprecatedApis$class;->subtype(Lscala/reflect/ClassTag;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 66
    :goto_1
    return v0

    .line 68
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :cond_2
    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v2

    invoke-interface {p1}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lscala/reflect/ClassManifestDeprecatedApis$class;->subargs(Lscala/reflect/ClassTag;Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    .line 73
    goto :goto_0

    :cond_4
    move v0, v1

    .line 66
    goto :goto_1
.end method

.method public static argString(Lscala/reflect/ClassTag;)Ljava/lang/String;
    .locals 4
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 134
    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/reflect/ClassTag;->typeArguments()Lscala/collection/immutable/List;

    move-result-object v0

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v1, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v1}, Lscala/reflect/package$;->ClassManifest()Lscala/reflect/ClassManifestFactory$;

    move-result-object v1

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/reflect/ClassManifestFactory$;->fromClass(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static final cannotMatch$1(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z
    .locals 1
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "that$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 52
    instance-of v0, p1, Lscala/reflect/AnyValManifest;

    if-nez v0, :cond_0

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Nothing()Lscala/reflect/Manifest;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Null()Lscala/reflect/Manifest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final loop$1(Lscala/reflect/ClassTag;Lscala/collection/immutable/Set;Lscala/collection/immutable/Set;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "left"    # Lscala/collection/immutable/Set;
    .param p2, "seen"    # Lscala/collection/immutable/Set;
    .param p3, "sup$1"    # Ljava/lang/Class;

    .prologue
    .line 25
    :goto_0
    invoke-interface {p1}, Lscala/collection/immutable/Set;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-interface {p1}, Lscala/collection/immutable/Set;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 27
    .local v0, "next":Ljava/lang/Class;
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/mutable/ArrayOps;->toSet()Lscala/collection/immutable/Set;

    move-result-object v3

    sget-object v4, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v5, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object v4

    invoke-interface {v3, v4}, Lscala/collection/immutable/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Set;

    .line 28
    .local v1, "supers":Lscala/collection/immutable/Set;
    invoke-interface {v1, p3}, Lscala/collection/immutable/Set;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const/4 v3, 0x1

    .line 24
    .end local v0    # "next":Ljava/lang/Class;
    .end local v1    # "supers":Lscala/collection/immutable/Set;
    :goto_1
    return v3

    .line 29
    .restart local v0    # "next":Ljava/lang/Class;
    .restart local v1    # "supers":Lscala/collection/immutable/Set;
    :cond_0
    invoke-interface {p1, v1}, Lscala/collection/immutable/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Lscala/collection/Set;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Set;

    .line 30
    .local v2, "xs":Lscala/collection/immutable/Set;
    invoke-interface {v2, v0}, Lscala/collection/immutable/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    .end local p1    # "left":Lscala/collection/immutable/Set;
    check-cast p1, Lscala/collection/immutable/Set;

    invoke-interface {p2, v0}, Lscala/collection/immutable/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p2

    .end local p2    # "seen":Lscala/collection/immutable/Set;
    check-cast p2, Lscala/collection/immutable/Set;

    .restart local p1    # "left":Lscala/collection/immutable/Set;
    .restart local p2    # "seen":Lscala/collection/immutable/Set;
    goto :goto_0

    .line 25
    .end local v0    # "next":Ljava/lang/Class;
    .end local v1    # "supers":Lscala/collection/immutable/Set;
    .end local v2    # "xs":Lscala/collection/immutable/Set;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static subargs(Lscala/reflect/ClassTag;Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Z
    .locals 1
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "args1"    # Lscala/collection/immutable/List;
    .param p2, "args2"    # Lscala/collection/immutable/List;

    .prologue
    .line 37
    new-instance v0, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;

    invoke-direct {v0, p0}, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;-><init>(Lscala/reflect/ClassTag;)V

    invoke-virtual {p1, p2, v0}, Lscala/collection/immutable/List;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method private static subtype(Lscala/reflect/ClassTag;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "sub"    # Ljava/lang/Class;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 34
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Set()Lscala/collection/immutable/Set$;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->Set()Lscala/collection/immutable/Set$;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Set;

    invoke-static {p0, v0, v1, p2}, Lscala/reflect/ClassManifestDeprecatedApis$class;->loop$1(Lscala/reflect/ClassTag;Lscala/collection/immutable/Set;Lscala/collection/immutable/Set;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static typeArguments(Lscala/reflect/ClassTag;)Lscala/collection/immutable/List;
    .locals 1
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 131
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    return-object v0
.end method
