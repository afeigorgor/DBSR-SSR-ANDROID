.class public final Lscala/Unit$;
.super Ljava/lang/Object;
.source "Unit.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Unit$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Unit$;

    invoke-direct {v0}, Lscala/Unit$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "object scala.Unit"

    return-object v0
.end method
