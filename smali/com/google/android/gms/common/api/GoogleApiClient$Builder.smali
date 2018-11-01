.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzagg:Landroid/accounts/Account;

.field private zzahp:Ljava/lang/String;

.field private final zzaxN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxP:I

.field private zzaxQ:Landroid/view/View;

.field private zzaxR:Ljava/lang/String;

.field private final zzaxS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/internal/zzg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxV:I

.field private zzaxX:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zzaxY:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaya:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzayb:Z

.field private zzrx:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxN:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxO:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxS:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxT:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxV:I

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxX:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget-object v0, Lcom/google/android/gms/internal/zzaxm;->zzahd:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxY:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxZ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaya:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzayb:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzrx:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzahp:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzuP()Lcom/google/android/gms/common/internal/zzg;
    .locals 9

    sget-object v8, Lcom/google/android/gms/internal/zzaxo;->zzbCg:Lcom/google/android/gms/internal/zzaxo;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxT:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/zzaxm;->API:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxT:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/zzaxm;->API:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxo;

    move-object v8, v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzagg:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxN:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxS:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxP:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxQ:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzahp:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzaxR:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaxo;)V

    return-object v0
.end method
