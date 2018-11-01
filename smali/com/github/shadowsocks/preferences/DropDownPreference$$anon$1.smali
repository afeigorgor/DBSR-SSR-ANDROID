.class public final Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;
.super Ljava/lang/Object;
.source "DropDownPreference.scala"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 28
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v1, p3}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v1}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mSelectedIndex()I

    move-result v1

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    iget-object v2, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v1, v2, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->protected$callChangeListener(Lcom/github/shadowsocks/preferences/DropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anon$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v1, p3, v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$setValue(ILjava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method
