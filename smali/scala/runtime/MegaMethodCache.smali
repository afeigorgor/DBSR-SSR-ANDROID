.class public final Lscala/runtime/MegaMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final forName:Ljava/lang/String;

.field private final forParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "forName"    # Ljava/lang/String;
    .param p2, "forParameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lscala/runtime/MegaMethodCache;->forName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lscala/runtime/MegaMethodCache;->forParameterTypes:[Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .locals 0
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
    .line 52
    return-object p0
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
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
    .line 50
    iget-object v0, p0, Lscala/runtime/MegaMethodCache;->forName:Ljava/lang/String;

    iget-object v1, p0, Lscala/runtime/MegaMethodCache;->forParameterTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
