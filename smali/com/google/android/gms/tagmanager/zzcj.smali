.class Lcom/google/android/gms/tagmanager/zzcj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcj$zza;
    }
.end annotation


# static fields
.field private static zzbFb:Lcom/google/android/gms/tagmanager/zzcj;


# instance fields
.field private volatile zzbCS:Ljava/lang/String;

.field private volatile zzbFc:Lcom/google/android/gms/tagmanager/zzcj$zza;

.field private volatile zzbFd:Ljava/lang/String;

.field private volatile zzbFe:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcj;->clear()V

    return-void
.end method

.method static zzPz()Lcom/google/android/gms/tagmanager/zzcj;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/zzcj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFb:Lcom/google/android/gms/tagmanager/zzcj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFb:Lcom/google/android/gms/tagmanager/zzcj;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFb:Lcom/google/android/gms/tagmanager/zzcj;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbFf:Lcom/google/android/gms/tagmanager/zzcj$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFc:Lcom/google/android/gms/tagmanager/zzcj$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbCS:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFe:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbCS:Ljava/lang/String;

    return-object v0
.end method

.method zzPA()Lcom/google/android/gms/tagmanager/zzcj$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFc:Lcom/google/android/gms/tagmanager/zzcj$zza;

    return-object v0
.end method

.method zzPB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbFd:Ljava/lang/String;

    return-object v0
.end method
