.class public abstract Lscala/runtime/MethodCache;
.super Ljava/lang/Object;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lscala/runtime/MethodCache;"
        }
    .end annotation
.end method

.method public abstract find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method
