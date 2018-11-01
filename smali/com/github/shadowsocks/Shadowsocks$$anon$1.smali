.class public final Lcom/github/shadowsocks/Shadowsocks$$anon$1;
.super Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.source "Shadowsocks.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/Shadowsocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks;

    .prologue
    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {p0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$Shadowsocks$$anon$$onClick$body$1(Landroid/view/View;)V
    .locals 2
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch()Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anon$$run$body$1(ILjava/lang/String;)V
    .locals 9
    .param p1, "s$1"    # I
    .param p2, "m$1"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x3e8

    const v3, 0x7f020083

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    .line 115
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTING()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v2}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 118
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 120
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/Shadowsocks;->state_$eq(I)V

    return-void

    .line 122
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v2}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->state()I

    move-result v1

    sget-object v2, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/State$;->CONNECTING()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 125
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/FABProgressCircle;->beginFinalAnimation()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 129
    :goto_1
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1, v7}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V

    .line 131
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$2;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$2;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;)V

    invoke-virtual {v1, v2, v4, v5}, Lcom/github/jorgecastilloprz/FABProgressCircle;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    goto :goto_1

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/Shadowsocks;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 138
    :cond_3
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v1

    if-ne v1, p1, :cond_8

    .line 139
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v2}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$3;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$3;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;)V

    invoke-virtual {v1, v2, v4, v5}, Lcom/github/jorgecastilloprz/FABProgressCircle;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V

    .line 143
    if-nez p2, :cond_4

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 151
    :goto_2
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v4, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/Shadowsocks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v1, v2, v6}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 146
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/Shadowsocks;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_6

    if-eqz v1, :cond_7

    :cond_5
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 148
    :goto_3
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 149
    const-string v1, "Shadowsocks"

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "Error to start VPN service: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    goto :goto_2

    .line 146
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_7
    const v1, 0x7f0900c2

    .line 147
    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$4;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$4;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;)V

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    goto :goto_3

    .line 153
    .end local v0    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_8
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPING()I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 154
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v2}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 155
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 156
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->state()I

    move-result v1

    sget-object v2, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 158
    :cond_9
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 114
    :cond_a
    new-instance v1, Lscala/MatchError;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anon$$run$body$2()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$hideCircle()V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anon$$run$body$3()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$hideCircle()V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anon$$run$body$4(JJJJ)V
    .locals 11
    .param p1, "txRate$1"    # J
    .param p3, "rxRate$1"    # J
    .param p5, "txTotal$1"    # J
    .param p7, "rxTotal$1"    # J

    .prologue
    .line 166
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/github/shadowsocks/Shadowsocks;->updateTraffic(JJJJ)V

    return-void
.end method

.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "m"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public trafficUpdated(JJJJ)V
    .locals 11
    .param p1, "txRate"    # J
    .param p3, "rxRate"    # J
    .param p5, "txTotal"    # J
    .param p7, "rxTotal"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;JJJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
