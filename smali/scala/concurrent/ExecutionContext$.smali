.class public final Lscala/concurrent/ExecutionContext$;
.super Ljava/lang/Object;
.source "ExecutionContext.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/ExecutionContext$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/ExecutionContext$;

    invoke-direct {v0}, Lscala/concurrent/ExecutionContext$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    return-void
.end method
