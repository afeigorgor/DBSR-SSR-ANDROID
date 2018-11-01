.class public final Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksNatService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksNatService;->setupIptables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksNatService;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksNatService;

    .prologue
    .line 329
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 329
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$2;->apply(Landroid/content/pm/ApplicationInfo;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/content/pm/ApplicationInfo;)Lscala/Tuple2;
    .locals 3
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 329
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/Predef$ArrowAssoc$;->$minus$greater$extension(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method
