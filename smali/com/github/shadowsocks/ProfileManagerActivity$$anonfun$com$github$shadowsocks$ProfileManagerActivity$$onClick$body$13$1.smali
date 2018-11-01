.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 723
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 4

    .prologue
    .line 724
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$24;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$24;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/SSRSubManager;->getAllSSRSubs()Lscala/Option;

    move-result-object v1

    .line 728
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 729
    .local v0, "ssrsubs":Lscala/collection/immutable/List;
    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 785
    .end local v0    # "ssrsubs":Lscala/collection/immutable/List;
    :goto_0
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$25;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$25;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    .line 788
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v2, 0x7f090032

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public synthetic com$github$shadowsocks$ProfileManagerActivity$$anonfun$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    return-object v0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$3()V
    .locals 6

    .prologue
    .line 725
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$4()V
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
