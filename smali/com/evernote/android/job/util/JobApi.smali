.class public final enum Lcom/evernote/android/job/util/JobApi;
.super Ljava/lang/Enum;
.source "JobApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/android/job/util/JobApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/android/job/util/JobApi;

.field public static final enum GCM:Lcom/evernote/android/job/util/JobApi;

.field public static final enum V_14:Lcom/evernote/android/job/util/JobApi;

.field public static final enum V_19:Lcom/evernote/android/job/util/JobApi;

.field public static final enum V_21:Lcom/evernote/android/job/util/JobApi;

.field public static final enum V_24:Lcom/evernote/android/job/util/JobApi;


# instance fields
.field private mCachedProxy:Lcom/evernote/android/job/JobProxy;

.field private final mFlexSupport:Z

.field private final mSupportsExecutionWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    new-instance v0, Lcom/evernote/android/job/util/JobApi;

    const-string v1, "V_24"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/evernote/android/job/util/JobApi;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->V_24:Lcom/evernote/android/job/util/JobApi;

    .line 56
    new-instance v0, Lcom/evernote/android/job/util/JobApi;

    const-string v1, "V_21"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/evernote/android/job/util/JobApi;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->V_21:Lcom/evernote/android/job/util/JobApi;

    .line 60
    new-instance v0, Lcom/evernote/android/job/util/JobApi;

    const-string v1, "V_19"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/evernote/android/job/util/JobApi;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->V_19:Lcom/evernote/android/job/util/JobApi;

    .line 64
    new-instance v0, Lcom/evernote/android/job/util/JobApi;

    const-string v1, "V_14"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/evernote/android/job/util/JobApi;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->V_14:Lcom/evernote/android/job/util/JobApi;

    .line 68
    new-instance v0, Lcom/evernote/android/job/util/JobApi;

    const-string v1, "GCM"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evernote/android/job/util/JobApi;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evernote/android/job/util/JobApi;

    sget-object v1, Lcom/evernote/android/job/util/JobApi;->V_24:Lcom/evernote/android/job/util/JobApi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/util/JobApi;->V_21:Lcom/evernote/android/job/util/JobApi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/util/JobApi;->V_19:Lcom/evernote/android/job/util/JobApi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evernote/android/job/util/JobApi;->V_14:Lcom/evernote/android/job/util/JobApi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evernote/android/job/util/JobApi;->$VALUES:[Lcom/evernote/android/job/util/JobApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "supportsExecutionWindow"    # Z
    .param p4, "flexSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-boolean p3, p0, Lcom/evernote/android/job/util/JobApi;->mSupportsExecutionWindow:Z

    .line 77
    iput-boolean p4, p0, Lcom/evernote/android/job/util/JobApi;->mFlexSupport:Z

    .line 78
    return-void
.end method

.method public static getDefault(Landroid/content/Context;Z)Lcom/evernote/android/job/util/JobApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gcmEnabled"    # Z

    .prologue
    .line 143
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_24:Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_24:Lcom/evernote/android/job/util/JobApi;

    .line 152
    :goto_0
    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_21:Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_21:Lcom/evernote/android/job/util/JobApi;

    goto :goto_0

    .line 147
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    goto :goto_0

    .line 149
    :cond_2
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_19:Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_19:Lcom/evernote/android/job/util/JobApi;

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_14:Lcom/evernote/android/job/util/JobApi;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/util/JobApi;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/evernote/android/job/util/JobApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/util/JobApi;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/util/JobApi;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/evernote/android/job/util/JobApi;->$VALUES:[Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {v0}, [Lcom/evernote/android/job/util/JobApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/util/JobApi;

    return-object v0
.end method


# virtual methods
.method public createProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-object v0, Lcom/evernote/android/job/util/JobApi$1;->$SwitchMap$com$evernote$android$job$util$JobApi:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/util/JobApi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    new-instance v0, Lcom/evernote/android/job/v24/JobProxy24;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v24/JobProxy24;-><init>(Landroid/content/Context;)V

    .line 117
    :goto_0
    return-object v0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/evernote/android/job/v21/JobProxy21;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v21/JobProxy21;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :pswitch_2
    new-instance v0, Lcom/evernote/android/job/v19/JobProxy19;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v19/JobProxy19;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 115
    :pswitch_3
    new-instance v0, Lcom/evernote/android/job/v14/JobProxy14;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v14/JobProxy14;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :pswitch_4
    new-instance v0, Lcom/evernote/android/job/gcm/JobProxyGcm;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized getCachedProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/util/JobApi;->mCachedProxy:Lcom/evernote/android/job/JobProxy;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/util/JobApi;->createProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/util/JobApi;->mCachedProxy:Lcom/evernote/android/job/JobProxy;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/util/JobApi;->mCachedProxy:Lcom/evernote/android/job/JobProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFlexSupport()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/evernote/android/job/util/JobApi;->mFlexSupport:Z

    return v0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 89
    sget-object v2, Lcom/evernote/android/job/util/JobApi$1;->$SwitchMap$com$evernote$android$job$util$JobApi:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/util/JobApi;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 95
    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 99
    :pswitch_4
    invoke-static {p1}, Lcom/evernote/android/job/util/GcmAvailableHelper;->isGcmApiSupported(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public supportsExecutionWindow()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/evernote/android/job/util/JobApi;->mSupportsExecutionWindow:Z

    return v0
.end method
