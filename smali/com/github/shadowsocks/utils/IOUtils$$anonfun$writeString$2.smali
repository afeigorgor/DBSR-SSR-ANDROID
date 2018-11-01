.class public final Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;
.super Lscala/runtime/AbstractFunction1;
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
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/FileWriter;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final content$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content$1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;->content$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/io/FileWriter;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;->apply(Ljava/io/FileWriter;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/io/FileWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/FileWriter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;->content$1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    return-void
.end method
