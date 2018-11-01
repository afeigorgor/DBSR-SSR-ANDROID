.class public final Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;
.super Lscala/runtime/AbstractPartialFunction;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction",
        "<",
        "Lscala/Tuple2",
        "<",
        "Lcom/github/shadowsocks/database/Profile;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/TaskerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/TaskerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/TaskerActivity;

    .prologue
    .line 118
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;

    .prologue
    .line 118
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;->applyOrElse(Lscala/Tuple2;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final applyOrElse(Lscala/Tuple2;Lscala/Function1;)Ljava/lang/Object;
    .locals 4
    .param p1, "x1"    # Lscala/Tuple2;
    .param p2, "default"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Lscala/Tuple2",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1",
            "<TA1;TB1;>;)TB1;"
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .local v1, "profile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    .local v0, "i":I
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v2

    iget-object v3, p0, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    invoke-virtual {v3}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    .end local v0    # "i":I
    .end local v1    # "profile":Lcom/github/shadowsocks/database/Profile;
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;->isDefinedAt(Lscala/Tuple2;)Z

    move-result v0

    return v0
.end method

.method public final isDefinedAt(Lscala/Tuple2;)Z
    .locals 3
    .param p1, "x1"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .local v0, "profile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    iget-object v2, p0, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 118
    .end local v0    # "profile":Lcom/github/shadowsocks/database/Profile;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
