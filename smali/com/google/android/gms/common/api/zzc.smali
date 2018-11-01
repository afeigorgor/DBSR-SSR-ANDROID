.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzawb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzaxH:Lcom/google/android/gms/internal/zzzs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzs",
            "<TO;>;"
        }
    .end annotation
.end field


# virtual methods
.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaap$zza;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzaap$zza",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzawb:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuG()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzg;->zzaA(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    return-object v0
.end method

.method public createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzabj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzabj;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getApiKey()Lcom/google/android/gms/internal/zzzs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzzs",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxH:Lcom/google/android/gms/internal/zzzs;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    return v0
.end method
