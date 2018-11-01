.class public Lscala/collection/immutable/Set$EmptySet$;
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
    name = "EmptySet$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSet",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;",
        "Lscala/collection/immutable/Set",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Set$EmptySet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Set$EmptySet$;

    invoke-direct {v0}, Lscala/collection/immutable/Set$EmptySet$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    sput-object p0, Lscala/collection/immutable/Set$EmptySet$;->MODULE$:Lscala/collection/immutable/Set$EmptySet$;

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
    .line 68
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$EmptySet$;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 0
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    return-object p0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$EmptySet$;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lscala/collection/immutable/Set$Set1;

    invoke-direct {v0, p1}, Lscala/collection/immutable/Set$Set1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Set$EmptySet$;->apply(Ljava/lang/Object;)Z

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
    .line 68
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
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
            "<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
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
    .line 73
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/Set$EmptySet$;->thisCollection()Lscala/collection/Iterable;

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
    .line 75
    return-object p0
.end method
