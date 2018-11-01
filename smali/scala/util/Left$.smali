.class public final Lscala/util/Left$;
.super Ljava/lang/Object;
.source "Either.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/Left$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Left$;

    invoke-direct {v0}, Lscala/util/Left$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Left$;->MODULE$:Lscala/util/Left$;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "Left"

    return-object v0
.end method
