.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

.field private final profile$1:Lscala/runtime/ObjectRef;

.field private final singleTestProgressDialog$1:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/app/ProgressDialog;Lscala/runtime/ObjectRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .param p2, "singleTestProgressDialog$1"    # Landroid/app/ProgressDialog;
    .param p3, "profile$1"    # Lscala/runtime/ObjectRef;

    .prologue
    .line 110
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->singleTestProgressDialog$1:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 26

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v15

    .line 114
    .local v15, "host":Ljava/lang/String;
    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v3, v15}, Lcom/github/shadowsocks/utils/Utils$;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    const/4 v4, 0x1

    invoke-virtual {v3, v15, v4}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v3

    .line 115
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_3

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "addr":Ljava/lang/String;
    move-object v15, v2

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 120
    .end local v2    # "addr":Ljava/lang/String;
    :cond_0
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 119
    sget-object v5, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 120
    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v3, 0xa

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v7, v3

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v24

    const/16 v24, 0x3

    .line 121
    sget-object v25, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    const/16 v24, 0x4

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    const/4 v3, 0x5

    .line 121
    const/16 v24, 0x258

    invoke-static/range {v24 .. v24}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v3

    .line 120
    const/16 v24, 0x6

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    const/16 v24, 0x7

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    const/16 v24, 0x8

    .line 121
    sget-object v25, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    const/16 v24, 0x9

    .line 121
    sget-object v25, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v24

    .line 120
    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "conf":Ljava/lang/String;
    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v4, Ljava/io/File;

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v6}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    const-string v6, "/ss-local-test.conf"

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1$$anonfun$apply$mcV$sp$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1$$anonfun$apply$mcV$sp$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 126
    sget-object v4, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    const-string v24, "/ss-local"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 127
    const-string v7, "-t"

    aput-object v7, v3, v6

    .line 126
    const/4 v6, 0x2

    .line 127
    const-string v7, "600"

    aput-object v7, v3, v6

    .line 126
    const/4 v6, 0x3

    .line 128
    const-string v7, "-L"

    aput-object v7, v3, v6

    .line 126
    const/4 v6, 0x4

    .line 128
    const-string v7, "www.google.com:80"

    aput-object v7, v3, v6

    .line 126
    const/4 v6, 0x5

    .line 129
    const-string v7, "-c"

    aput-object v7, v3, v6

    .line 126
    const/4 v6, 0x6

    .line 129
    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/github/shadowsocks/ProfileManagerActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    const-string v24, "/ss-local-test.conf"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    check-cast v3, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v5, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-virtual {v4, v3}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v12

    check-cast v12, Lscala/collection/mutable/ArrayBuffer;

    .line 131
    .local v12, "cmd":Lscala/collection/mutable/ArrayBuffer;
    sget-object v3, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->sendEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "--fast-open"

    invoke-virtual {v12, v3}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 133
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 138
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    new-instance v16, Lcom/github/shadowsocks/GuardedProcess;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v16, "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v21

    .local v21, "x$52":Lscala/Function0;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 141
    .local v22, "start":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v22, v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->isPortAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    .end local v16    # "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    .end local v21    # "x$52":Lscala/Function0;
    .end local v22    # "start":J
    :cond_2
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 116
    .end local v12    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .end local v14    # "conf":Ljava/lang/String;
    :cond_3
    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "can\'t resolve"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_4
    new-instance v4, Lscala/MatchError;

    invoke-direct {v4, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 145
    .restart local v12    # "cmd":Lscala/collection/mutable/ArrayBuffer;
    .restart local v14    # "conf":Ljava/lang/String;
    .restart local v16    # "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    .restart local v21    # "x$52":Lscala/Function0;
    .restart local v22    # "start":J
    :catch_0
    move-exception v3

    sget-object v3, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    goto :goto_1

    .line 153
    :cond_5
    const-string v20, ""

    .line 154
    .local v20, "result":Ljava/lang/String;
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 155
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 156
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 157
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v10

    .line 159
    .local v10, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v10}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v11

    .line 161
    .local v11, "client":Lokhttp3/OkHttpClient;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 162
    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v5, "http://127.0.0.1:"

    invoke-virtual {v3, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v5, "/generate_204"

    invoke-virtual {v3, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Host"

    const-string v5, "www.google.com"

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v17

    .line 166
    .local v17, "request":Lokhttp3/Request;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v18

    .line 167
    .local v18, "response":Lokhttp3/Response;
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->code()I

    move-result v13

    .line 168
    .local v13, "code":I
    const/16 v3, 0xcc

    if-eq v13, v3, :cond_6

    const/16 v3, 0xc8

    if-ne v13, v3, :cond_a

    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_a

    .line 169
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 170
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v19

    .line 171
    .end local v18    # "response":Lokhttp3/Response;
    .local v19, "response":Lokhttp3/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v22

    .line 172
    .local v8, "elapsed":J
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->code()I

    move-result v13

    .line 173
    const/16 v3, 0xcc

    if-eq v13, v3, :cond_7

    const/16 v3, 0xc8

    if-ne v13, v3, :cond_9

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 175
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    const v4, 0x7f09004c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v7, v8, v9}, Lscala/Predef$;->long2Long(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3, v8, v9}, Lcom/github/shadowsocks/database/Profile;->elapsed_$eq(J)V

    .line 177
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->profile$1:Lscala/runtime/ObjectRef;

    iget-object v3, v3, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText(JJJ)V

    .line 182
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    .line 184
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v8    # "elapsed":J
    .end local v13    # "code":I
    .end local v19    # "response":Lokhttp3/Response;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v0, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar;->show()V

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 249
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->singleTestProgressDialog$1:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    .line 181
    .restart local v8    # "elapsed":J
    .restart local v13    # "code":I
    .restart local v19    # "response":Lokhttp3/Response;
    :cond_9
    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v4

    const v5, 0x7f09004e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v24, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .end local v8    # "elapsed":J
    .end local v13    # "code":I
    .end local v19    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v3

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v4

    const v5, 0x7f09004d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 183
    .restart local v13    # "code":I
    .restart local v18    # "response":Lokhttp3/Response;
    :cond_a
    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v4

    const v5, 0x7f09004e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v24, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method
