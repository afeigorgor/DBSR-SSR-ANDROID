.class public Lscala/collection/convert/Decorators$AsScala;
.super Ljava/lang/Object;
.source "Decorators.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Decorators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsScala"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Decorators;

.field private final op:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/convert/Decorators;
    .param p2, "op"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Decorators;",
            "Lscala/Function0",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p2, p0, Lscala/collection/convert/Decorators$AsScala;->op:Lscala/Function0;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/convert/Decorators$AsScala;->$outer:Lscala/collection/convert/Decorators;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asScala()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsScala;->op:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
