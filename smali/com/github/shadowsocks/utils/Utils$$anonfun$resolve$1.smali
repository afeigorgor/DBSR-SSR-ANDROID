.class public final Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;
.super Lscala/runtime/AbstractFunction1;
.source "Utils.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;I)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lorg/xbill/DNS/Record;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final addrType$1:I

.field private final nonLocalReturnKey1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "addrType$1"    # I
    .param p2, "nonLocalReturnKey1$1"    # Ljava/lang/Object;

    .prologue
    .line 182
    iput p1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->addrType$1:I

    iput-object p2, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, Lorg/xbill/DNS/Record;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->apply(Lorg/xbill/DNS/Record;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply(Lorg/xbill/DNS/Record;)Lscala/runtime/Nothing$;
    .locals 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 183
    iget v0, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->addrType$1:I

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 187
    :sswitch_0
    new-instance v0, Lscala/runtime/NonLocalReturnControl;

    iget-object v1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    new-instance v2, Lscala/Some;

    check-cast p1, Lorg/xbill/DNS/AAAARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    .line 185
    .restart local p1    # "r":Lorg/xbill/DNS/Record;
    :sswitch_1
    new-instance v0, Lscala/runtime/NonLocalReturnControl;

    iget-object v1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    new-instance v2, Lscala/Some;

    check-cast p1, Lorg/xbill/DNS/ARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
