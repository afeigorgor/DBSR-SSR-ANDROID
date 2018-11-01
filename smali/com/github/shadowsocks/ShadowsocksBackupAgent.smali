.class public Lcom/github/shadowsocks/ShadowsocksBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "ShadowsocksBackupAgent.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final DATABASE:Ljava/lang/String;

.field private final MY_PREFS_BACKUP_KEY:Ljava/lang/String;

.field private final PREFS_DISPLAY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 49
    const-string v0, "com.github.shadowsocks_preferences"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->PREFS_DISPLAY:Ljava/lang/String;

    .line 53
    const-string v0, "com.github.shadowsocks"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->MY_PREFS_BACKUP_KEY:Ljava/lang/String;

    .line 55
    const-string v0, "com.github.shadowsocks.database.profile"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->DATABASE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DATABASE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->DATABASE:Ljava/lang/String;

    return-object v0
.end method

.method public MY_PREFS_BACKUP_KEY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->MY_PREFS_BACKUP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public PREFS_DISPLAY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->PREFS_DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->PREFS_DISPLAY()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 59
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->MY_PREFS_BACKUP_KEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 60
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->DATABASE()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/backup/FileBackupHelper;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "../databases/profile.db"

    aput-object v4, v3, v5

    invoke-direct {v2, p0, v3}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method
