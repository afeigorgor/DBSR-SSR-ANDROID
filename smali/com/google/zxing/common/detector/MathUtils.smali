.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static distance(FFFF)F
    .locals 4
    .param p0, "aX"    # F
    .param p1, "aY"    # F
    .param p2, "bX"    # F
    .param p3, "bY"    # F

    .prologue
    .line 48
    sub-float v0, p0, p2

    .line 49
    .local v0, "xDiff":F
    sub-float v1, p1, p3

    .line 50
    .local v1, "yDiff":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distance(IIII)F
    .locals 4
    .param p0, "aX"    # I
    .param p1, "aY"    # I
    .param p2, "bX"    # I
    .param p3, "bY"    # I

    .prologue
    .line 61
    sub-int v0, p0, p2

    .line 62
    .local v0, "xDiff":I
    sub-int v1, p1, p3

    .line 63
    .local v1, "yDiff":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static round(F)I
    .locals 1
    .param p0, "d"    # F

    .prologue
    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    :goto_0
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public static sum([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "count":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 73
    .local v0, "a":I
    add-int/2addr v1, v0

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "a":I
    :cond_0
    return v1
.end method
