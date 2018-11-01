.class public Lscala/runtime/BooleanRef;
.super Ljava/lang/Object;
.source "BooleanRef.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public elem:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "elem"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lscala/runtime/BooleanRef;->elem:Z

    return-void
.end method

.method public static create(Z)Lscala/runtime/BooleanRef;
    .locals 1
    .param p0, "e"    # Z

    .prologue
    .line 21
    new-instance v0, Lscala/runtime/BooleanRef;

    invoke-direct {v0, p0}, Lscala/runtime/BooleanRef;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lscala/runtime/BooleanRef;->elem:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
