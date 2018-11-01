.class public final Lcom/github/shadowsocks/utils/TaskerSettings$;
.super Ljava/lang/Object;
.source "TaskerSettings.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;


# instance fields
.field private final com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID:Ljava/lang/String;

.field private final com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/TaskerSettings$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    .line 48
    const-string v0, "switch_on"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON:Ljava/lang/String;

    .line 49
    const-string v0, "profile_id"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON:Ljava/lang/String;

    return-object v0
.end method

.method public fromIntent(Landroid/content/Intent;)Lcom/github/shadowsocks/utils/TaskerSettings;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    new-instance v1, Lcom/github/shadowsocks/utils/TaskerSettings;

    const-string v0, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 51
    :goto_0
    invoke-direct {v1, v0}, Lcom/github/shadowsocks/utils/TaskerSettings;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 52
    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method
