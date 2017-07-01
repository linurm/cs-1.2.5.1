.class public Lcom/apportable/ui/LocalNotification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/apportable/ui/LocalNotification;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;


# instance fields
.field private alertAction:Ljava/lang/String;

.field private alertBody:Ljava/lang/String;

.field private alertLaunchImage:Ljava/lang/String;

.field private applicationIconBadgeNumber:J

.field private fireDate:D

.field private hasAction:Z

.field private icon:Landroid/graphics/Bitmap;

.field private payload:Ljava/lang/String;

.field private picture:Landroid/graphics/Bitmap;

.field private soundName:Ljava/lang/String;

.field private timeZoneName:Ljava/lang/String;

.field private userInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const-string v0, "LocalNotification"

    #@2
    sput-object v0, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    #@4
    const/16 v0, 0xa

    #@6
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@8
    const/4 v1, 0x0

    #@9
    new-instance v2, Ljava/io/ObjectStreamField;

    #@b
    const-string v3, "fireDate"

    #@d
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@f
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@12
    aput-object v2, v0, v1

    #@14
    const/4 v1, 0x1

    #@15
    new-instance v2, Ljava/io/ObjectStreamField;

    #@17
    const-string v3, "alertBody"

    #@19
    const-class v4, Ljava/lang/String;

    #@1b
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x2

    #@21
    new-instance v2, Ljava/io/ObjectStreamField;

    #@23
    const-string v3, "hasAction"

    #@25
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@27
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2a
    aput-object v2, v0, v1

    #@2c
    const/4 v1, 0x3

    #@2d
    new-instance v2, Ljava/io/ObjectStreamField;

    #@2f
    const-string v3, "alertAction"

    #@31
    const-class v4, Ljava/lang/String;

    #@33
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@36
    aput-object v2, v0, v1

    #@38
    const/4 v1, 0x4

    #@39
    new-instance v2, Ljava/io/ObjectStreamField;

    #@3b
    const-string v3, "alertLaunchImage"

    #@3d
    const-class v4, Ljava/lang/String;

    #@3f
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    aput-object v2, v0, v1

    #@44
    const/4 v1, 0x5

    #@45
    new-instance v2, Ljava/io/ObjectStreamField;

    #@47
    const-string v3, "soundName"

    #@49
    const-class v4, Ljava/lang/String;

    #@4b
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4e
    aput-object v2, v0, v1

    #@50
    const/4 v1, 0x6

    #@51
    new-instance v2, Ljava/io/ObjectStreamField;

    #@53
    const-string v3, "applicationIconBadgeNumber"

    #@55
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@57
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/4 v1, 0x7

    #@5d
    new-instance v2, Ljava/io/ObjectStreamField;

    #@5f
    const-string v3, "userInfoParcelBytes"

    #@61
    const-class v4, [B

    #@63
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@66
    aput-object v2, v0, v1

    #@68
    const/16 v1, 0x8

    #@6a
    new-instance v2, Ljava/io/ObjectStreamField;

    #@6c
    const-string v3, "timeZoneName"

    #@6e
    const-class v4, Ljava/lang/String;

    #@70
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@73
    aput-object v2, v0, v1

    #@75
    const/16 v1, 0x9

    #@77
    new-instance v2, Ljava/io/ObjectStreamField;

    #@79
    const-string v3, "payload"

    #@7b
    const-class v4, Ljava/lang/String;

    #@7d
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@80
    aput-object v2, v0, v1

    #@82
    sput-object v0, Lcom/apportable/ui/LocalNotification;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@84
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@8
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    #@d
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    #@f
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    #@11
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    #@13
    const-wide/16 v0, 0x0

    #@15
    iput-wide v0, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    #@17
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@19
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@1b
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    #@1d
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    #@1f
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    #@21
    return-void
.end method

.method private getTimeZoneOffsetInMillis()I
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    new-instance v1, Ljava/util/Date;

    #@a
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@10
    move-result-wide v2

    #@11
    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@14
    move-result v0

    #@15
    goto :goto_7
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmapAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return-object v0

    #@7
    :cond_7
    :try_start_7
    new-instance v0, Ljava/net/URL;

    #@9
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/io/BufferedInputStream;

    #@12
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@15
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_3a

    #@1f
    if-nez v0, :cond_6

    #@21
    sget-object v1, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v3, "Failed to load bitmap from: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_6

    #@3a
    :catch_3a
    move-exception v0

    #@3b
    sget-object v1, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v3, "Exception whilst downloading bitmap: "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    const/4 v0, 0x0

    #@58
    goto :goto_6
.end method

.method private loadBitmapAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    :try_start_0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    const/4 v0, 0x0

    #@16
    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@5
    move-result-object v1

    #@6
    const-string v0, "userInfoParcelBytes"

    #@8
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    if-eqz v0, :cond_82

    #@10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@13
    move-result-object v2

    #@14
    array-length v3, v0

    #@15
    invoke-virtual {v2, v0, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    #@18
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    #@1b
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@21
    :goto_21
    const-string v0, "fireDate"

    #@23
    const-wide/16 v2, 0x0

    #@25
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    #@28
    move-result-wide v2

    #@29
    iput-wide v2, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@2b
    const-string v0, "alertBody"

    #@2d
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/lang/String;

    #@33
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@35
    const-string v0, "hasAction"

    #@37
    invoke-virtual {v1, v0, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@3a
    move-result v0

    #@3b
    iput-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    #@3d
    const-string v0, "alertAction"

    #@3f
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/String;

    #@45
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    #@47
    const-string v0, "alertLaunchImage"

    #@49
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/lang/String;

    #@4f
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    #@51
    const-string v0, "soundName"

    #@53
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/lang/String;

    #@59
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    #@5b
    const-string v0, "applicationIconBadgeNumber"

    #@5d
    const-wide/16 v2, 0x0

    #@5f
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    #@62
    move-result-wide v2

    #@63
    iput-wide v2, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    #@65
    const-string v0, "timeZoneName"

    #@67
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v0, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Ljava/lang/String;

    #@75
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@77
    const-string v0, "payload"

    #@79
    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Ljava/lang/String;

    #@7f
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    #@81
    return-void

    #@82
    :cond_82
    iput-object v4, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@84
    goto :goto_21
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    const-string v1, "fireDate"

    #@6
    iget-wide v2, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@8
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    #@b
    const-string v1, "alertBody"

    #@d
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    const-string v1, "hasAction"

    #@14
    iget-boolean v2, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@19
    const-string v1, "alertAction"

    #@1b
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@20
    const-string v1, "alertLaunchImage"

    #@22
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@27
    const-string v1, "soundName"

    #@29
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    const-string v1, "applicationIconBadgeNumber"

    #@30
    iget-wide v2, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    #@32
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    #@35
    const-string v1, "timeZoneName"

    #@37
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3c
    const-string v1, "payload"

    #@3e
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@43
    iget-object v1, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@45
    if-nez v1, :cond_51

    #@47
    const-string v1, "userInfoParcelBytes"

    #@49
    const/4 v2, 0x0

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@4d
    :goto_4d
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@50
    return-void

    #@51
    :cond_51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@57
    const/4 v3, 0x0

    #@58
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@5b
    const-string v2, "userInfoParcelBytes"

    #@5d
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@64
    goto :goto_4d
.end method


# virtual methods
.method public compareTo(Lcom/apportable/ui/LocalNotification;)I
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@7
    move-result-wide v2

    #@8
    new-instance v4, Ljava/lang/Long;

    #@a
    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    #@d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v4, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/apportable/ui/LocalNotification;

    #@2
    invoke-virtual {p0, p1}, Lcom/apportable/ui/LocalNotification;->compareTo(Lcom/apportable/ui/LocalNotification;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fireNow()V
    .registers 3

    #@0
    invoke-static {p0}, Lcom/apportable/notifications/Notifications;->scheduleLocalNotification(Lcom/apportable/ui/LocalNotification;)V

    #@3
    const-wide/16 v0, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/LocalNotification;->setFireDate(D)V

    #@8
    return-void
.end method

.method public getAlertAction()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlertBody()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlertLaunchImage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getApplicationIconBadgeNumber()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    #@2
    return-wide v0
.end method

.method public getFireDate()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@2
    return-wide v0
.end method

.method public getFireDateInMilli()J
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@2
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@7
    mul-double/2addr v0, v2

    #@8
    double-to-long v0, v0

    #@9
    return-wide v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getSoundName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_9

    #@4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@b
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@e
    move-result-object v0

    #@f
    goto :goto_8
.end method

.method public getTimeZoneName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimeZoneOffset()I
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    #@3
    move-result v0

    #@4
    div-int/lit16 v0, v0, 0x3e8

    #@6
    return v0
.end method

.method public getUTCFireDateInMilli()J
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZone()Ljava/util/TimeZone;

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@6
    move-result-wide v0

    #@7
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    #@a
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    #@d
    move-result v2

    #@e
    int-to-long v2, v2

    #@f
    add-long/2addr v0, v2

    #@10
    return-wide v0
.end method

.method public getUserInfo()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public hasAction()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    #@2
    return v0
.end method

.method public setAlertAction(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setAlertBody(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setAlertLaunchImage(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setApplicationIconBadgeNumber(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    #@2
    return-void
.end method

.method public setFireDate(D)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    #@2
    return-void
.end method

.method public setHasAction(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    #@2
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    #@2
    return-void
.end method

.method public setIconFromPath(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    #@6
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setPicture(Landroid/graphics/Bitmap;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    #@2
    return-void
.end method

.method public setPictureFromPath(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    #@6
    return-void
.end method

.method public setSoundName(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setTimeZoneName(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setUserInfo(Landroid/os/Bundle;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "<LocalNotification "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    new-instance v1, Ljava/util/Date;

    #@d
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string v1, " "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string v1, ">"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
