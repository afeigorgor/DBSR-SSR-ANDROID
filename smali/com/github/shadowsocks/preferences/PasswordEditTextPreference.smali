.class public Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "PasswordEditTextPreference.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private mDefaultSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->mDefaultSummary_$eq(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method private mDefaultSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private mDefaultSummary_$eq(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->mDefaultSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference$$anonfun$setSummary$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference$$anonfun$setSummary$1;-><init>(Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2}, Lscala/Predef$;->fallbackStringCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/StringOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->mkString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
