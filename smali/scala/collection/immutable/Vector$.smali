.class public final Lscala/collection/immutable/Vector$;
.super Lscala/collection/generic/IndexedSeqFactory;
.source "Vector.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/IndexedSeqFactory",
        "<",
        "Lscala/collection/immutable/Vector;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Vector$;


# instance fields
.field private final NIL:Lscala/collection/immutable/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Vector",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Vector$;

    invoke-direct {v0}, Lscala/collection/immutable/Vector$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lscala/collection/generic/IndexedSeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    .line 25
    new-instance v0, Lscala/collection/immutable/Vector;

    invoke-direct {v0, v1, v1, v1}, Lscala/collection/immutable/Vector;-><init>(III)V

    iput-object v0, p0, Lscala/collection/immutable/Vector$;->NIL:Lscala/collection/immutable/Vector;

    return-void
.end method


# virtual methods
.method public NIL()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lscala/collection/immutable/Vector$;->NIL:Lscala/collection/immutable/Vector;

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
            "Lscala/collection/immutable/Vector",
            "<*>;TA;",
            "Lscala/collection/immutable/Vector",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lscala/collection/immutable/Vector$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lscala/collection/immutable/Vector$;->NIL()Lscala/collection/immutable/Vector;

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
            "Lscala/collection/immutable/Vector",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lscala/collection/immutable/VectorBuilder;

    invoke-direct {v0}, Lscala/collection/immutable/VectorBuilder;-><init>()V

    return-object v0
.end method
