.class public Lscala/collection/immutable/ListSet;
.super Lscala/collection/AbstractSet;
.source "ListSet.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/immutable/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/ListSet$Node;,
        Lscala/collection/immutable/ListSet$EmptyListSet$;,
        Lscala/collection/immutable/ListSet$ListSetBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSet",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/immutable/Set",
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
    .line 69
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 0
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 96
    return-object p0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 1
    .param p1, "elems"    # Lscala/collection/GenTraversableOnce;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListSet;
    .locals 2
    .param p1, "xs"    # Lscala/collection/GenTraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce",
            "<TA;>;)",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/ListSet;
    :goto_0
    return-object p0

    .line 106
    .restart local p0    # "this":Lscala/collection/immutable/ListSet;
    :cond_0
    new-instance v0, Lscala/collection/immutable/ListSet$ListSetBuilder;

    invoke-direct {v0, p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;-><init>(Lscala/collection/immutable/ListSet;)V

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListSet$ListSetBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListSet$ListSetBuilder;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->result()Lscala/collection/immutable/ListSet;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

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
            "Lscala/collection/immutable/ListSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Set has no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

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
    .line 117
    new-instance v0, Lscala/collection/immutable/ListSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/ListSet$$anon$1;-><init>(Lscala/collection/immutable/ListSet;)V

    return-object v0
.end method

.method public scala$collection$immutable$ListSet$$unchecked_$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method public scala$collection$immutable$ListSet$$unchecked_outer()Lscala/collection/immutable/ListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Empty ListSet has no outer pointer"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "ListSet"

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->tail()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/ListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Next of an empty set"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 0
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
    .line 183
    return-object p0
.end method
