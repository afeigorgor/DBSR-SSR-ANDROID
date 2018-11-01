.class public final Lscala/concurrent/impl/ExecutionContextImpl$;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-direct {v0}, Lscala/concurrent/impl/ExecutionContextImpl$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    return-void
.end method
