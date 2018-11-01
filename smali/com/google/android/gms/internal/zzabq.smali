.class public Lcom/google/android/gms/internal/zzabq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzabq$zzb;
    }
.end annotation


# static fields
.field public static final zzaBV:Lcom/google/android/gms/common/api/Status;

.field private static final zzaBW:[Lcom/google/android/gms/internal/zzzx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/internal/zzzx",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzabq;->zzaBV:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzzx;

    sput-object v0, Lcom/google/android/gms/internal/zzabq;->zzaBW:[Lcom/google/android/gms/internal/zzzx;

    return-void
.end method
