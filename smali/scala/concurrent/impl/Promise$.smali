.class public final Lscala/concurrent/impl/Promise$;
.super Ljava/lang/Object;
.source "Promise.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/impl/Promise$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/impl/Promise$;

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/impl/Promise$;->MODULE$:Lscala/concurrent/impl/Promise$;

    return-void
.end method

.method private resolver(Ljava/lang/Throwable;)Lscala/util/Try;
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/util/Try",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lscala/runtime/NonLocalReturnControl;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/runtime/NonLocalReturnControl;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    new-instance v0, Lscala/util/Success;

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-object v0

    .line 53
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p1, Lscala/util/control/ControlThrowable;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/control/ControlThrowable;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Boxed ControlThrowable"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/InterruptedException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Boxed InterruptedException"

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Error;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Boxed Error"

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public scala$concurrent$impl$Promise$$resolveTry(Lscala/util/Try;)Lscala/util/Try;
    .locals 1
    .param p1, "source"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Try",
            "<TT;>;)",
            "Lscala/util/Try",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Failure;

    .end local p1    # "source":Lscala/util/Try;
    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/concurrent/impl/Promise$;->resolver(Ljava/lang/Throwable;)Lscala/util/Try;

    move-result-object p1

    .line 46
    :cond_0
    return-object p1
.end method
