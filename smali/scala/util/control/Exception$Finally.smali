.class public Lscala/util/control/Exception$Finally;
.super Ljava/lang/Object;
.source "Exception.scala"

# interfaces
.implements Lscala/util/control/Exception$Described;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Finally"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

.field public final scala$util$control$Exception$Finally$$body:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function0;)V
    .locals 1
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Finally$$body:Lscala/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->$init$(Lscala/util/control/Exception$Described;)V

    .line 77
    const-string v0, "Finally"

    iput-object v0, p0, Lscala/util/control/Exception$Finally;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public and(Lscala/Function0;)Lscala/util/control/Exception$Finally;
    .locals 2
    .param p1, "other"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/util/control/Exception$Finally;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lscala/util/control/Exception$Finally;

    new-instance v1, Lscala/util/control/Exception$Finally$$anonfun$and$1;

    invoke-direct {v1, p0, p1}, Lscala/util/control/Exception$Finally$$anonfun$and$1;-><init>(Lscala/util/control/Exception$Finally;Lscala/Function0;)V

    invoke-direct {v0, v1}, Lscala/util/control/Exception$Finally;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->desc(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invoke()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Finally$$body:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lscala/util/control/Exception$Finally;->name:Ljava/lang/String;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->toString(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
