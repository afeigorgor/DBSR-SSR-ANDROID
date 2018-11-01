.class public final Lscala/math/Ordering$;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/math/LowPriorityOrderingImplicits;


# static fields
.field public static final MODULE$:Lscala/math/Ordering$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Ordering$;

    invoke-direct {v0}, Lscala/math/Ordering$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    invoke-static {p0}, Lscala/math/LowPriorityOrderingImplicits$class;->$init$(Lscala/math/LowPriorityOrderingImplicits;)V

    return-void
.end method
