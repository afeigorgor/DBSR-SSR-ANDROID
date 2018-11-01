.class public Lcom/github/shadowsocks/BaseService$NullConnectionException;
.super Ljava/lang/NullPointerException;
.source "BaseService.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NullConnectionException"
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/BaseService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$NullConnectionException;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 71
    instance-of v0, p1, Lcom/github/shadowsocks/BaseService$NullConnectionException;

    return v0
.end method

.method public synthetic com$github$shadowsocks$BaseService$NullConnectionException$$$outer()Lcom/github/shadowsocks/BaseService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$NullConnectionException;->$outer:Lcom/github/shadowsocks/BaseService;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    instance-of v0, p1, Lcom/github/shadowsocks/BaseService$NullConnectionException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/github/shadowsocks/BaseService$NullConnectionException;

    invoke-virtual {v0}, Lcom/github/shadowsocks/BaseService$NullConnectionException;->com$github$shadowsocks$BaseService$NullConnectionException$$$outer()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$NullConnectionException;->com$github$shadowsocks$BaseService$NullConnectionException$$$outer()Lcom/github/shadowsocks/BaseService;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/github/shadowsocks/BaseService$NullConnectionException;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/github/shadowsocks/BaseService$NullConnectionException;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    .restart local p1    # "x$1":Ljava/lang/Object;
    :cond_0
    move v0, v2

    goto :goto_0

    .end local p1    # "x$1":Ljava/lang/Object;
    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic productElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/BaseService$NullConnectionException;->productElement(I)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public productElement(I)Lscala/runtime/Nothing$;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 71
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "NullConnectionException"

    return-object v0
.end method
