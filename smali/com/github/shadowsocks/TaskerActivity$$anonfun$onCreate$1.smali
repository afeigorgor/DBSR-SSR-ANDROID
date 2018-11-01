.class public final Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "TaskerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/TaskerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/TaskerActivity;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/TaskerActivity;

    .prologue
    .line 120
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$1;->apply$mcI$sp()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
