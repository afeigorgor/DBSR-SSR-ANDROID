.class public Lscala/Predef$any2stringadd$;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "any2stringadd$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$any2stringadd$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$any2stringadd$;

    invoke-direct {v0}, Lscala/Predef$any2stringadd$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    return-void
.end method


# virtual methods
.method public final $plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "$this"    # Ljava/lang/Object;
    .param p2, "other"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
