.class public abstract Lscala/Product3$class;
.super Ljava/lang/Object;
.source "Product3.scala"


# direct methods
.method public static $init$(Lscala/Product3;)V
    .locals 0
    .param p0, "$this"    # Lscala/Product3;

    .prologue
    .line 20
    return-void
.end method

.method public static productArity(Lscala/Product3;)I
    .locals 1
    .param p0, "$this"    # Lscala/Product3;

    .prologue
    .line 24
    const/4 v0, 0x3

    return v0
.end method

.method public static productElement(Lscala/Product3;I)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/Product3;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    invoke-interface {p0}, Lscala/Product3;->_3()Ljava/lang/Object;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 38
    :pswitch_1
    invoke-interface {p0}, Lscala/Product3;->_2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-interface {p0}, Lscala/Product3;->_1()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
