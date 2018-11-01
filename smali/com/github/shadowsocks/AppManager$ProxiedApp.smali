.class public Lcom/github/shadowsocks/AppManager$ProxiedApp;
.super Ljava/lang/Object;
.source "AppManager.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxiedApp"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 63
    instance-of v0, p1, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    check-cast p1, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .restart local p1    # "x$1":Ljava/lang/Object;
    :cond_3
    move v2, v0

    goto :goto_0

    .end local p1    # "x$1":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6

    if-nez v3, :cond_0

    :goto_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v2, :cond_7

    if-nez v3, :cond_0

    :goto_3
    invoke-virtual {p1, p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "ProxiedApp"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
