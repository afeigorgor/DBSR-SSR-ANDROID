.class public Lscala/collection/immutable/Range$Inclusive;
.super Lscala/collection/immutable/Range;
.source "Range.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inclusive"
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/Range;-><init>(III)V

    return-void
.end method


# virtual methods
.method public copy(III)Lscala/collection/immutable/Range;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .prologue
    .line 433
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    return-object v0
.end method

.method public isInclusive()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method
