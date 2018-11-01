.class public final Lscala/collection/mutable/ListBuffer;
.super Lscala/collection/mutable/AbstractBuffer;
.source "ListBuffer.scala"

# interfaces
.implements Ljava/io/Serializable;
.implements Lscala/collection/generic/SeqForwarder;
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer",
        "<TA;>;",
        "Ljava/io/Serializable;",
        "Lscala/collection/generic/SeqForwarder",
        "<TA;>;",
        "Lscala/collection/mutable/Builder",
        "<TA;",
        "Lscala/collection/immutable/List",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private exported:Z

.field private last0:Lscala/collection/immutable/$colon$colon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/$colon$colon",
            "<TA;>;"
        }
    .end annotation
.end field

.field private len:I

.field private scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->$init$(Lscala/collection/generic/TraversableForwarder;)V

    invoke-static {p0}, Lscala/collection/generic/IterableForwarder$class;->$init$(Lscala/collection/generic/IterableForwarder;)V

    invoke-static {p0}, Lscala/collection/generic/SeqForwarder$class;->$init$(Lscala/collection/generic/SeqForwarder;)V

    .line 65
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    iput-object v0, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    .line 67
    iput-boolean v1, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    .line 68
    iput v1, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return-void
.end method

.method private copy()V
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 420
    .local v0, "cursor":Lscala/collection/immutable/List;
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/$colon$colon;->tail()Lscala/collection/immutable/List;

    move-result-object v1

    .line 421
    .local v1, "limit":Lscala/collection/immutable/List;
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clear()V

    .line 422
    :goto_0
    if-eq v0, v1, :cond_0

    .line 423
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 424
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/List;
    check-cast v0, Lscala/collection/immutable/List;

    .restart local v0    # "cursor":Lscala/collection/immutable/List;
    goto :goto_0
.end method

.method private exported()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    return v0
.end method

.method private exported_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    return-void
.end method

.method private last0()Lscala/collection/immutable/$colon$colon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/$colon$colon",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lscala/collection/mutable/ListBuffer;->last0:Lscala/collection/immutable/$colon$colon;

    return-object v0
.end method

