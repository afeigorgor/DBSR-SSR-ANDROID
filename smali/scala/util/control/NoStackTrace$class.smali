.class public abstract Lscala/util/control/NoStackTrace$class;
.super Ljava/lang/Object;
.source "NoStackTrace.scala"


# direct methods
.method public static $init$(Lscala/util/control/NoStackTrace;)V
    .locals 0
    .param p0, "$this"    # Lscala/util/control/NoStackTrace;

    .prologue
    .line 20
    return-void
.end method

.method public static fillInStackTrace(Lscala/util/control/NoStackTrace;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Lscala/util/control/NoStackTrace;

    .prologue
    .line 22
    sget-object v0, Lscala/util/control/NoStackTrace$;->MODULE$:Lscala/util/control/NoStackTrace$;

    invoke-virtual {v0}, Lscala/util/control/NoStackTrace$;->noSuppression()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/util/control/NoStackTrace;->scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "$this":Lscala/util/control/NoStackTrace;
    :goto_0
    return-object p0

    .line 23
    .restart local p0    # "$this":Lscala/util/control/NoStackTrace;
    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    goto :goto_0
.end method
