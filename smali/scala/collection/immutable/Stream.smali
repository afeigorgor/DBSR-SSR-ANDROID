.class public abstract Lscala/collection/immutable/Stream;
.super Lscala/collection/AbstractSeq;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/LinearSeqOptimized;
.implements Lscala/collection/immutable/LinearSeq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/Stream$cons$;,
        Lscala/collection/immutable/Stream$Cons;,
        Lscala/collection/immutable/Stream$Empty$;,
        Lscala/collection/immutable/Stream$ConsWrapper;,
        Lscala/collection/immutable/Stream$StreamBuilder;,
        Lscala/collection/immutable/Stream$$hash$colon$colon$;,
        Lscala/collection/immutable/Stream$StreamCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/LinearSeqOptimized",
        "<TA;",
        "Lscala/collection/immutable/Stream",
        "<TA;>;>;",
        "Lscala/collection/immutable/LinearSeq",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    return-void
.end method


# virtual methods
.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$$plus$colon$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/Stream$$anonfun$$plus$colon$1;-><init>(Lscala/collection/immutable/Stream;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object v0

    .line 378
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .param p1, "that"    # Lscala/collection/GenTraversableOnce;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 372
    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$$plus$plus$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/GenTraversableOnce;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 6
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 735
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 813
    :goto_0
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 814
    :goto_1
    return-object p1

    .line 736
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 737
    move-object v0, p0

    .line 739
    .local v0, "cursor":Lscala/collection/immutable/Stream;
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 740
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/Stream;

    .line 741
    .local v3, "scout":Lscala/collection/immutable/Stream;
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 743
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_1

    .line 746
    :cond_1
    if-eq p0, v3, :cond_3

    .line 747
    move-object v0, v3

    .line 748
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 749
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    check-cast v3, Lscala/collection/immutable/Stream;

    .line 751
    .restart local v3    # "scout":Lscala/collection/immutable/Stream;
    :cond_2
    :goto_2
    if-eq v0, v3, :cond_3

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 752
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 754
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .line 755
    .restart local v0    # "cursor":Lscala/collection/immutable/Stream;
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    check-cast v3, Lscala/collection/immutable/Stream;

    .line 756
    .restart local v3    # "scout":Lscala/collection/immutable/Stream;
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    check-cast v3, Lscala/collection/immutable/Stream;

    .restart local v3    # "scout":Lscala/collection/immutable/Stream;
    goto :goto_2

    .line 760
    :cond_3
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 780
    move-object v2, p0

    .line 781
    .local v2, "runner":Lscala/collection/immutable/Stream;
    const/4 v1, 0x0

    .line 782
    .local v1, "k":I
    :goto_3
    if-eq v2, v3, :cond_4

    .line 783
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "runner":Lscala/collection/immutable/Stream;
    check-cast v2, Lscala/collection/immutable/Stream;

    .line 784
    .restart local v2    # "runner":Lscala/collection/immutable/Stream;
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    check-cast v3, Lscala/collection/immutable/Stream;

    .line 785
    .restart local v3    # "scout":Lscala/collection/immutable/Stream;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 792
    :cond_4
    if-ne v0, v3, :cond_5

    if-lez v1, :cond_5

    .line 793
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 795
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .line 797
    .restart local v0    # "cursor":Lscala/collection/immutable/Stream;
    :cond_5
    :goto_4
    if-eq v0, v3, :cond_6

    .line 798
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 800
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .restart local v0    # "cursor":Lscala/collection/immutable/Stream;
    goto :goto_4

    .line 770
    :cond_6
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 807
    .end local v1    # "k":I
    .end local v2    # "runner":Lscala/collection/immutable/Stream;
    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    :goto_5
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 761
    .restart local v3    # "scout":Lscala/collection/immutable/Stream;
    :cond_7
    :goto_6
    if-eq v0, v3, :cond_8

    .line 762
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 764
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .restart local v0    # "cursor":Lscala/collection/immutable/Stream;
    goto :goto_6

    .line 766
    :cond_8
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 767
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    goto :goto_5

    .line 766
    :cond_9
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_5

    .line 739
    .end local v3    # "scout":Lscala/collection/immutable/Stream;
    :cond_a
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_5

    .line 809
    :cond_b
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 810
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto/16 :goto_0

    .line 809
    :cond_c
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto/16 :goto_0
.end method

.method public append(Lscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "rest"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<",
            "Lscala/collection/TraversableOnce",
            "<TB;>;>;)",
            "Lscala/collection/immutable/Stream",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$append$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$append$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function0;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->apply(I)Ljava/lang/Object;

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
            "Lscala/collection/immutable/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

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
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
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
    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic distinct()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->distinct()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 990
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    invoke-virtual {p0, v0, p0}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final drop(I)Lscala/collection/immutable/Stream;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 857
    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    return-object p0

    .line 858
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lscala/collection/immutable/Stream;
    check-cast p0, Lscala/collection/immutable/Stream;

    add-int/lit8 p1, p1, -0x1

    .restart local p0    # "this":Lscala/collection/immutable/Stream;
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
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->filter(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .line 519
    .local v0, "rest":Lscala/collection/immutable/Stream;
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v1, v0, p1}, Lscala/collection/immutable/Stream$;->filteredTail(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream$Cons;

    move-result-object v1

    .line 515
    :goto_1
    return-object v1

    .line 522
    :cond_1
    sget-object v1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "rest":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .restart local v0    # "rest":Lscala/collection/immutable/Stream;
    goto :goto_0
.end method

.method public final foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
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
    .line 609
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    return-object p1

    .line 610
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p0    # "this":Lscala/collection/immutable/Stream;
    .local v0, "this":Lscala/collection/immutable/Stream;
    move-object p0, v0

    .end local v0    # "this":Lscala/collection/immutable/Stream;
    .restart local p0    # "this":Lscala/collection/immutable/Stream;
    goto :goto_0
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
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public force()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "these":Lscala/collection/immutable/Stream;
    move-object v1, p0

    .line 269
    .local v1, "those":Lscala/collection/immutable/Stream;
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "these":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .line 270
    .restart local v0    # "these":Lscala/collection/immutable/Stream;
    :cond_0
    :goto_0
    if-eq v1, v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    :cond_1
    return-object p0

    .line 272
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "these":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .line 273
    .restart local v0    # "these":Lscala/collection/immutable/Stream;
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "these":Lscala/collection/immutable/Stream;
    check-cast v0, Lscala/collection/immutable/Stream;

    .line 275
    .restart local v0    # "these":Lscala/collection/immutable/Stream;
    if-eq v0, v1, :cond_1

    .line 276
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "those":Lscala/collection/immutable/Stream;
    check-cast v1, Lscala/collection/immutable/Stream;

    .restart local v1    # "those":Lscala/collection/immutable/Stream;
    goto :goto_0
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 1
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
    .line 593
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 594
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lscala/collection/immutable/Stream;
    check-cast p0, Lscala/collection/immutable/Stream;

    .restart local p0    # "this":Lscala/collection/immutable/Stream;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

    move-result v0

    return v0
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
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
    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(I)Z
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 202
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public abstract isEmpty()Z
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
    .line 578
    new-instance v0, Lscala/collection/immutable/StreamIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StreamIterator;-><init>(Lscala/collection/immutable/Stream;)V

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
    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 3

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "len":I
    move-object v0, p0

    .line 310
    .end local v1    # "len":I
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    return v1

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 312
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    move-object v0, v2

    goto :goto_0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

    move-result v0

    return v0
.end method

.method public final map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    .line 416
    :goto_0
    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$map$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$map$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    const-string v0, ""

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lscala/collection/immutable/Stream;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->force()Lscala/collection/immutable/Stream;

    .line 821
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Lscala/Function2;
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
    .line 621
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "empty.reduceLeft"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    .line 624
    .local v1, "reducedRes":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    .line 625
    .end local v1    # "reducedRes":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    return-object v1

    .line 626
    :cond_1
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 627
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->reverse()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/immutable/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1049
    sget-object v3, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    invoke-static {v3}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 1050
    .local v1, "result":Lscala/runtime/ObjectRef;
    move-object v2, p0

    .line 1051
    :goto_0
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    iget-object v3, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    return-object v3

    .line 1052
    :cond_0
    sget-object v3, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v3, Lscala/collection/immutable/Stream$$anonfun$2;

    invoke-direct {v3, p0, v1}, Lscala/collection/immutable/Stream$$anonfun$2;-><init>(Lscala/collection/immutable/Stream;Lscala/runtime/ObjectRef;)V

    new-instance v4, Lscala/collection/immutable/Stream$ConsWrapper;

    invoke-direct {v4, v3}, Lscala/collection/immutable/Stream$ConsWrapper;-><init>(Lscala/Function0;)V

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lscala/collection/immutable/Stream$ConsWrapper;->$hash$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 1053
    .local v0, "r":Lscala/collection/immutable/Stream;
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    .line 1054
    iput-object v0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 1055
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/Stream;

    move-object v2, v3

    goto :goto_0
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
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 202
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public final scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;
    .locals 2
    .param p1, "seen"    # Lscala/collection/immutable/Set;
    .param p2, "rest"    # Lscala/collection/immutable/Stream;

    .prologue
    .line 986
    :goto_0
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    .end local p2    # "rest":Lscala/collection/immutable/Stream;
    :goto_1
    return-object p2

    .line 987
    .restart local p2    # "rest":Lscala/collection/immutable/Stream;
    :cond_0
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/immutable/Set;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "rest":Lscala/collection/immutable/Stream;
    check-cast p2, Lscala/collection/immutable/Stream;

    .restart local p2    # "rest":Lscala/collection/immutable/Stream;
    goto :goto_0

    .line 988
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    .end local p2    # "rest":Lscala/collection/immutable/Stream;
    invoke-direct {p2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_1
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
    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LinearSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream;->slice(II)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "from"    # I
    .param p2, "until"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 874
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    .line 875
    .local v0, "lo":I
    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v1

    .line 873
    :goto_0
    return-object v1

    .line 876
    :cond_1
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object v1

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object v1

    goto :goto_0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    const-string v0, "Stream"

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/immutable/Stream;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method

.method public abstract tailDefined()Z
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 851
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    return-object v0

    .line 852
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$take$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/Stream$$anonfun$take$1;-><init>(Lscala/collection/immutable/Stream;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 853
    :cond_2
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$take$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$take$2;-><init>(Lscala/collection/immutable/Stream;I)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 941
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object v0

    .line 942
    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 1
    .param p1, "repr"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lscala/collection/LinearSeqLike;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 326
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 823
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->stringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, ")"

    invoke-static {p0, v0, v1, v2}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_2

    .line 687
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenIterable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    .line 686
    :goto_0
    return-object v0

    .line 688
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenIterable;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$zip$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$zip$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/GenIterable;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 690
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 715
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream$;->from(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Stream;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
