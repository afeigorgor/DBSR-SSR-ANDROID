.class public Lscala/sys/PropImpl;
.super Ljava/lang/Object;
.source "PropImpl.scala"

# interfaces
.implements Lscala/sys/Prop;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/sys/Prop",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final valueFn:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/Function1;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueFn"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Function1",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lscala/sys/PropImpl;->key:Ljava/lang/String;

    iput-object p2, p0, Lscala/sys/PropImpl;->valueFn:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "currently: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unset"

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lscala/sys/PropImpl$$anonfun$get$1;

    invoke-direct {v2, p0}, Lscala/sys/PropImpl$$anonfun$get$1;-><init>(Lscala/sys/PropImpl;)V

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/Map;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isSet()Z
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lscala/sys/PropImpl;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lscala/sys/PropImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "%s (%s)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lscala/sys/PropImpl;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lscala/sys/PropImpl;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/mutable/Map;
    .locals 1
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
    .line 39
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lscala/sys/PropImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/sys/PropImpl;->valueFn:Lscala/Function1;

    invoke-virtual {p0}, Lscala/sys/PropImpl;->get()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lscala/sys/PropImpl;->zero()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zero()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
