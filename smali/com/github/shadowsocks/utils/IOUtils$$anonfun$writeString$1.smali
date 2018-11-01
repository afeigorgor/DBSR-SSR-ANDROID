.class public final Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;
.super Lscala/runtime/AbstractFunction0;
.source "IOUtils.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/IOUtils$;->writeString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/io/FileWriter;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final file$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "file$1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;->file$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/FileWriter;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;->file$1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;->apply()Ljava/io/FileWriter;

    move-result-object v0

    return-object v0
.end method
