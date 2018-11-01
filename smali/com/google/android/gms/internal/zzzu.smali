.class public final Lcom/google/android/gms/internal/zzzu;
.super Ljava/lang/Object;


# instance fields
.field private final zzaxy:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zzayC:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzayD:I

.field private zzayE:Z


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzzs;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzu;->zzaxy:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayD:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayD:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayE:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayD:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayE:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzu;->zzaxy:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zzb;-><init>(Landroid/support/v4/util/ArrayMap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzu;->zzayC:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzu;->zzayC:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzuY()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzu;->zzaxy:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
