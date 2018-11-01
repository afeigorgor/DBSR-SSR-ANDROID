.class public final Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$1;
.super Ljava/lang/Object;
.source "DropDownPreference.scala"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/preferences/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/preferences/DropDownPreference;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/preferences/DropDownPreference;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/preferences/DropDownPreference;

    .prologue
    .line 35
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$onPreferenceClick$body$1(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
