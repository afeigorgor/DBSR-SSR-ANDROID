.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->undo(Lscala/collection/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    .prologue
    .line 354
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 354
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;->apply(Lscala/Tuple2;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 6
    .param p1, "x$10"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    .local v0, "index":I
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 355
    .local v1, "item":Lcom/github/shadowsocks/database/Profile;
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v3

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/shadowsocks/database/Profile;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lscala/collection/mutable/ArrayBuffer;->insert(ILscala/collection/Seq;)V

    .line 356
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-virtual {v2, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->notifyItemInserted(I)V

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 354
    return-void

    .end local v0    # "index":I
    .end local v1    # "item":Lcom/github/shadowsocks/database/Profile;
    :cond_0
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
