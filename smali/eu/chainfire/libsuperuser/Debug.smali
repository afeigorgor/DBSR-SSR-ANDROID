.class public Leu/chainfire/libsuperuser/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Debug$OnLogListener;
    }
.end annotation


# static fields
.field private static debug:Z

.field private static logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

.field private static logTypes:I

.field private static sanityChecks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    .line 68
    const v0, 0xffff

    sput v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    .line 70
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Leu/chainfire/libsuperuser/Debug;->sanityChecks:Z

    return-void
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    return v0
.end method

.method public static getSanityChecksEnabled()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->sanityChecks:Z

    return v0
.end method

.method public static getSanityChecksEnabledEffective()Z
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x1

    const-string v1, "G"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static logCommand(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x2

    const-string v1, "C"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static logCommon(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "typeIndicator"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    if-eqz v0, :cond_0

    sget v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    .line 84
    sget-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    invoke-interface {v0, p0, p1, p2}, Leu/chainfire/libsuperuser/Debug$OnLogListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "libsuperuser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[libsuperuser]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static logOutput(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x4

    const-string v1, "O"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static onMainThread()Z
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
