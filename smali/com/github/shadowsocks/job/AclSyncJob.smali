.class public Lcom/github/shadowsocks/job/AclSyncJob;
.super Lcom/evernote/android/job/Job;
.source "AclSyncJob.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final route:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/github/shadowsocks/job/AclSyncJob;->route:Ljava/lang/String;

    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .locals 6
    .param p1, "params"    # Lcom/evernote/android/job/Job$Params;

    .prologue
    .line 30
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/shadowsocks/job/AclSyncJob;->route:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, ".acl"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "filename":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/github/shadowsocks/job/AclSyncJob;->route:Ljava/lang/String;

    const-string v2, "self"

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    .line 35
    :goto_0
    sget-object v2, Lcom/github/shadowsocks/utils/IOUtils$;->MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    .line 37
    new-instance v4, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;

    invoke-direct {v4, p0, v0}, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;-><init>(Lcom/github/shadowsocks/job/AclSyncJob;Ljava/lang/String;)V

    new-instance v5, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$2;

    invoke-direct {v5, p0}, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$2;-><init>(Lcom/github/shadowsocks/job/AclSyncJob;)V

    invoke-virtual {v1, v4, v5}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v3, v1}, Lcom/github/shadowsocks/utils/IOUtils$;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    sget-object v1, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    .line 29
    :goto_1
    return-object v1

    .line 32
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v1, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    goto :goto_1

    .line 41
    :catch_1
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    sget-object v1, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    goto :goto_1
.end method
