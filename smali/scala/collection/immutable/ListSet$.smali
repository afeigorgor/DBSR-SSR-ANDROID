.class public final Lscala/collection/immutable/ListSet$;
.super Lscala/collection/generic/ImmutableSetFactory;
.source "ListSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSetFactory",
        "<",
        "Lscala/collection/immutable/ListSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/ListSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/ListSet$;

    invoke-direct {v0}, Lscala/collection/immutable/ListSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    return-void
.end method


# virtual methods
.method public emptyInstance()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lscala/collection/immutable/ListSet$EmptyListSet$;->MODULE$:Lscala/collection/immutable/ListSet$EmptyListSet$;

    return-object v0
.end method

.method public bridge synthetic emptyInstance()Lscala/collection/immutable/Set;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$;->emptyInstance()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lscala/collection/immutable/ListSet$ListSetBuilder;

    invoke-direct {v0}, Lscala/collection/immutable/ListSet$ListSetBuilder;-><init>()V

    return-object v0
.end method
