.class public final Lscala/sys/SystemProperties$$anonfun$contains$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "SystemProperties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/SystemProperties;->contains(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/SystemProperties;

.field public final key$2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lscala/sys/SystemProperties;
    .param p2, "key$2"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->$outer:Lscala/sys/SystemProperties;

    iput-object p2, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->key$2:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lscala/sys/SystemProperties$$anonfun$contains$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->$outer:Lscala/sys/SystemProperties;

    iget-object v1, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->key$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/sys/SystemProperties;->scala$sys$SystemProperties$$super$contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->$outer:Lscala/sys/SystemProperties;

    iget-object v1, p0, Lscala/sys/SystemProperties$$anonfun$contains$1;->key$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/sys/SystemProperties;->scala$sys$SystemProperties$$super$contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
