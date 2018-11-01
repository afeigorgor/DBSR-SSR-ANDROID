.class public final Lscala/math/Equiv$;
.super Ljava/lang/Object;
.source "Equiv.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Equiv$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Equiv$;

    invoke-direct {v0}, Lscala/math/Equiv$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Equiv$;->MODULE$:Lscala/math/Equiv$;

    invoke-static {p0}, Lscala/math/LowPriorityEquiv$class;->$init$(Lscala/math/Equiv$;)V

    return-void
.end method
