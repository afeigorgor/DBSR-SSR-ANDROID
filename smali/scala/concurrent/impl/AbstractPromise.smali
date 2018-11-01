.class abstract Lscala/concurrent/impl/AbstractPromise;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AbstractPromise.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lscala/concurrent/impl/AbstractPromise;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "oldState"    # Ljava/lang/Object;
    .param p2, "newState"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/impl/AbstractPromise;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
