.class Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 799
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 793
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 795
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 800
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 803
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 804
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 806
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 808
    const-string v1, "notification_light_pulse_default_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 811
    const-string v1, "notification_light_pulse_default_led_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 814
    const-string v1, "notification_light_pulse_default_led_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 817
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 820
    const-string v1, "notification_light_pulse_custom_values"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 823
    const-string v1, "zen_disable_ducking_during_media_playback"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 826
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 827
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 830
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 831
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 834
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 837
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 841
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_color"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1402(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 846
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_on"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1502(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 851
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_off"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1602(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 856
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 857
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_custom_values"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/notification/NotificationManagerService;->parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 867
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_disable_ducking_during_media_playback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDisableDuckingWhileMedia:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 869
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateDisableDucking()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 870
    return-void

    :cond_1
    move v1, v3

    .line 837
    goto :goto_0

    :cond_2
    move v2, v3

    .line 867
    goto :goto_1
.end method
