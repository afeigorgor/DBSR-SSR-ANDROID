.class public Lscala/collection/immutable/Set$Set1;
.super Lscala/collection/AbstractSet;
.source "Set.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/immutable/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Set1"
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


# instance fields
.field private final elem1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "elem1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

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
    .line 81
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "elem":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->empty()Lscala/collection/immutable/Set;

    move-result-object p0

    .end local p0    # "this":Lscala/collection/immutable/Set$Set1;
    :cond_0
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/Set$Set1;
    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set1;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/Set$Set1;
    :goto_0
    return-object p0

    .line 87
    .restart local p0    # "this":Lscala/collection/immutable/Set$Set1;
    :cond_0
    new-instance v0, Lscala/collection/immutable/Set$Set2;

    iget-object v1, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/Set$Set2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set1;->apply(Ljava/lang/Object;)Z

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
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    move v2, v0

    .end local p1    # "elem":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    return v0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .end local p1    # "elem":Ljava/lang/Object;
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
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
    .line 97
    iget-object v0, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 100
    iget-object v0, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public foreach(Lscala/Function1;)V
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
    .line 94
    iget-object v0, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lscala/collection/immutable/Set$Set1;->elem1:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->seq()Lscala/collection/immutable/Set;

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
    .line 81
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set1;->thisCollection()Lscala/collection/Iterable;

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
    .line 108
    return-object p0
.end method
