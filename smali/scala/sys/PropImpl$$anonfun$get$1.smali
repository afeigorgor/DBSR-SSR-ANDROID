.class public final Lscala/sys/PropImpl$$anonfun$get$1;
.super Lscala/runtime/AbstractFunction0;
.source "PropImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/PropImpl;->get()Ljava/lang/String;
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


# direct methods
.method public constructor <init>(Lscala/sys/PropImpl;)V
    .locals 0
    .param p1, "$outer"    # Lscala/sys/PropImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/PropImpl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/sys/PropImpl$$anonfun$get$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method
