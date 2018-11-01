.class public Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "SummaryEditTextPreference.scala"


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
    .line 51
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->mDefaultSummary_$eq(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method private mDefaultSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private mDefaultSummary_$eq(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->mDefaultSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
