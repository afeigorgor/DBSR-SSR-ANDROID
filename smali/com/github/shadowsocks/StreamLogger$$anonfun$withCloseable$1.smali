.class public final Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "GuardedProcess.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/StreamLogger;->withCloseable(Ljava/io/Closeable;Lscala/Function1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final t$1:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/StreamLogger;Ljava/io/Closeable;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/StreamLogger;
    .param p2, "t$1"    # Ljava/io/Closeable;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;->t$1:Ljava/io/Closeable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$1;->t$1:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
