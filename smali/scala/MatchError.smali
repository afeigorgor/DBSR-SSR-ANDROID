.class public final Lscala/MatchError;
.super Ljava/lang/RuntimeException;
.source "MatchError.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field private final obj:Ljava/lang/Object;

.field private objString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    iput-object p1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method private final liftedTree1$1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lscala/MatchError;->ofClass$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "an instance "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lscala/MatchError;->ofClass$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private objString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lscala/MatchError;->objString$lzycompute()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private objString$lzycompute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "null"

    .line 26
    :goto_0
    iput-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    return-object v0

    .line 29
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lscala/MatchError;->liftedTree1$1()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final ofClass$1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "of class "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lscala/MatchError;->objString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
