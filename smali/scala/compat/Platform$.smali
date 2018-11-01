.class public final Lscala/compat/Platform$;
.super Ljava/lang/Object;
.source "Platform.scala"


# static fields
.field public static final MODULE$:Lscala/compat/Platform$;


# instance fields
.field private final EOL:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/compat/Platform$;

    invoke-direct {v0}, Lscala/compat/Platform$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    .line 111
    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lscala/compat/Platform$;->EOL:Ljava/lang/String;

    return-void
.end method
