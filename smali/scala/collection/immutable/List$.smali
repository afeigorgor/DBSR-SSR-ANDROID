.class public final Lscala/collection/immutable/List$;
.super Lscala/collection/generic/SeqFactory;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory",
        "<",
        "Lscala/collection/immutable/List;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/List$;


# instance fields
.field private final partialNotApplied:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/List$;

    invoke-direct {v0}, Lscala/collection/immutable/List$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    .line 459
    new-instance v0, Lscala/collection/immutable/List$$anon$1;

    invoke-direct {v0}, Lscala/collection/immutable/List$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/collection/immutable/List$;->partialNotApplied:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1
    .param p1, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;
    .locals 1
    .param p1, "xs"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-interface {p1}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/List",
            "<*>;TA;",
            "Lscala/collection/immutable/List",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lscala/collection/immutable/List$;->empty()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

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
            "Lscala/collection/immutable/List",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    return-object v0
.end method
