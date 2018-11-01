.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzagg:Landroid/accounts/Account;

.field private zzajh:Z

.field private zzaji:Z

.field private zzajj:Z

.field private zzajk:Ljava/lang/String;

.field private zzajl:Ljava/lang/String;

.field private zzajm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajm:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzagg:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajm:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajm:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzagg:Landroid/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajh:Z

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzaji:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajj:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajk:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajl:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;)V

    return-object v0
.end method

.method public requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajm:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzajf:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzajm:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzajd:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
