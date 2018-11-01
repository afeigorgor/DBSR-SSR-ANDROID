.class public final Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;
.super Lscala/runtime/AbstractFunction0;
.source "AclSyncJob.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/job/AclSyncJob;->onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final filename$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/job/AclSyncJob;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/job/AclSyncJob;
    .param p2, "filename$1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p2, p0, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;->filename$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/net/URL;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "https://raw.githubusercontent.com/shadowsocksr/shadowsocksr-android/nokcp/src/main/assets/acl/"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;->filename$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$1;->apply()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
