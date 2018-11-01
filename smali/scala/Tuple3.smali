.class public Lscala/Tuple3;
.super Ljava/lang/Object;
.source "Tuple3.scala"

# interfaces
.implements Lscala/Product3;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Product3",
        "<TT1;TT2;TT3;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final _1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field private final _2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field

.field private final _3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "_1"    # Ljava/lang/Object;
    .param p2, "_2"    # Ljava/lang/Object;
    .param p3, "_3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lscala/Tuple3;->_1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/Tuple3;->_2:Ljava/lang/Object;

    iput-object p3, p0, Lscala/Tuple3;->_3:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    invoke-static {p0}, Lscala/Product3$class;->$init$(Lscala/Product3;)V

    return-void
.end method


# virtual methods
.method public _1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lscala/Tuple3;->_1:Ljava/lang/Object;

    return-object v0
.end method

.method public _2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lscala/Tuple3;->_2:Ljava/lang/Object;

    return-object v0
.end method

.method public _3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT3;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lscala/Tuple3;->_3:Ljava/lang/Object;

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v0, p1, Lscala/Tuple3;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lscala/Tuple3;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_f

    check-cast p1, Lscala/Tuple3;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_6

    move v0, v2

    :goto_2
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_a

    move v0, v2

    :goto_3
    if-eqz v0, :cond_e

    invoke-virtual {p1, p0}, Lscala/Tuple3;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_4
    if-eqz v0, :cond_f

    :cond_0
    move v0, v2

    :goto_5
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
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_9

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_a
    if-nez v0, :cond_b

    move v0, v1

    goto :goto_3

    :cond_b
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_c

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_c
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_d

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lscala/Product3$class;->productArity(Lscala/Product3;)I

    move-result v0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0, p1}, Lscala/Product3$class;->productElement(Lscala/Product3;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 21
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "Tuple3"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
