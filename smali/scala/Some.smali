.class public final Lscala/Some;
.super Lscala/Option;
.source "Option.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/Option",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 333
    iput-object p1, p0, Lscala/Some;->x:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/Option;-><init>()V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 333
    instance-of v0, p1, Lscala/Some;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lscala/Some;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    check-cast p1, Lscala/Some;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    :goto_3
    return v0

    .restart local p1    # "x$1":Ljava/lang/Object;
    :cond_1
    move v0, v1

    goto :goto_0

    .end local p1    # "x$1":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/Some;->x()Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "Some"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lscala/Some;->x:Ljava/lang/Object;

    return-object v0
.end method
