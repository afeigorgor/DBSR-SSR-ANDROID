.class public final Lscala/collection/TraversableOnce$$anon$2;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->collectFirst(Lscala/PartialFunction;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anon$2;->apply(Ljava/lang/Object;)Lscala/collection/TraversableOnce$$anon$2;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lscala/collection/TraversableOnce$$anon$2;
    .locals 0
    .param p1, "a"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/TraversableOnce$$anon$2;"
        }
    .end annotation

    .prologue
    .line 143
    return-object p0
.end method
