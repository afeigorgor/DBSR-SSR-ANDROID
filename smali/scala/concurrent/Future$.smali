.class public final Lscala/concurrent/Future$;
.super Ljava/lang/Object;
.source "Future.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/Future$;


# instance fields
.field private final toBoxed:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/Future$;

    invoke-direct {v0}, Lscala/concurrent/Future$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    .line 452
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Map()Lscala/collection/immutable/Map$;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v0, 0x9

    new-array v0, v0, [Lscala/Tuple2;

    const/4 v3, 0x0

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 453
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Boolean;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x1

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 454
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Byte;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x2

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 455
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Character;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x3

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 456
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Short;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x4

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 457
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Integer;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x5

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 458
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Long;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x6

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 459
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Float;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/4 v3, 0x7

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 460
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Ljava/lang/Double;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 452
    const/16 v3, 0x8

    sget-object v4, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 461
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v5, Lscala/runtime/BoxedUnit;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    const-class v6, Lscala/runtime/BoxedUnit;

    invoke-direct {v5, v4, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 452
    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    iput-object v0, p0, Lscala/concurrent/Future$;->toBoxed:Lscala/collection/immutable/Map;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .param p1, "body"    # Lscala/Function0;
    .param p2, "executor"    # Lscala/concurrent/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TT;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 494
    sget-object v0, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    invoke-virtual {v0, p1, p2}, Lscala/concurrent/impl/Future$;->apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
