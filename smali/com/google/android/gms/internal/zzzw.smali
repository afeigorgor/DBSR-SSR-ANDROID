.class public abstract Lcom/google/android/gms/internal/zzzw;
.super Lcom/google/android/gms/internal/zzaaw;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzw$zza;
    }
.end annotation


# instance fields
.field protected mStarted:Z

.field protected final zzaxX:Lcom/google/android/gms/common/GoogleApiAvailability;

.field protected zzayG:Z

.field private zzayH:Lcom/google/android/gms/common/ConnectionResult;

.field private zzayI:I

.field private final zzayJ:Landroid/os/Handler;


# direct methods
.method static synthetic zza(Lcom/google/android/gms/internal/zzzw;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayH:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzw;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayI:I

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzzw;->zzayI:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzzw;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzw;->zzva()V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayG:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzzw;->zzayI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzw;->zzayH:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayJ:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzzw$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzzw$zza;-><init>(Lcom/google/android/gms/internal/zzzw;Lcom/google/android/gms/internal/zzzw$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract zzuW()V
.end method

.method protected zzva()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayI:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzw;->zzayH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzw;->zzuW()V

    return-void
.end method
