.class public final Lscala/util/control/Exception$$anonfun$allCatcher$2;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->allCatcher()Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Throwable;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$allCatcher$2;->apply(Ljava/lang/Throwable;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply(Ljava/lang/Throwable;)Lscala/runtime/Nothing$;
    .locals 0
    .param p1, "x$8"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    throw p1
.end method
