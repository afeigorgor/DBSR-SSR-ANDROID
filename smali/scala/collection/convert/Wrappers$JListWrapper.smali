.class public Lscala/collection/convert/Wrappers$JListWrapper;
.super Lscala/collection/mutable/AbstractBuffer;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer",
        "<TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/List;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/convert/Wrappers;
    .param p2, "underlying"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Ljava/util/List",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JListWrapper;->underlying:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/convert/Wrappers$JListWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JListWrapper;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JListWrapper",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JListWrapper;->$plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JListWrapper;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/convert/Wrappers$JListWrapper;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->clone()Lscala/collection/convert/Wrappers$JListWrapper;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/convert/Wrappers$JListWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$JListWrapper",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lscala/collection/convert/Wrappers$JListWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->scala$collection$convert$Wrappers$JListWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JListWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Buffer;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->clone()Lscala/collection/convert/Wrappers$JListWrapper;

    move-result-object v0

    return-object v0
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "elems"    # Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "ins":Ljava/util/List;
    invoke-interface {p2}, Lscala/collection/Traversable;->seq()Lscala/collection/Traversable;

    move-result-object v1

    new-instance v2, Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;-><init>(Lscala/collection/convert/Wrappers$JListWrapper;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

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
    .line 85
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "JListWrapper"

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JListWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JListWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public underlying()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JListWrapper;->underlying:Ljava/util/List;

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
