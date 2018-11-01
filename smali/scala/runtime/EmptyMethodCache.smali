.class public final Lscala/runtime/EmptyMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .locals 2
    .param p1, "forReceiver"    # Ljava/lang/Class;
    .param p2, "forMethod"    # Ljava/lang/reflect/Method;
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

    .prologue
    .line 40
    new-instance v0, Lscala/runtime/PolyMethodCache;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lscala/runtime/PolyMethodCache;-><init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V

    return-object v0
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "forReceiver"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
