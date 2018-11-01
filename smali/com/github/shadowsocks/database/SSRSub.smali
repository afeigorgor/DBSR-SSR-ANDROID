.class public Lcom/github/shadowsocks/database/SSRSub;
.super Ljava/lang/Object;
.source "SSRSub.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url_group:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/shadowsocks/database/SSRSub;->id:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/SSRSub;->url:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/SSRSub;->url_group:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/github/shadowsocks/database/SSRSub;->id:I

    return v0
.end method

.method public id_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/github/shadowsocks/database/SSRSub;->id:I

    return-void
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/shadowsocks/database/SSRSub;->url:Ljava/lang/String;

    return-object v0
.end method

.method public url_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/github/shadowsocks/database/SSRSub;->url:Ljava/lang/String;

    return-void
.end method

.method public url_group()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/database/SSRSub;->url_group:Ljava/lang/String;

    return-object v0
.end method

.method public url_group_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/github/shadowsocks/database/SSRSub;->url_group:Ljava/lang/String;

    return-void
.end method
