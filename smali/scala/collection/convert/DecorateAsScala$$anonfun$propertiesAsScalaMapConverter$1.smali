.class public final Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsScala.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/DecorateAsScala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Lscala/collection/mutable/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final p$2:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/convert/DecorateAsScala;
    .param p2, "p$2"    # Ljava/util/Properties;

    .prologue
    .line 196
    iput-object p2, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;->p$2:Ljava/util/Properties;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;->apply()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/mutable/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;->p$2:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->propertiesAsScalaMap(Ljava/util/Properties;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method
