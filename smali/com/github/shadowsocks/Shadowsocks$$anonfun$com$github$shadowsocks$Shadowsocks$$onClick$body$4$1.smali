.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;
.super Lscala/runtime/AbstractFunction0;
.source "Shadowsocks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$onClick$body$4(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks;

.field public final id$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks;I)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks;
    .param p2, "id$1"    # I

    .prologue
    .line 293
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    iput p2, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->id$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 292
    sget-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    .line 293
    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;)V

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoDisconnect(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    return-object v0
.end method
