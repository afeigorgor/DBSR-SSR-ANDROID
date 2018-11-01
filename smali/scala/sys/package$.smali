.class public final Lscala/sys/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/sys/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/package$;

    invoke-direct {v0}, Lscala/sys/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    return-void
.end method


# virtual methods
.method public props()Lscala/sys/SystemProperties;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lscala/sys/SystemProperties;

    invoke-direct {v0}, Lscala/sys/SystemProperties;-><init>()V

    return-object v0
.end method
