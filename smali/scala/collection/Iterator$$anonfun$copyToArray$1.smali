.class public final Lscala/collection/Iterator$$anonfun$copyToArray$1;
.super Lscala/runtime/AbstractFunction0;
.source "Iterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final start$4:I

.field public final xs$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/Iterator;
    .param p2, "xs$2"    # Ljava/lang/Object;
    .param p3, "start$4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1292
    iput-object p2, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1292
    invoke-virtual {p0}, Lscala/collection/Iterator$$anonfun$copyToArray$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1292
    new-instance v1, Lscala/StringContext;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "start "

    aput-object v3, v0, v4

    const-string v3, " out of range "

    aput-object v3, v0, v5

    const-string v3, ""

    aput-object v3, v0, v6

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v4, p0, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
