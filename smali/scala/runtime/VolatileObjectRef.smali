.class public Lscala/runtime/VolatileObjectRef;
.super Ljava/lang/Object;
.source "VolatileObjectRef.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public volatile elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lscala/runtime/VolatileObjectRef;, "Lscala/runtime/VolatileObjectRef<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lscala/runtime/VolatileObjectRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lscala/runtime/VolatileObjectRef",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "e":Ljava/lang/Object;, "TU;"
    new-instance v0, Lscala/runtime/VolatileObjectRef;

    invoke-direct {v0, p0}, Lscala/runtime/VolatileObjectRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lscala/runtime/VolatileObjectRef;, "Lscala/runtime/VolatileObjectRef<TT;>;"
    iget-object v0, p0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
