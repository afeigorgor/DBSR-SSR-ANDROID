.class public Lscala/collection/convert/Wrappers$IteratorWrapper;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TA;>;",
        "Ljava/util/Iterator",
        "<TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/convert/Wrappers;
    .param p2, "underlying"    # Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/Iterator",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p2, p0, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying:Lscala/collection/Iterator;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/convert/Wrappers$IteratorWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    invoke-virtual {v0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->scala$collection$convert$Wrappers$IteratorWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->scala$collection$convert$Wrappers$IteratorWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    check-cast p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

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
    invoke-virtual {p1, p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

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
    .line 29
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "IteratorWrapper"

    return-object v0
.end method

.method public remove()Lscala/runtime/Nothing$;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$IteratorWrapper;->remove()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public synthetic scala$collection$convert$Wrappers$IteratorWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lscala/collection/convert/Wrappers$IteratorWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying:Lscala/collection/Iterator;

    return-object v0
.end method
