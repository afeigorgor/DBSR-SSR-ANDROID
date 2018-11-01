.class public final Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;
.super Ljava/lang/Object;
.source "GuardedProcess.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/GuardedProcess;

.field private final ioException$1:Lscala/runtime/VolatileObjectRef;

.field private final onRestartCallback$1:Lscala/Function0;

.field private final semaphore$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/GuardedProcess;Lscala/Function0;Ljava/util/concurrent/Semaphore;Lscala/runtime/VolatileObjectRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/GuardedProcess;
    .param p2, "onRestartCallback$1"    # Lscala/Function0;
    .param p3, "semaphore$1"    # Ljava/util/concurrent/Semaphore;
    .param p4, "ioException$1"    # Lscala/runtime/VolatileObjectRef;

    .prologue
    .line 83
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->$outer:Lcom/github/shadowsocks/GuardedProcess;

    iput-object p2, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->onRestartCallback$1:Lscala/Function0;

    iput-object p3, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->semaphore$1:Ljava/util/concurrent/Semaphore;

    iput-object p4, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->ioException$1:Lscala/runtime/VolatileObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->$outer:Lcom/github/shadowsocks/GuardedProcess;

    iget-object v1, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->onRestartCallback$1:Lscala/Function0;

    iget-object v2, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->semaphore$1:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;->ioException$1:Lscala/runtime/VolatileObjectRef;

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->com$github$shadowsocks$GuardedProcess$$run$body$1(Lscala/Function0;Ljava/util/concurrent/Semaphore;Lscala/runtime/VolatileObjectRef;)V

    return-void
.end method
