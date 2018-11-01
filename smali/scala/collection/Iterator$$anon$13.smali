.class public final Lscala/collection/Iterator$$anon$13;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private hd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private hdDefined:Z

.field private final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/Iterator;
    .param p2, "p$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 454
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/Iterator$$anon$13;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return-void
.end method

.method private hd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lscala/collection/Iterator$$anon$13;->hd:Ljava/lang/Object;

    return-object v0
.end method

.method private hdDefined()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return v0
.end method

.method private hdDefined_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return-void
.end method

.method private hd_$eq(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 456
    iput-object p1, p0, Lscala/collection/Iterator$$anon$13;->hd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 459
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hdDefined()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    :cond_0
    iget-object v1, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$13;->hd_$eq(Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lscala/collection/Iterator$$anon$13;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hd()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$13;->hdDefined_$eq(Z)V

    .line 461
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$13;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$13;->hdDefined_$eq(Z)V

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hd()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
