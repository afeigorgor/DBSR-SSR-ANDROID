.class public final Lscala/collection/immutable/$colon$colon;
.super Lscala/collection/immutable/List;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/List",
        "<TB;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private tl:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V
    .locals 0
    .param p1, "head"    # Ljava/lang/Object;
    .param p2, "tl"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lscala/collection/immutable/List",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    iput-object p1, p0, Lscala/collection/immutable/$colon$colon;->head:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/$colon$colon;->tl:Lscala/collection/immutable/List;

    invoke-direct {p0}, Lscala/collection/immutable/List;-><init>()V

    return-void
.end method


# virtual methods
.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lscala/collection/immutable/$colon$colon;->head:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x2

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 439
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .line 439
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const-string v0, "::"

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lscala/collection/immutable/$colon$colon;->tail()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Lscala/collection/immutable/$colon$colon;->tl()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public tl()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lscala/collection/immutable/$colon$colon;->tl:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public tl$1()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lscala/collection/immutable/$colon$colon;->tl:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public tl_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    iput-object p1, p0, Lscala/collection/immutable/$colon$colon;->tl:Lscala/collection/immutable/List;

    return-void
.end method
