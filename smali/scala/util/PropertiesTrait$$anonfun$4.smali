.class public final Lscala/util/PropertiesTrait$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "Properties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/PropertiesTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/String;",
        "Lscala/Option",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/util/PropertiesTrait;


# direct methods
.method public constructor <init>(Lscala/util/PropertiesTrait;)V
    .locals 1
    .param p1, "$outer"    # Lscala/util/PropertiesTrait;

    .prologue
    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/util/PropertiesTrait$$anonfun$4;->$outer:Lscala/util/PropertiesTrait;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/util/PropertiesTrait$$anonfun$4;->apply(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p1, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lscala/util/PropertiesTrait$$anonfun$4;->$outer:Lscala/util/PropertiesTrait;

    const-string v1, "version.number"

    invoke-interface {v0, v1}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method
