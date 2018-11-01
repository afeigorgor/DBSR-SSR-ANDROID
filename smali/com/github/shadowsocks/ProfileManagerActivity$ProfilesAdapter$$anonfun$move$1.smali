.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->move(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

.field private final previousOrder$1:Lscala/runtime/LongRef;

.field private final step$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;ILscala/runtime/LongRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;
    .param p2, "step$1"    # I
    .param p3, "previousOrder$1"    # Lscala/runtime/LongRef;

    .prologue
    .line 336
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    iput p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->step$1:I

    iput-object p3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->previousOrder$1:Lscala/runtime/LongRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 336
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->apply(I)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->apply$mcZI$sp(I)Z

    move-result v0

    return v0
.end method

.method public apply$mcZI$sp(I)Z
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    iget v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->step$1:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 338
    .local v0, "next":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->userOrder()J

    move-result-wide v2

    .line 339
    .local v2, "order":J
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->previousOrder$1:Lscala/runtime/LongRef;

    iget-wide v4, v1, Lscala/runtime/LongRef;->elem:J

    invoke-virtual {v0, v4, v5}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 340
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->previousOrder$1:Lscala/runtime/LongRef;

    iput-wide v2, v1, Lscala/runtime/LongRef;->elem:J

    .line 341
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lscala/collection/mutable/ArrayBuffer;->update(ILjava/lang/Object;)V

    .line 342
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v1

    return v1
.end method
