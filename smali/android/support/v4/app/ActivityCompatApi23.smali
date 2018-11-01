.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;
    }
.end annotation


# direct methods
.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 45
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 46
    check-cast v0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    .line 47
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 50
    return-void
.end method
