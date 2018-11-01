.class public final Lscala/util/hashing/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/util/hashing/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/package$;

    invoke-direct {v0}, Lscala/util/hashing/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    return-void
.end method


# virtual methods
.method public byteswap32(I)I
    .locals 3
    .param p1, "v"    # I

    .prologue
    const v2, -0x61c88a33    # -9.7123E-21f

    .line 22
    mul-int v0, p1, v2

    .line 23
    .local v0, "hc":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 24
    mul-int/2addr v1, v2

    return v1
.end method
