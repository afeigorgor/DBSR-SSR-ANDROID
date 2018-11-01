.class public Lcom/github/shadowsocks/BaseService$KcpcliParseException;
.super Ljava/lang/Exception;
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
    name = "KcpcliParseException"
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/BaseService;

.field private final cause:Ljava/lang/Throwable;


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v0, p1, Lcom/github/shadowsocks/BaseService$KcpcliParseException;

    return v0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public synthetic com$github$shadowsocks$BaseService$KcpcliParseException$$$outer()Lcom/github/shadowsocks/BaseService;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->$outer:Lcom/github/shadowsocks/BaseService;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/github/shadowsocks/BaseService$KcpcliParseException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/github/shadowsocks/BaseService$KcpcliParseException;

    invoke-virtual {v0}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->com$github$shadowsocks$BaseService$KcpcliParseException$$$outer()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->com$github$shadowsocks$BaseService$KcpcliParseException$$$outer()Lcom/github/shadowsocks/BaseService;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    check-cast p1, Lcom/github/shadowsocks/BaseService$KcpcliParseException;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->cause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_2
    return v0

    .restart local p1    # "x$1":Ljava/lang/Object;
    :cond_2
    move v0, v1

    goto :goto_0

    .end local p1    # "x$1":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1, p0}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic productElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->productElement(I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public productElement(I)Ljava/lang/Throwable;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->cause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "KcpcliParseException"

    return-object v0
.end method
