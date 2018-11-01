.class public final Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;
.super Lscala/runtime/AbstractFunction1;
.source "GuardedProcess.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/StreamLogger;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/BufferedReader;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/StreamLogger;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/StreamLogger;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/StreamLogger;

    .prologue
    .line 60
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/StreamLogger;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;->apply(Ljava/io/BufferedReader;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/io/BufferedReader;)V
    .locals 2
    .param p1, "br"    # Ljava/io/BufferedReader;

    .prologue
    .line 60
    :try_start_0
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;Ljava/io/BufferedReader;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream$;->continually(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$2;-><init>(Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;-><init>(Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic com$github$shadowsocks$StreamLogger$$anonfun$$$outer()Lcom/github/shadowsocks/StreamLogger;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/StreamLogger;

    return-object v0
.end method
