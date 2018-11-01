.class public Lscala/util/control/Exception$Catch;
.super Ljava/lang/Object;
.source "Exception.scala"

# interfaces
.implements Lscala/util/control/Exception$Described;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/util/control/Exception$Described;"
    }
.end annotation


# instance fields
.field private final fin:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option",
            "<",
            "Lscala/util/control/Exception$Finally;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rethrow:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scala$util$control$Exception$Described$$_desc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V
    .locals 1
    .param p1, "pf"    # Lscala/PartialFunction;
    .param p2, "fin"    # Lscala/Option;
    .param p3, "rethrow"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "TT;>;",
            "Lscala/Option",
            "<",
            "Lscala/util/control/Exception$Finally;",
            ">;",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lscala/util/control/Exception$Catch;->pf:Lscala/PartialFunction;

    .line 91
    iput-object p2, p0, Lscala/util/control/Exception$Catch;->fin:Lscala/Option;

    .line 92
    iput-object p3, p0, Lscala/util/control/Exception$Catch;->rethrow:Lscala/Function1;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->$init$(Lscala/util/control/Exception$Described;)V

    .line 95
    const-string v0, "Catch"

    iput-object v0, p0, Lscala/util/control/Exception$Catch;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public andFinally(Lscala/Function0;)Lscala/util/control/Exception$Catch;
    .locals 4
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/util/control/Exception$Catch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    .line 112
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v1

    new-instance v2, Lscala/Some;

    new-instance v3, Lscala/util/control/Exception$Finally;

    invoke-direct {v3, p1}, Lscala/util/control/Exception$Finally;-><init>(Lscala/Function0;)V

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    .line 111
    :goto_0
    return-object v0

    .line 113
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v2

    new-instance v3, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0, p1}, Lscala/util/control/Exception$Finally;->and(Lscala/Function0;)Lscala/util/control/Exception$Finally;

    move-result-object v0

    invoke-direct {v3, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    move-object v0, v1

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public apply(Lscala/Function0;)Ljava/lang/Object;
    .locals 4
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 108
    :goto_0
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0}, Lscala/util/control/Exception$Finally;->invoke()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :cond_0
    return-object v1

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    :cond_1
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0}, Lscala/util/control/Exception$Finally;->invoke()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    move-object v0, v1

    :cond_2
    throw v0

    .line 106
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 108
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->desc(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fin()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lscala/util/control/Exception$Finally;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->fin:Lscala/Option;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public pf()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/PartialFunction",
            "<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public rethrow()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->rethrow:Lscala/Function1;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lscala/util/control/Exception$Catch;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->toString(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lscala/util/control/Exception$Described$class;->withDesc(Lscala/util/control/Exception$Described;Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    return-object v0
.end method
