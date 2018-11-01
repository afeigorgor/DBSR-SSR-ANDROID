.class public final Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$2;
.super Lscala/runtime/AbstractFunction1;
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
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/job/AclSyncJob;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/job/AclSyncJob;

    .prologue
    .line 37
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/job/AclSyncJob$$anonfun$onRunJob$2;->apply(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 37
    sget-object v0, Lcom/github/shadowsocks/utils/IOUtils$;->MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/utils/IOUtils$;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
