.class public Lscala/Predef$ArrowAssoc$;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowAssoc$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$ArrowAssoc$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$ArrowAssoc$;

    invoke-direct {v0}, Lscala/Predef$ArrowAssoc$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    return-void
.end method


# virtual methods
.method public final $minus$greater$extension(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple2;
    .locals 1
    .param p1, "$this"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
