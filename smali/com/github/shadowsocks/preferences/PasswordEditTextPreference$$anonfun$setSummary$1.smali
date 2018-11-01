.class public final Lcom/github/shadowsocks/preferences/PasswordEditTextPreference$$anonfun$setSummary$1;
.super Lscala/runtime/AbstractFunction1;
.source "PasswordEditTextPreference.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;

    .prologue
    .line 63
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference$$anonfun$setSummary$1;->apply(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(C)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 63
    const-string v0, "*"

    return-object v0
.end method
