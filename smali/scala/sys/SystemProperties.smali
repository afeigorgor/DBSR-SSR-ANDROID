.class public Lscala/sys/SystemProperties;
.super Lscala/collection/mutable/AbstractMap;
.source "SystemProperties.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->$minus$eq(Ljava/lang/String;)Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public $minus$eq(Ljava/lang/String;)Lscala/sys/SystemProperties;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;

    invoke-direct {v0, p0, p1}, Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;-><init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/sys/SystemProperties;->wrapAccess(Lscala/Function0;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->$plus$eq(Lscala/Tuple2;)Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->$plus$eq(Lscala/Tuple2;)Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->$plus$eq(Lscala/Tuple2;)Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/sys/SystemProperties;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/sys/SystemProperties;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;

    invoke-direct {v0, p0, p1}, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;-><init>(Lscala/sys/SystemProperties;Lscala/Tuple2;)V

    invoke-virtual {p0, v0}, Lscala/sys/SystemProperties;->wrapAccess(Lscala/Function0;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lscala/sys/SystemProperties$$anonfun$contains$1;

    invoke-direct {v0, p0, p1}, Lscala/sys/SystemProperties$$anonfun$contains$1;-><init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/sys/SystemProperties;->wrapAccess(Lscala/Function0;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public default(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/sys/SystemProperties;->empty()Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/sys/SystemProperties;->empty()Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/sys/SystemProperties;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lscala/sys/SystemProperties;

    invoke-direct {v0}, Lscala/sys/SystemProperties;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/sys/SystemProperties;->get(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lscala/sys/SystemProperties$$anonfun$get$1;

    invoke-direct {v0, p0, p1}, Lscala/sys/SystemProperties$$anonfun$get$1;-><init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/sys/SystemProperties;->wrapAccess(Lscala/Function0;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    check-cast v0, Lscala/Option;

    goto :goto_0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lscala/sys/SystemProperties$$anonfun$iterator$1;

    invoke-direct {v0, p0}, Lscala/sys/SystemProperties$$anonfun$iterator$1;-><init>(Lscala/sys/SystemProperties;)V

    invoke-virtual {p0, v0}, Lscala/sys/SystemProperties;->wrapAccess(Lscala/Function0;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    :goto_0
    check-cast v0, Lscala/collection/Iterator;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic scala$sys$SystemProperties$$super$contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public wrapAccess(Lscala/Function0;)Lscala/Option;
    .locals 2
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TT;>;)",
            "Lscala/Option",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lscala/Some;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method
