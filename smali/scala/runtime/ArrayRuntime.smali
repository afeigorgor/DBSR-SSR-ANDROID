.class Lscala/runtime/ArrayRuntime;
.super Ljava/lang/Object;
.source "ArrayRuntime.java"


# direct methods
.method static cloneArray([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 18
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static cloneArray([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 20
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static cloneArray([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 24
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method static cloneArray([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 23
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method static cloneArray([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 21
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method static cloneArray([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 22
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method static cloneArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static cloneArray([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 19
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method static cloneArray([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 17
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method
