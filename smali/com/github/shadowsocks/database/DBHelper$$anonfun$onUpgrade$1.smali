.class public final Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;
.super Lscala/runtime/AbstractFunction1;
.source "DBHelper.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/database/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lcom/github/shadowsocks/database/Profile;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/database/DBHelper;

.field private final i$1:Lscala/runtime/IntRef;

.field private final oldVersion$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/database/DBHelper;ILscala/runtime/IntRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/database/DBHelper;
    .param p2, "oldVersion$1"    # I
    .param p3, "i$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->$outer:Lcom/github/shadowsocks/database/DBHelper;

    iput p2, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->oldVersion$1:I

    iput-object p3, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->apply(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 124
    iget v0, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->oldVersion$1:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/github/shadowsocks/database/DBHelper$;->MODULE$:Lcom/github/shadowsocks/database/DBHelper$;

    iget-object v1, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->$outer:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/DBHelper;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/database/DBHelper$;->updateProxiedApps(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->i$1:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 126
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->$outer:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 127
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->i$1:Lscala/runtime/IntRef;

    iget-object v1, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
