.class public final Lscala/collection/immutable/HashMap$$anon$2;
.super Lscala/collection/immutable/HashMap$Merger;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/HashMap$Merger",
        "<TA1;TB1;>;"
    }
.end annotation


# instance fields
.field private final invert:Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashMap$Merger",
            "<TA1;TB1;>;"
        }
    .end annotation
.end field

.field public final mergef$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/Function2;)V
    .locals 1
    .param p1, "mergef$1"    # Lscala/Function2;

    .prologue
    .line 146
    iput-object p1, p0, Lscala/collection/immutable/HashMap$$anon$2;->mergef$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/collection/immutable/HashMap$Merger;-><init>()V

    .line 149
    new-instance v0, Lscala/collection/immutable/HashMap$$anon$2$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashMap$$anon$2$$anon$3;-><init>(Lscala/collection/immutable/HashMap$$anon$2;)V

    iput-object v0, p0, Lscala/collection/immutable/HashMap$$anon$2;->invert:Lscala/collection/immutable/HashMap$Merger;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;
    .locals 1
    .param p1, "kv1"    # Lscala/Tuple2;
    .param p2, "kv2"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA1;TB1;>;",
            "Lscala/Tuple2",
            "<TA1;TB1;>;)",
            "Lscala/Tuple2",
            "<TA1;TB1;>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lscala/collection/immutable/HashMap$$anon$2;->mergef$1:Lscala/Function2;

    invoke-interface {v0, p1, p2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    return-object v0
.end method
