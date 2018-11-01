.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;

.field private final result$1:Lscala/runtime/ObjectRef;

.field private final success$1:Lscala/runtime/BooleanRef;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;
    .param p2, "result$1"    # Lscala/runtime/ObjectRef;
    .param p3, "success$1"    # Lscala/runtime/BooleanRef;

    .prologue
    .line 314
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;

    iput-object p2, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->result$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->success$1:Lscala/runtime/BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;

    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->result$1:Lscala/runtime/ObjectRef;

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;->success$1:Lscala/runtime/BooleanRef;

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->com$github$shadowsocks$Shadowsocks$$anonfun$$anonfun$$run$body$8(Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;)V

    return-void
.end method
