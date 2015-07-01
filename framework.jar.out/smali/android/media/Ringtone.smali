.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Ringtone"


# instance fields
.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 80
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 83
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 84
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 85
    return-void

    :cond_1
    move-object v0, v1

    .line 83
    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 307
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 310
    :cond_0
    return-void
.end method

.method private getDefaultRingtoneFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    const v7, #android:string@def_custom_sys_mms#t

    const v6, #android:string@def_custom_sys_notification#t

    const v5, #android:string@def_custom_sys_ringtone3#t

    const v4, #android:string@def_custom_sys_ringtone2#t

    const v3, #android:string@def_custom_sys_ringtone#t

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    const-string/jumbo v1, "ringtone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    :goto_0
    const-string/jumbo v1, "ringtone_3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_1
    :goto_1
    return-object v0

    .line 391
    :cond_2
    const-string/jumbo v1, "ringtone_2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_3
    const-string/jumbo v1, "notification_sound"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 409
    :cond_4
    const-string/jumbo v1, "mms_notification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 415
    :cond_5
    const-string v1, "alarm_alert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@def_custom_sys_alarm#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@def_custom_sys_alarm#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 148
    const/4 v9, 0x0

    .line 149
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 153
    .local v10, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "authority":Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    if-eqz p2, :cond_0

    .line 159
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v11, :cond_3

    .line 160
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 166
    .local v7, "actualUri":Landroid/net/Uri;
    :goto_0
    invoke-static {p0, v7, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "actualTitle":Ljava/lang/String;
    const v1, #android:string@ringtone_default_with_actual#t

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 195
    .end local v6    # "actualTitle":Ljava/lang/String;
    .end local v7    # "actualUri":Landroid/net/Uri;
    .end local v8    # "authority":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v10, :cond_1

    const v1, #android:string@ringtone_unknown#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v10, ""

    :cond_1
    move-object v1, v10

    :cond_2
    :goto_2
    return-object v1

    .restart local v8    # "authority":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "actualUri":Landroid/net/Uri;
    goto :goto_0

    .line 173
    .end local v7    # "actualUri":Landroid/net/Uri;
    :cond_4
    :try_start_0
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 181
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_6

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 188
    if-eqz v9, :cond_2

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 185
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 188
    if-eqz v9, :cond_0

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 176
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private hasData(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSoundCustomized()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@def_custom_sys_sound#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private playFallbackRingtone()Z
    .locals 10

    .prologue
    .line 334
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v9

    .line 337
    .local v9, "subId":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:raw@fallbackring#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 343
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_2

    .line 344
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 345
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 352
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 353
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 354
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 355
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 356
    const/4 v0, 0x1

    .line 370
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "subId":I
    :goto_1
    return v0

    .line 348
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 360
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 361
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 362
    const-string v0, "Ringtone"

    const-string v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "subId":I
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :cond_2
    :try_start_1
    const-string v0, "Ringtone"

    const-string v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 363
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 364
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "Ringtone"

    const-string v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 367
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private restoreRingtoneIfNotExist(Ljava/lang/String;)V
    .locals 13
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 433
    .local v11, "ringtoneUri":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 438
    .local v10, "res":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 440
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 443
    invoke-direct {p0, v8}, Landroid/media/Ringtone;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    const-string/jumbo v0, "media"

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "is_ringtone=1 and _display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/media/Ringtone;->getDefaultRingtoneFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 453
    invoke-direct {p0, v8}, Landroid/media/Ringtone;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 455
    .local v12, "rowId":I
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v12

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v12    # "rowId":I
    :cond_2
    if-eqz v8, :cond_0

    .line 466
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 462
    :catch_0
    move-exception v9

    .line 463
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "Ringtone"

    const-string v1, "RemoteException in restoreRingtoneIfNotExist()"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    if-eqz v8, :cond_0

    .line 466
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 465
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 466
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 319
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 329
    :goto_0
    return v1

    .line 320
    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_1

    .line 322
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 266
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 276
    .local v0, "canonicalUri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 124
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 125
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 98
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 216
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 217
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Landroid/media/Ringtone;->isSoundCustomized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const-string/jumbo v1, "ringtone"

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->restoreRingtoneIfNotExist(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "ringtone_2"

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->restoreRingtoneIfNotExist(Ljava/lang/String;)V

    .line 230
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 232
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 233
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 234
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 250
    const-string v1, "Ringtone"

    const-string v2, "Successfully created local player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 238
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_2

    .line 239
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 243
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_2

    .line 244
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const-string v1, "Ringtone"

    const-string v2, "Problem opening; delegating to remote player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 294
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLocalPlayerValid()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playLocal()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0
.end method

.method public setRingVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method
