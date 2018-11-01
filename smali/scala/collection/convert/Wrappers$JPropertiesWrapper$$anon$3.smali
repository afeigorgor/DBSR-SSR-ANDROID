.class public final Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;
.super Lscala/collection/AbstractIterator;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$JPropertiesWrapper;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator",
        "<",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ui:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$JPropertiesWrapper;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    .prologue
    .line 409
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 410
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui:Ljava/util/Iterator;

    return-void
.end method

.method private ui()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    .local v0, "e":Ljava/util/Map$Entry;
    new-instance v3, Lscala/Tuple2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method
