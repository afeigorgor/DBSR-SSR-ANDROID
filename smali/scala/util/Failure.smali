.class public final Lscala/util/Failure;
.super Lscala/util/Try;
.source "Try.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/util/Try",
        "<TT;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lscala/util/Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Lscala/util/Try;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 198
    instance-of v0, p1, Lscala/util/Failure;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lscala/util/Failure;

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    check-cast p1, Lscala/util/Failure;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

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
    move v2, v1

    goto :goto_1
.end method

.method public exception()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lscala/util/Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

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
    .line 198
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "Failure"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
