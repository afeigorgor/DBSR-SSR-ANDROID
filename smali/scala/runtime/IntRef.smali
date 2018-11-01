.class public Lscala/runtime/IntRef;
.super Ljava/lang/Object;
.source "IntRef.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public elem:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "elem"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method

.method public static create(I)Lscala/runtime/IntRef;
    .locals 1
    .param p0, "e"    # I

    .prologue
    .line 21
    new-instance v0, Lscala/runtime/IntRef;

    invoke-direct {v0, p0}, Lscala/runtime/IntRef;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lscala/runtime/IntRef;->elem:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
