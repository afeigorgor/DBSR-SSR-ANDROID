.class public final Lscala/StringContext$$anonfun$s$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringContext.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/StringContext;)V
    .locals 0
    .param p1, "$outer"    # Lscala/StringContext;

    .prologue
    .line 95
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/StringContext$$anonfun$s$1;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lscala/StringContext$;->MODULE$:Lscala/StringContext$;

    invoke-virtual {v0, p1}, Lscala/StringContext$;->treatEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
