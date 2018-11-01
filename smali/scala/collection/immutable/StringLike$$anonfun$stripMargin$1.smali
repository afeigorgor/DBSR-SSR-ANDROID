.class public final Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->stripMargin(C)Ljava/lang/String;
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
        "Lscala/collection/mutable/StringBuilder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final buf$2:Lscala/collection/mutable/StringBuilder;

.field private final marginChar$1:C


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StringLike;Lscala/collection/mutable/StringBuilder;C)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/StringLike;
    .param p2, "buf$2"    # Lscala/collection/mutable/StringBuilder;
    .param p3, "marginChar$1"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StringLike",
            "<TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p2, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->buf$2:Lscala/collection/mutable/StringBuilder;

    iput-char p3, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->marginChar$1:C

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 189
    .local v1, "len":I
    const/4 v0, 0x0

    .line 190
    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v2, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->buf$2:Lscala/collection/mutable/StringBuilder;

    .line 192
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;->marginChar$1:C

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    .end local p1    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    return-object v2
.end method
