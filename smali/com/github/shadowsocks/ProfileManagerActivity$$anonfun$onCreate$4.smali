.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/collection/Iterator",
        "<",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 500
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 500
    check-cast p1, Lscala/collection/Iterator;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;->apply(Lscala/collection/Iterator;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lscala/collection/Iterator;)V
    .locals 1
    .param p1, "actions"    # Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->undo(Lscala/collection/Iterator;)V

    return-void
.end method
