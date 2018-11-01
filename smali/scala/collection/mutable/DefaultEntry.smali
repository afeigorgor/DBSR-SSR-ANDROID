.class public final Lscala/collection/mutable/DefaultEntry;
.super Ljava/lang/Object;
.source "DefaultEntry.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/mutable/HashEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Serializable;",
        "Lscala/collection/mutable/HashEntry",
        "<TA;",
        "Lscala/collection/mutable/DefaultEntry",
        "<TA;TB;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashEntry$class;->$init$(Lscala/collection/mutable/HashEntry;)V

    return-void
.end method


# virtual methods
.method public chainString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "(kv: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public next_$eq(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->next:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->chainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public value_$eq(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    return-void
.end method
