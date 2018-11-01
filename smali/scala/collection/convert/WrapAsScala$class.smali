.class public abstract Lscala/collection/convert/WrapAsScala$class;
.super Ljava/lang/Object;
.source "WrapAsScala.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/WrapAsScala;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/convert/WrapAsScala;

    .prologue
    .line 16
    return-void
.end method

.method public static asScalaBuffer(Lscala/collection/convert/WrapAsScala;Ljava/util/List;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/convert/WrapAsScala;
    .param p1, "l"    # Ljava/util/List;

    .prologue
    .line 104
    instance-of v0, p1, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    .end local p1    # "l":Ljava/util/List;
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 105
    .restart local p1    # "l":Ljava/util/List;
    :cond_0
    new-instance v0, Lscala/collection/convert/Wrappers$JListWrapper;

    sget-object v1, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JListWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static asScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Iterator;)Lscala/collection/Iterator;
    .locals 2
    .param p0, "$this"    # Lscala/collection/convert/WrapAsScala;
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 33
    instance-of v0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    .end local p1    # "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 34
    .restart local p1    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Lscala/collection/convert/Wrappers$JIteratorWrapper;

    sget-object v1, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JIteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public static enumerationAsScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Enumeration;)Lscala/collection/Iterator;
    .locals 2
    .param p0, "$this"    # Lscala/collection/convert/WrapAsScala;
    .param p1, "i"    # Ljava/util/Enumeration;

    .prologue
    .line 51
    instance-of v0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    .end local p1    # "i":Ljava/util/Enumeration;
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 52
    .restart local p1    # "i":Ljava/util/Enumeration;
    :cond_0
    new-instance v0, Lscala/collection/convert/Wrappers$JEnumerationWrapper;

    sget-object v1, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JEnumerationWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Enumeration;)V

    goto :goto_0
.end method

.method public static propertiesAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Properties;)Lscala/collection/mutable/Map;
    .locals 2
    .param p0, "$this"    # Lscala/collection/convert/WrapAsScala;
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 197
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    sget-object v1, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    .line 196
    return-object v0
.end method
