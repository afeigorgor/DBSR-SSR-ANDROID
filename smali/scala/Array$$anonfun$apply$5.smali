.class public final Lscala/Array$$anonfun$apply$5;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TT;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array$1:Ljava/lang/Object;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/runtime/IntRef;)V
    .locals 0
    .param p1, "array$1"    # Ljava/lang/Object;
    .param p2, "i$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 123
    iput-object p1, p0, Lscala/Array$$anonfun$apply$5;->array$1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/Array$$anonfun$apply$5;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$5;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v1, p0, Lscala/Array$$anonfun$apply$5;->array$1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/Array$$anonfun$apply$5;->i$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {v0, v1, v2, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v0, p0, Lscala/Array$$anonfun$apply$5;->i$1:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/Array$$anonfun$apply$5;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
