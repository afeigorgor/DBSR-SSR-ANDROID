.class public abstract Lscala/collection/convert/DecorateAsScala$class;
.super Ljava/lang/Object;
.source "DecorateAsScala.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/DecorateAsScala;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/convert/DecorateAsScala;

    .prologue
    .line 18
    return-void
.end method

.method public static asScalaBufferConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3
    .param p0, "$this"    # Lscala/collection/convert/DecorateAsScala;
    .param p1, "l"    # Ljava/util/List;

    .prologue
    .line 108
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaBufferConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaBufferConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static propertiesAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3
    .param p0, "$this"    # Lscala/collection/convert/DecorateAsScala;
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 196
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method
