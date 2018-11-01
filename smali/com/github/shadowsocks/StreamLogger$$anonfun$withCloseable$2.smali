.class public final Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;
.super Lscala/runtime/AbstractFunction0;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final f$1:Lscala/Function1;

.field private final t$1:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/StreamLogger;Ljava/io/Closeable;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/StreamLogger;
    .param p2, "t$1"    # Ljava/io/Closeable;
    .param p3, "f$1"    # Lscala/Function1;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;->t$1:Ljava/io/Closeable;

    iput-object p3, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;->f$1:Lscala/Function1;

    iget-object v1, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$withCloseable$2;->t$1:Ljava/io/Closeable;

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
