.class public Lscala/runtime/LongRef;
.super Ljava/lang/Object;
.source "LongRef.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public elem:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "elem"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lscala/runtime/LongRef;->elem:J

    return-void
.end method

.method public static create(J)Lscala/runtime/LongRef;
    .locals 2
    .param p0, "e"    # J

    .prologue
    .line 21
    new-instance v0, Lscala/runtime/LongRef;

    invoke-direct {v0, p0, p1}, Lscala/runtime/LongRef;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lscala/runtime/LongRef;->elem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
