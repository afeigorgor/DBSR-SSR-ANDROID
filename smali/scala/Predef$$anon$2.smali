.class public final Lscala/Predef$$anon$2;
.super Lscala/Predef$$eq$colon$eq;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Predef$$eq$colon$eq",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lscala/Predef$$eq$colon$eq;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 404
    return-object p1
.end method
