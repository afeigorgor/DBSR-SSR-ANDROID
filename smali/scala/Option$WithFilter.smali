.class public Lscala/Option$WithFilter;
.super Ljava/lang/Object;
.source "Option.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WithFilter"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/Option;

.field public final scala$Option$WithFilter$$p:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Option;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/Option;
    .param p2, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option",
            "<TA;>;",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p2, p0, Lscala/Option$WithFilter;->scala$Option$WithFilter$$p:Lscala/Function1;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/Option$WithFilter;->$outer:Lscala/Option;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flatMap(Lscala/Function1;)Lscala/Option;
    .locals 3
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;",
            "Lscala/Option",
            "<TB;>;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lscala/Option$WithFilter;->scala$Option$WithFilter$$$outer()Lscala/Option;

    move-result-object v0

    iget-object v1, p0, Lscala/Option$WithFilter;->scala$Option$WithFilter$$p:Lscala/Function1;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    goto :goto_1
.end method

.method public map(Lscala/Function1;)Lscala/Option;
    .locals 3
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lscala/Option$WithFilter;->scala$Option$WithFilter$$$outer()Lscala/Option;

    move-result-object v0

    iget-object v1, p0, Lscala/Option$WithFilter;->scala$Option$WithFilter$$p:Lscala/Function1;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_2
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic scala$Option$WithFilter$$$outer()Lscala/Option;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lscala/Option$WithFilter;->$outer:Lscala/Option;

    return-object v0
.end method
