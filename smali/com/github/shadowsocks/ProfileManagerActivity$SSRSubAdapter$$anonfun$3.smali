.class public final Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter$$anonfun$3;
.super Lscala/runtime/AbstractFunction0;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Lscala/collection/immutable/List",
        "<",
        "Lcom/github/shadowsocks/database/SSRSub;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    .prologue
    .line 399
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter$$anonfun$3;->apply()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->empty()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method
