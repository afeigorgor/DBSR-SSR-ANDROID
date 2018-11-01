.class abstract Lscala/concurrent/forkjoin/CountedCompleter;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/forkjoin/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field final completer:Lscala/concurrent/forkjoin/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 353
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/CountedCompleter;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 354
    sget-object v1, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    const-class v2, Lscala/concurrent/forkjoin/CountedCompleter;

    const-string v3, "pending"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<TT;>;"
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    .line 63
    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method
