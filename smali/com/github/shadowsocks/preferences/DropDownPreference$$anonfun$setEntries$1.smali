.class public final Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;
.super Lscala/runtime/AbstractFunction1;
.source "DropDownPreference.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/preferences/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/CharSequence;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/preferences/DropDownPreference;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/preferences/DropDownPreference;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/preferences/DropDownPreference;

    .prologue
    .line 59
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;->apply(Ljava/lang/CharSequence;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/DropDownPreference$$anonfun$setEntries$1;->$outer:Lcom/github/shadowsocks/preferences/DropDownPreference;

    invoke-virtual {v0}, Lcom/github/shadowsocks/preferences/DropDownPreference;->com$github$shadowsocks$preferences$DropDownPreference$$mAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method
