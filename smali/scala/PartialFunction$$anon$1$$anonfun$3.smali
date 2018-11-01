.class public final Lscala/PartialFunction$$anon$1$$anonfun$3;
.super Lscala/runtime/AbstractFunction1;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/PartialFunction$$anon$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Object;",
        "Lscala/None$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/PartialFunction$$anon$1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/PartialFunction$$anon$1;

    .prologue
    .line 256
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lscala/PartialFunction$$anon$1$$anonfun$3;->apply(Ljava/lang/Object;)Lscala/None$;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Lscala/None$;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 256
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method
