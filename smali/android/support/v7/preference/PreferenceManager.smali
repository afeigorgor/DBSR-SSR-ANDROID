.class public Landroid/support/v7/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;,
        Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# virtual methods
.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 447
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 278
    iget v1, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    packed-switch v1, :pswitch_data_0

    .line 283
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 287
    .local v0, "storageContext":Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 291
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v1

    .line 280
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 281
    .restart local v0    # "storageContext":Landroid/content/Context;
    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    invoke-interface {v0, p1}, Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    .line 505
    :cond_0
    return-void
.end method
