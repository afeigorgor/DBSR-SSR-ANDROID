.class public final Lscala/collection/immutable/HashMap$$anon$2$$anon$3;
.super Lscala/collection/immutable/HashMap$Merger;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap$$anon$2;
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
.field private final synthetic $outer:Lscala/collection/immutable/HashMap$$anon$2;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashMap$$anon$2;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/HashMap$$anon$2;

    .prologue
    .line 149
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/HashMap$$anon$2$$anon$3;->$outer:Lscala/collection/immutable/HashMap$$anon$2;

    invoke-direct {p0}, Lscala/collection/immutable/HashMap$Merger;-><init>()V

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
    .line 150
    iget-object v0, p0, Lscala/collection/immutable/HashMap$$anon$2$$anon$3;->$outer:Lscala/collection/immutable/HashMap$$anon$2;

    iget-object v0, v0, Lscala/collection/immutable/HashMap$$anon$2;->mergef$1:Lscala/Function2;

    invoke-interface {v0, p2, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    return-object v0
.end method
