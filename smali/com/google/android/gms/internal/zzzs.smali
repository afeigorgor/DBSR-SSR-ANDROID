.class public final Lcom/google/android/gms/internal/zzzs;
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

.field private final zzayv:Z

.field private final zzayw:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzzs;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzzs;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzzs;->zzayv:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzzs;->zzayv:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzs;->zzawb:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzs;->zzawb:Lcom/google/android/gms/common/api/Api;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzs;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzs;->zzaxG:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzzs;->zzayw:I

    return v0
.end method

.method public zzuV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzs;->zzawb:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