.method private last0_$eq(Lscala/collection/immutable/$colon$colon;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/immutable/$colon$colon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/$colon$colon",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer;->last0:Lscala/collection/immutable/$colon$colon;

    return-void
.end method

.method private len()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return v0
.end method

.method private len_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 68
    iput p1, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return-void
.end method

.method private reduceLengthBy(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    .line 256
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-gtz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 254
    :cond_0
    return-void
.end method

.method private scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    return-void
.end method


# virtual methods
.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->$div$colon(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, p1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 171
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 177
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    .line 178
    return-object p0

    .line 173
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v0

    .line 174
    .local v0, "last1":Lscala/collection/immutable/$colon$colon;
    new-instance v1, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, p1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 175
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    goto :goto_0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/mutable/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 182
    :goto_0
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ListBuffer;->take(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    check-cast p1, Lscala/collection/TraversableOnce;

    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ListBuffer;

    .line 181
    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/mutable/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 188
    :goto_0
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ListBuffer;->take(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    check-cast p1, Lscala/collection/TraversableOnce;

    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ListBuffer;

    .line 187
    return-object v0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/TraversableForwarder$class;->addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 126
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->apply(Lscala/collection/generic/SeqForwarder;I)Ljava/lang/Object;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ListBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 195
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->exported_$eq(Z)V

    .line 196
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clone()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Buffer;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clone()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/mutable/ListBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->contains(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/TraversableForwarder$class;->copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .param p1, "dest"    # Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->copyToBuffer(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenSeq;
    .param p2, "p"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq",
            "<TB;>;",
            "Lscala/Function2",
            "<TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->corresponds(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 429
    instance-of v0, p1, Lscala/collection/mutable/ListBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/ListBuffer;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->readOnly()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/ListBuffer;->readOnly()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    .line 430
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->exists(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->foldLeft(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forall(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->forall(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->foreach(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)V

    return-void
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->head(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 6
    .param p1, "n"    # I
    .param p2, "seq"    # Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 225
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 226
    :cond_2
    invoke-interface {p2}, Lscala/collection/Traversable;->toList()Lscala/collection/immutable/List;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v1

    .line 227
    .local v1, "elems":Lscala/collection/immutable/List;
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v4

    invoke-virtual {v1}, Lscala/collection/immutable/List;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    .line 228
    if-nez p1, :cond_4

    .line 229
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 230
    new-instance v3, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 231
    .local v3, "newElem":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 232
    :cond_3
    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 233
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "elems":Lscala/collection/immutable/List;
    check-cast v1, Lscala/collection/immutable/List;

    .restart local v1    # "elems":Lscala/collection/immutable/List;
    goto :goto_0

    .line 236
    .end local v3    # "newElem":Lscala/collection/immutable/$colon$colon;
    :cond_4
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 237
    .local v0, "cursor":Lscala/collection/immutable/List;
    const/4 v2, 0x1

    .line 238
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_7

    .line 239
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/List;
    check-cast v0, Lscala/collection/immutable/List;

    .line 240
    .restart local v0    # "cursor":Lscala/collection/immutable/List;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_5
    new-instance v3, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/List;

    invoke-direct {v3, v5, v4}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 244
    .restart local v3    # "newElem":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/SeqLike;

    invoke-interface {v4}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    :cond_6
    move-object v4, v0

    .line 245
    check-cast v4, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v4, v3}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 246
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "elems":Lscala/collection/immutable/List;
    check-cast v1, Lscala/collection/immutable/List;

    .line 242
    .end local v3    # "newElem":Lscala/collection/immutable/$colon$colon;
    .restart local v1    # "elems":Lscala/collection/immutable/List;
    :cond_7
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    .end local v0    # "cursor":Lscala/collection/immutable/List;
    .end local v2    # "i":I
    :cond_8
    return-void
.end method

.method public isDefinedAt(I)Z
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->isDefinedAt(Lscala/collection/generic/SeqForwarder;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ListBuffer;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->isEmpty(Lscala/collection/generic/TraversableForwarder;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lscala/collection/mutable/ListBuffer$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ListBuffer$$anon$1;-><init>(Lscala/collection/mutable/ListBuffer;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->last(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->lengthCompare(Lscala/collection/generic/SeqForwarder;I)I

    move-result v0

    return v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/collection/immutable/List",
            "<TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->nonEmpty(Lscala/collection/generic/TraversableForwarder;)Z

    move-result v0

    return v0
.end method

.method public prependToList(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 1
    .param p1, "xs"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List",
            "<TA;>;)",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "xs":Lscala/collection/immutable/List;
    :goto_0
    return-object p1

    .line 319
    .restart local p1    # "xs":Lscala/collection/immutable/List;
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 320
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 321
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0
.end method

.method public readOnly()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceLeft(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceLeftOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 336
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 337
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 338
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    .line 339
    .local v2, "old":Ljava/lang/Object;
    if-nez p1, :cond_3

    .line 340
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 352
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    .line 353
    return-object v2

    .line 342
    :cond_3
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 343
    .local v0, "cursor":Lscala/collection/immutable/List;
    const/4 v1, 0x1

    .line 344
    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_4

    .line 345
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/List;
    check-cast v0, Lscala/collection/immutable/List;

    .line 346
    .restart local v0    # "cursor":Lscala/collection/immutable/List;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 348
    :cond_4
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/IterableLike;

    invoke-interface {v3}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object v2

    .line 349
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v3, v0

    check-cast v3, Lscala/collection/immutable/$colon$colon;

    invoke-direct {p0, v3}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    :cond_5
    move-object v3, v0

    .line 350
    check-cast v3, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/TraversableLike;

    invoke-interface {v4}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/List;

    invoke-virtual {v3, v4}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    goto :goto_0
.end method

.method public remove(II)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 268
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v5

    if-lt p1, v5, :cond_0

    .line 295
    :goto_0
    return-void

    .line 270
    :cond_0
    if-gez p2, :cond_1

    .line 271
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Lscala/StringContext;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v9, "removing negative number ("

    aput-object v9, v5, v10

    const-string v9, ") of elements"

    aput-object v9, v5, v11

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v8, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-direct {v7, v5}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v7, v5}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 272
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    :cond_2
    sget-object v5, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 273
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p1, v10}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v4

    .local v4, "n1":I
    sget-object v5, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 274
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, p2, v6}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    .line 275
    .local v1, "count1":I
    if-nez v4, :cond_3

    .line 276
    move v0, v1

    .line 277
    .local v0, "c":I
    :goto_1
    if-lez v0, :cond_6

    .line 278
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/collection/immutable/List;

    invoke-direct {p0, v5}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 282
    .end local v0    # "c":I
    :cond_3
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v2

    .line 283
    .local v2, "cursor":Lscala/collection/immutable/List;
    const/4 v3, 0x1

    .line 284
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 285
    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cursor":Lscala/collection/immutable/List;
    check-cast v2, Lscala/collection/immutable/List;

    .line 286
    .restart local v2    # "cursor":Lscala/collection/immutable/List;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 288
    :cond_4
    move v0, v1

    .line 289
    .restart local v0    # "c":I
    :goto_3
    if-lez v0, :cond_6

    .line 290
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v5

    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_5

    move-object v5, v2

    check-cast v5, Lscala/collection/immutable/$colon$colon;

    invoke-direct {p0, v5}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    :cond_5
    move-object v5, v2

    .line 291
    check-cast v5, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/collection/TraversableLike;

    invoke-interface {v6}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/collection/immutable/List;

    invoke-virtual {v5, v6}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 292
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 295
    .end local v2    # "cursor":Lscala/collection/immutable/List;
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->result()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/SeqForwarder$class;->reverseIterator(Lscala/collection/generic/SeqForwarder;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/IterableForwarder$class;->sameElements(Lscala/collection/generic/IterableForwarder;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->segmentLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->length()I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .param p1, "coll"    # Lscala/collection/TraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .param p1, "coll"    # Lscala/collection/TraversableLike;
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "boundingColl"    # Lscala/collection/TraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const-string v0, "ListBuffer"

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p1, "num"    # Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->sum(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->toArray(Lscala/collection/generic/TraversableForwarder;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toBuffer(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->exported_$eq(Z)V

    .line 307
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<TA;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->toMap(Lscala/collection/generic/TraversableForwarder;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toSet(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toStream(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 141
    :cond_2
    if-nez p1, :cond_4

    .line 142
    new-instance v2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    invoke-direct {v2, p2, v3}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 143
    .local v2, "newElem":Lscala/collection/immutable/$colon$colon;
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 144
    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 146
    :cond_3
    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 137
    :goto_0
    return-void

    .line 148
    .end local v2    # "newElem":Lscala/collection/immutable/$colon$colon;
    :cond_4
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 149
    .local v0, "cursor":Lscala/collection/immutable/List;
    const/4 v1, 0x1

    .line 150
    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_5

    .line 151
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/List;
    check-cast v0, Lscala/collection/immutable/List;

    .line 152
    .restart local v0    # "cursor":Lscala/collection/immutable/List;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_5
    new-instance v2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/TraversableLike;

    invoke-interface {v3}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    invoke-direct {v2, p2, v3}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 155
    .restart local v2    # "newElem":Lscala/collection/immutable/$colon$colon;
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 156
    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 158
    :cond_6
    check-cast v0, Lscala/collection/immutable/$colon$colon;

    .end local v0    # "cursor":Lscala/collection/immutable/List;
    invoke-virtual {v0, v2}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    goto :goto_0
.end method
