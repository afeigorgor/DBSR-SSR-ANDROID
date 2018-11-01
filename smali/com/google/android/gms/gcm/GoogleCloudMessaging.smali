.class public Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.super Ljava/lang/Object;


# static fields
.field public static zzbfW:I

.field public static zzbfX:I

.field public static zzbfY:I

.field private static final zzbgc:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x4c4b40

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzbfW:I

    const v0, 0x632ea0

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzbfX:I

    const v0, 0x6acfc0

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzbfY:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzbgc:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static zzbd(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/iid/zzc;->zzbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzbe(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
