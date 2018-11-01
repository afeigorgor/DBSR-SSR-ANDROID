.class public final Lscala/runtime/PolyMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final complexity:I

.field private final method:Ljava/lang/reflect/Method;

.field private final next:Lscala/runtime/MethodCache;

.field private final receiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V
    .locals 0
    .param p1, "next"    # Lscala/runtime/MethodCache;
    .param p2, "receiver"    # Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "complexity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/MethodCache;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lscala/runtime/PolyMethodCache;->next:Lscala/runtime/MethodCache;

    .line 58
    iput-object p2, p0, Lscala/runtime/PolyMethodCache;->receiver:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lscala/runtime/PolyMethodCache;->method:Ljava/lang/reflect/Method;

    .line 60
    iput p4, p0, Lscala/runtime/PolyMethodCache;->complexity:I

    .line 61
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method

.method private findInternal(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
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
    .line 67
    :goto_0
    iget-object v0, p0, Lscala/runtime/PolyMethodCache;->receiver:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lscala/runtime/PolyMethodCache;->method:Ljava/lang/reflect/Method;

    .line 66
    :goto_1
    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lscala/runtime/PolyMethodCache;->next:Lscala/runtime/MethodCache;

    .line 69
    instance-of v1, v0, Lscala/runtime/PolyMethodCache;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, Lscala/runtime/PolyMethodCache;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lscala/runtime/PolyMethodCache;->next:Lscala/runtime/MethodCache;

    invoke-virtual {v0, p1}, Lscala/runtime/MethodCache;->find(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .locals 3
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
    .line 79
    iget v0, p0, Lscala/runtime/PolyMethodCache;->complexity:I

    const/16 v1, 0xa0

    if-ge v0, v1, :cond_0

    .line 80
    new-instance v0, Lscala/runtime/PolyMethodCache;

    iget v1, p0, Lscala/runtime/PolyMethodCache;->complexity:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lscala/runtime/PolyMethodCache;-><init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V

    .line 79
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lscala/runtime/MegaMethodCache;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/runtime/MegaMethodCache;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_0
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
    .line 73
    invoke-direct {p0, p1}, Lscala/runtime/PolyMethodCache;->findInternal(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
