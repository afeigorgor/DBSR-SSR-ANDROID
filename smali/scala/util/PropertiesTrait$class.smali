.class public abstract Lscala/util/PropertiesTrait$class;
.super Ljava/lang/Object;
.source "Properties.scala"


# direct methods
.method public static $init$(Lscala/util/PropertiesTrait;)V
    .locals 3
    .param p0, "$this"    # Lscala/util/PropertiesTrait;

    .prologue
    .line 31
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->propCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V

    .line 80
    const-string v0, "maven.version.number"

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    new-instance v1, Lscala/util/PropertiesTrait$$anonfun$1;

    invoke-direct {v1, p0}, Lscala/util/PropertiesTrait$$anonfun$1;-><init>(Lscala/util/PropertiesTrait;)V

    new-instance v2, Lscala/Option$WithFilter;

    invoke-direct {v2, v0, v1}, Lscala/Option$WithFilter;-><init>(Lscala/Option;Lscala/Function1;)V

    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$2;

    invoke-direct {v0, p0}, Lscala/util/PropertiesTrait$$anonfun$2;-><init>(Lscala/util/PropertiesTrait;)V

    invoke-virtual {v2, v0}, Lscala/Option$WithFilter;->map(Lscala/Function1;)Lscala/Option;

    move-result-object v0

    .line 78
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V

    .line 94
    const-string v0, "maven.version.number"

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    .line 95
    new-instance v1, Lscala/util/PropertiesTrait$$anonfun$3;

    invoke-direct {v1, p0}, Lscala/util/PropertiesTrait$$anonfun$3;-><init>(Lscala/util/PropertiesTrait;)V

    new-instance v2, Lscala/Option$WithFilter;

    invoke-direct {v2, v0, v1}, Lscala/Option$WithFilter;-><init>(Lscala/Option;Lscala/Function1;)V

    .line 94
    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$4;

    invoke-direct {v0, p0}, Lscala/util/PropertiesTrait$$anonfun$4;-><init>(Lscala/util/PropertiesTrait;)V

    invoke-virtual {v2, v0}, Lscala/Option$WithFilter;->flatMap(Lscala/Function1;)Lscala/Option;

    move-result-object v0

    .line 92
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V

    .line 107
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "version "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "version.number"

    const-string v2, "(unknown)"

    invoke-interface {p0, v1, v2}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V

    .line 108
    const-string v0, "copyright.string"

    const-string v1, "Copyright 2002-2016, LAMP/EPFL"

    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static lineSeparator(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lscala/util/PropertiesTrait;

    .prologue
    .line 123
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alt"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->propOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public static propOrNull(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static quietlyDispose(Lscala/util/PropertiesTrait;Lscala/Function0;Lscala/Function0;)V
    .locals 2
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "action"    # Lscala/Function0;
    .param p2, "disposal"    # Lscala/Function0;

    .prologue
    .line 44
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-interface {p2}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :goto_0
    return-void

    .line 46
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p2}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static scalaPropOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alt"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    new-instance v1, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;

    invoke-direct {v1, p0, p2}, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;-><init>(Lscala/util/PropertiesTrait;Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;->alt$3:Ljava/lang/String;

    :goto_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static scalaPropOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p0, "$this"    # Lscala/util/PropertiesTrait;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->scalaProps()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "scala."

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    check-cast v0, Lscala/Option;

    :cond_0
    return-object v0
.end method

.method public static scalaProps(Lscala/util/PropertiesTrait;)Ljava/util/Properties;
    .locals 4
    .param p0, "$this"    # Lscala/util/PropertiesTrait;

    .prologue
    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    .local v0, "props":Ljava/util/Properties;
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->pickJarBasedOn()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->propFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 37
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 38
    new-instance v2, Lscala/util/PropertiesTrait$$anonfun$scalaProps$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/util/PropertiesTrait$$anonfun$scalaProps$1;-><init>(Lscala/util/PropertiesTrait;Ljava/util/Properties;Ljava/io/InputStream;)V

    new-instance v3, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;

    invoke-direct {v3, p0, v1}, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;-><init>(Lscala/util/PropertiesTrait;Ljava/io/InputStream;)V

    invoke-static {p0, v2, v3}, Lscala/util/PropertiesTrait$class;->quietlyDispose(Lscala/util/PropertiesTrait;Lscala/Function0;Lscala/Function0;)V

    .line 40
    :cond_0
    return-object v0
.end method
