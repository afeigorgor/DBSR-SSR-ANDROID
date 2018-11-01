.class public Lscala/StringContext;
.super Ljava/lang/Object;
.source "StringContext.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/StringContext$InvalidEscapeException;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final parts:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 0
    .param p1, "parts"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lscala/StringContext;->parts:Lscala/collection/Seq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v0, p1, Lscala/StringContext;

    return v0
.end method

.method public checkLengths(Lscala/collection/Seq;)V
    .locals 3
    .param p1, "args"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lscala/StringContext;->parts()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->length()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 65
    const-string v2, "wrong number of arguments ("

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    .line 66
    const-string v2, ") for interpolated string with "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscala/StringContext;->parts()Lscala/collection/Seq;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/Seq;->length()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " parts"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lscala/StringContext;

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    check-cast p1, Lscala/StringContext;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/StringContext;->parts()Lscala/collection/Seq;

    move-result-object v2

    invoke-virtual {p1}, Lscala/StringContext;->parts()Lscala/collection/Seq;

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
    invoke-virtual {p1, p0}, Lscala/StringContext;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public parts()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lscala/StringContext;->parts:Lscala/collection/Seq;

    return-object v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/StringContext;->parts()Lscala/collection/Seq;

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
    .line 54
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "StringContext"

    return-object v0
.end method

.method public s(Lscala/collection/Seq;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lscala/StringContext$$anonfun$s$1;

    invoke-direct {v0, p0}, Lscala/StringContext$$anonfun$s$1;-><init>(Lscala/StringContext;)V

    invoke-virtual {p0, v0, p1}, Lscala/StringContext;->standardInterpolator(Lscala/Function1;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public standardInterpolator(Lscala/Function1;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 4
    .param p1, "process"    # Lscala/Function1;
    .param p2, "args"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p2}, Lscala/StringContext;->checkLengths(Lscala/collection/Seq;)V

    .line 121
    invoke-virtual {p0}, Lscala/StringContext;->parts()Lscala/collection/Seq;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    .line 122
    .local v2, "pi":Lscala/collection/Iterator;
    invoke-interface {p2}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 123
    .local v0, "ai":Lscala/collection/Iterator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "bldr":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
