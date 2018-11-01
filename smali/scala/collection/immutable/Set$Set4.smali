.class public Lscala/collection/immutable/Set$Set4;
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
    name = "Set4"
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

.field private final elem2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final elem3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final elem4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "elem1"    # Ljava/lang/Object;
    .param p2, "elem2"    # Ljava/lang/Object;
    .param p3, "elem3"    # Ljava/lang/Object;
    .param p4, "elem4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;TA;TA;)V"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

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
    .line 184
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set4;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 4
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Lscala/collection/immutable/Set$Set3;

    iget-object v1, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Set$Set3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    .end local p0    # "this":Lscala/collection/immutable/Set$Set4;
    .end local p1    # "elem":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/Set$Set4;
    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 193
    :cond_5
    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    if-ne p1, v3, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    new-instance v0, Lscala/collection/immutable/Set$Set3;

    iget-object v1, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Set$Set3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 194
    :cond_a
    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    if-ne p1, v3, :cond_b

    move v0, v1

    :goto_3
    if-eqz v0, :cond_f

    new-instance v0, Lscala/collection/immutable/Set$Set3;

    iget-object v1, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Set$Set3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :cond_b
    if-nez p1, :cond_c

    move v0, v2

    goto :goto_3

    :cond_c
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_d
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_e
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 195
    :cond_f
    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    if-ne p1, v0, :cond_10

    move v0, v1

    .end local p1    # "elem":Ljava/lang/Object;
    :goto_4
    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/immutable/Set$Set3;

    iget-object v1, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Set$Set3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto/16 :goto_1

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_10
    if-nez p1, :cond_11

    move v0, v2

    goto :goto_4

    :cond_11
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_12
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_13

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set4;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 7
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set4;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/Set$Set4;
    :goto_0
    return-object p0

    .line 190
    .restart local p0    # "this":Lscala/collection/immutable/Set$Set4;
    :cond_0
    new-instance v0, Lscala/collection/immutable/HashSet;

    invoke-direct {v0}, Lscala/collection/immutable/HashSet;-><init>()V

    iget-object v1, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/immutable/HashSet;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$Set4;->apply(Ljava/lang/Object;)Z

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
    .line 184
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    if-ne p1, v3, :cond_5

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    iget-object v3, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    if-ne p1, v3, :cond_9

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    move v0, v2

    .end local p1    # "elem":Ljava/lang/Object;
    :goto_3
    if-eqz v0, :cond_11

    :cond_0
    move v0, v2

    :goto_4
    return v0

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_9
    if-nez p1, :cond_a

    move v0, v1

    goto :goto_2

    :cond_a
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_b
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_d
    if-nez p1, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_f

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_f
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_10

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "elem":Ljava/lang/Object;
    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    .end local p1    # "elem":Ljava/lang/Object;
    :cond_11
    move v0, v1

    goto/16 :goto_4
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->empty()Lscala/collection/GenSet;

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
    .line 203
    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    .line 206
    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 200
    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

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
    .line 198
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lscala/collection/immutable/Set$Set4;->elem1:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lscala/collection/immutable/Set$Set4;->elem2:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lscala/collection/immutable/Set$Set4;->elem3:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lscala/collection/immutable/Set$Set4;->elem4:Ljava/lang/Object;

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
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->seq()Lscala/collection/immutable/Set;

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
    .line 184
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lscala/collection/immutable/Set$Set4;->thisCollection()Lscala/collection/Iterable;

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
    .line 217
    return-object p0
.end method
