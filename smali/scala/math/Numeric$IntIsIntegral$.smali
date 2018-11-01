.class public Lscala/math/Numeric$IntIsIntegral$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$IntIsIntegral;
.implements Lscala/math/Ordering$IntOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIsIntegral$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$IntIsIntegral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$IntIsIntegral$;

    invoke-direct {v0}, Lscala/math/Numeric$IntIsIntegral$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Numeric$class;->$init$(Lscala/math/Numeric;)V

    invoke-static {p0}, Lscala/math/Integral$class;->$init$(Lscala/math/Integral;)V

    invoke-static {p0}, Lscala/math/Numeric$IntIsIntegral$class;->$init$(Lscala/math/Numeric$IntIsIntegral;)V

    invoke-static {p0}, Lscala/math/Ordering$IntOrdering$class;->$init$(Lscala/math/Ordering$IntOrdering;)V

    return-void
.end method


# virtual methods
.method public compare(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$IntOrdering$class;->compare(Lscala/math/Ordering$IntOrdering;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$IntIsIntegral$;->compare(II)I

    move-result v0

    return v0
.end method

.method public fromInt(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 58
    invoke-static {p0, p1}, Lscala/math/Numeric$IntIsIntegral$class;->fromInt(Lscala/math/Numeric$IntIsIntegral;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic fromInt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lscala/math/Numeric$IntIsIntegral$;->fromInt(I)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public plus(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$IntIsIntegral$class;->plus(Lscala/math/Numeric$IntIsIntegral;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lscala/math/Numeric$IntIsIntegral$;->plus(II)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toInt(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 58
    invoke-static {p0, p1}, Lscala/math/Numeric$IntIsIntegral$class;->toInt(Lscala/math/Numeric$IntIsIntegral;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic toInt(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/Numeric$IntIsIntegral$;->toInt(I)I

    move-result v0

    return v0
.end method

.method public zero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lscala/math/Numeric$class;->zero(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
