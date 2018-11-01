.class public final Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0;
.source "GuardedProcess.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;->apply(Ljava/io/BufferedReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final br$1:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;Ljava/io/BufferedReader;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;
    .param p2, "br$1"    # Ljava/io/BufferedReader;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;->br$1:Ljava/io/BufferedReader;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$1;->br$1:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
