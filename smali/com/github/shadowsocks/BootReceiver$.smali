.class public final Lcom/github/shadowsocks/BootReceiver$;
.super Ljava/lang/Object;
.source "BootReceiver.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/BootReceiver$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/BootReceiver$;

    invoke-direct {v0}, Lcom/github/shadowsocks/BootReceiver$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/BootReceiver$;->MODULE$:Lcom/github/shadowsocks/BootReceiver$;

    return-void
.end method


# virtual methods
.method public getEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/github/shadowsocks/BootReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/github/shadowsocks/BootReceiver;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    if-eqz p2, :cond_0

    move v0, v1

    .line 49
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
