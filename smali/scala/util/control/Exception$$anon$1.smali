.class public final Lscala/util/control/Exception$$anon$1;
.super Ljava/lang/Object;
.source "Exception.scala"

# interfaces
.implements Lscala/PartialFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/Exception$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/PartialFunction",
        "<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final evidence$1$1:Lscala/reflect/ClassTag;

.field private final f$1:Lscala/Function1;

.field private final isDef$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V
    .locals 0
    .param p1, "isDef$1"    # Lscala/Function1;
    .param p2, "f$1"    # Lscala/Function1;
    .param p3, "evidence$1$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 40
    iput-object p1, p0, Lscala/util/control/Exception$$anon$1;->isDef$1:Lscala/Function1;

    iput-object p2, p0, Lscala/util/control/Exception$$anon$1;->f$1:Lscala/Function1;

    iput-object p3, p0, Lscala/util/control/Exception$$anon$1;->evidence$1$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    return-void
.end method

.method private downcast(Ljava/lang/Throwable;)Lscala/Option;
    .locals 2
    .param p1, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/Option",
            "<TEx;>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    iget-object v1, p0, Lscala/util/control/Exception$$anon$1;->evidence$1$1:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1}, Lscala/reflect/package$;->classTag(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-interface {v0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anon$1;->apply(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2
    .param p1, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lscala/util/control/Exception$$anon$1;->f$1:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/util/control/Exception$$anon$1;->downcast(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anon$1;->isDefinedAt(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isDefinedAt(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lscala/util/control/Exception$$anon$1;->downcast(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v0

    iget-object v1, p0, Lscala/util/control/Exception$$anon$1;->isDef$1:Lscala/Function1;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .param p1, "action"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TT;TU;>;)",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/Function1$class;->toString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
