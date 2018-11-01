.class public final Lscala/collection/immutable/Stream$;
.super Lscala/collection/generic/SeqFactory;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory",
        "<",
        "Lscala/collection/immutable/Stream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1
    .param p1, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/Stream;
    .locals 1
    .param p1, "xs"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1177
    invoke-interface {p1}, Lscala/collection/Seq;->toStream()Lscala/collection/immutable/Stream;

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
            "Lscala/collection/immutable/Stream",
            "<*>;TA;",
            "Lscala/collection/immutable/Stream",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 1150
    new-instance v0, Lscala/collection/immutable/Stream$StreamCanBuildFrom;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$StreamCanBuildFrom;-><init>()V

    return-object v0
.end method

.method public consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;
    .locals 1
    .param p1, "stream"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<",
            "Lscala/collection/immutable/Stream",
            "<TA;>;>;)",
            "Lscala/collection/immutable/Stream$ConsWrapper",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1197
    new-instance v0, Lscala/collection/immutable/Stream$ConsWrapper;

    invoke-direct {v0, p1}, Lscala/collection/immutable/Stream$ConsWrapper;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public continually(Lscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "elem"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TA;>;)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1279
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$continually$1;

    invoke-direct {v1, p1}, Lscala/collection/immutable/Stream$$anonfun$continually$1;-><init>(Lscala/Function0;)V

    new-instance v2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object v2
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .prologue
    .line 1138
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1174
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object v0
.end method

.method public filteredTail(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream$Cons;
    .locals 3
    .param p1, "stream"    # Lscala/collection/immutable/Stream;
    .param p2, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream$Cons",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1299
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance v2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object v2
.end method

.method public from(I)Lscala/collection/immutable/Stream;
    .locals 1
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/Stream$;->from(II)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public from(II)Lscala/collection/immutable/Stream;
    .locals 3
    .param p1, "start"    # I
    .param p2, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Stream",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$from$1;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$from$1;-><init>(II)V

    new-instance v2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object v2
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
            "Lscala/collection/immutable/Stream",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v0, Lscala/collection/immutable/Stream$StreamBuilder;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$StreamBuilder;-><init>()V

    return-object v0
.end method
