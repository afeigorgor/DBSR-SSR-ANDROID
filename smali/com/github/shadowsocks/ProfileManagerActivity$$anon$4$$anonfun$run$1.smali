.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->run()V
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    .prologue
    .line 1000
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 1000
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->apply(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/Profile;)V
    .locals 29
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting_$eq(Z)V

    .line 1007
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v12

    .line 1008
    .local v12, "host":Ljava/lang/String;
    sget-object v22, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/github/shadowsocks/utils/Utils$;->isNumeric(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    sget-object v22, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v22

    .line 1009
    move-object/from16 v0, v22

    instance-of v0, v0, Lscala/Some;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    check-cast v22, Lscala/Some;

    invoke-virtual/range {v22 .. v22}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "addr":Ljava/lang/String;
    move-object v12, v4

    sget-object v22, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 1014
    .end local v4    # "addr":Ljava/lang/String;
    :cond_1
    new-instance v22, Lscala/collection/immutable/StringOps;

    sget-object v23, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 1013
    sget-object v24, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 1014
    invoke-virtual/range {v24 .. v24}, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v24, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v25, 0xa

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v12, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v27

    add-int/lit8 v27, v27, 0x2

    invoke-static/range {v27 .. v27}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    .line 1015
    sget-object v27, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x4

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x5

    .line 1015
    const/16 v27, 0x258

    invoke-static/range {v27 .. v27}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x6

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x7

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x8

    .line 1015
    sget-object v27, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    const/16 v26, 0x9

    .line 1015
    sget-object v27, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 1014
    invoke-virtual/range {v24 .. v25}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v9

    .line 1016
    .local v9, "conf":Ljava/lang/String;
    sget-object v22, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v23, Ljava/io/File;

    new-instance v24, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v24 .. v24}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v24

    const-string v25, "/ss-local-test.conf"

    invoke-virtual/range {v24 .. v25}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v24, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1$$anonfun$apply$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1$$anonfun$apply$4;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v24}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 1020
    sget-object v23, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v24, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    new-instance v26, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v26 .. v26}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v26

    const-string v27, "/ss-local"

    invoke-virtual/range {v26 .. v27}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v22, v25

    const/16 v25, 0x1

    .line 1021
    const-string v26, "-t"

    aput-object v26, v22, v25

    .line 1020
    const/16 v25, 0x2

    .line 1021
    const-string v26, "600"

    aput-object v26, v22, v25

    .line 1020
    const/16 v25, 0x3

    .line 1022
    const-string v26, "-L"

    aput-object v26, v22, v25

    .line 1020
    const/16 v25, 0x4

    .line 1022
    const-string v26, "www.google.com:80"

    aput-object v26, v22, v25

    .line 1020
    const/16 v25, 0x5

    .line 1023
    const-string v26, "-c"

    aput-object v26, v22, v25

    .line 1020
    const/16 v25, 0x6

    .line 1023
    new-instance v26, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v26 .. v26}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v26

    const-string v27, "/ss-local-test.conf"

    invoke-virtual/range {v26 .. v27}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v22, v25

    check-cast v22, [Ljava/lang/Object;

    .line 1020
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v7

    check-cast v7, Lscala/collection/mutable/ArrayBuffer;

    .line 1025
    .local v7, "cmd":Lscala/collection/mutable/ArrayBuffer;
    sget-object v22, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->sendEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "--fast-open"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 1027
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 1032
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    new-instance v14, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v14, v7}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v14, "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v14}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v19

    .local v19, "x$57":Lscala/Function0;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1035
    .local v20, "start":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v20, v22

    const-wide/16 v24, 0x1388

    cmp-long v22, v22, v24

    if-gez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v23

    add-int/lit8 v23, v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->isPortAvailable(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1037
    const-wide/16 v22, 0x32

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1039
    :catch_0
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting_$eq(Z)V

    goto :goto_1

    .line 1025
    .end local v14    # "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    .end local v19    # "x$57":Lscala/Function0;
    .end local v20    # "start":J
    :cond_3
    sget-object v22, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 1010
    .end local v7    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .end local v9    # "conf":Ljava/lang/String;
    :cond_4
    sget-object v23, Lscala/None$;->MODULE$:Lscala/None$;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    new-instance v22, Ljava/lang/Exception;

    const-string v23, "can\'t resolve"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1008
    :cond_5
    new-instance v23, Lscala/MatchError;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v23

    .line 1043
    .restart local v7    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .restart local v9    # "conf":Ljava/lang/String;
    .restart local v14    # "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    .restart local v19    # "x$57":Lscala/Function0;
    .restart local v20    # "start":J
    :cond_6
    const-string v18, ""

    .line 1044
    .local v18, "result":Ljava/lang/String;
    new-instance v22, Lokhttp3/OkHttpClient$Builder;

    invoke-direct/range {v22 .. v22}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1045
    const-wide/16 v24, 0x5

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v22

    .line 1046
    const-wide/16 v24, 0x5

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v22

    .line 1047
    const-wide/16 v24, 0x5

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 1049
    .local v5, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 1051
    .local v6, "client":Lokhttp3/OkHttpClient;
    new-instance v22, Lokhttp3/Request$Builder;

    invoke-direct/range {v22 .. v22}, Lokhttp3/Request$Builder;-><init>()V

    .line 1052
    new-instance v23, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v23 .. v23}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v24, "http://127.0.0.1:"

    invoke-virtual/range {v23 .. v24}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    invoke-static/range {v24 .. v24}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v23

    const-string v24, "/generate_204"

    invoke-virtual/range {v23 .. v24}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v22

    const-string v23, "Host"

    invoke-virtual/range {v22 .. v23}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v22

    const-string v23, "Host"

    const-string v24, "www.google.com"

    invoke-virtual/range {v22 .. v24}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v22

    .line 1053
    invoke-virtual/range {v22 .. v22}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v15

    .line 1056
    .local v15, "request":Lokhttp3/Request;
    :try_start_1
    invoke-virtual {v6, v15}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v16

    .line 1057
    .local v16, "response":Lokhttp3/Response;
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v8

    .line 1058
    .local v8, "code":I
    const/16 v22, 0xcc

    move/from16 v0, v22

    if-eq v8, v0, :cond_7

    const/16 v22, 0xc8

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_b

    .line 1059
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1060
    invoke-virtual {v6, v15}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v17

    .line 1061
    .end local v16    # "response":Lokhttp3/Response;
    .local v17, "response":Lokhttp3/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v20

    .line 1062
    .local v10, "elapsed":J
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->code()I

    move-result v8

    .line 1063
    const/16 v22, 0xcc

    move/from16 v0, v22

    if-eq v8, v0, :cond_8

    const/16 v22, 0xc8

    move/from16 v0, v22

    if-ne v8, v0, :cond_a

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_a

    .line 1065
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    const v23, 0x7f09004c

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Lscala/Predef$;->long2Long(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1066
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/github/shadowsocks/database/Profile;->elapsed_$eq(J)V

    .line 1067
    sget-object v22, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 1070
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ResponseBody;->close()V

    .line 1072
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ResponseBody;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    .end local v8    # "code":I
    .end local v10    # "elapsed":J
    .end local v17    # "response":Lokhttp3/Response;
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 1079
    .local v13, "msg":Landroid/os/Message;
    new-instance v22, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v22 .. v22}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->showProgresshandler()Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1081
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 1001
    .end local v5    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local v6    # "client":Lokhttp3/OkHttpClient;
    .end local v7    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .end local v9    # "conf":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    .end local v15    # "request":Lokhttp3/Request;
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "x$57":Lscala/Function0;
    .end local v20    # "start":J
    :cond_9
    return-void

    .line 1069
    .restart local v5    # "builder":Lokhttp3/OkHttpClient$Builder;
    .restart local v6    # "client":Lokhttp3/OkHttpClient;
    .restart local v7    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .restart local v8    # "code":I
    .restart local v9    # "conf":Ljava/lang/String;
    .restart local v10    # "elapsed":J
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v14    # "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    .restart local v15    # "request":Lokhttp3/Request;
    .restart local v17    # "response":Lokhttp3/Response;
    .restart local v18    # "result":Ljava/lang/String;
    .restart local v19    # "x$57":Lscala/Function0;
    .restart local v20    # "start":J
    :cond_a
    :try_start_2
    new-instance v22, Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v23

    const v24, 0x7f09004e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1074
    .end local v8    # "code":I
    .end local v10    # "elapsed":J
    .end local v17    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v22

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v23

    const v24, 0x7f09004d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 1071
    .restart local v8    # "code":I
    .restart local v16    # "response":Lokhttp3/Response;
    :cond_b
    :try_start_3
    new-instance v22, Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v23

    const v24, 0x7f09004e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method
