.class public abstract Lscala/collection/generic/IndexedSeqFactory;
.super Lscala/collection/generic/SeqFactory;
.source "IndexedSeqFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/IndexedSeq",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/SeqFactory",
        "<TCC;>;"
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
    .line 19
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory",
            "<TCC;>.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method
