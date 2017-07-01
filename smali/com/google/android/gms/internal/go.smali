.class public Lcom/google/android/gms/internal/go;
.super Lcom/google/android/gms/internal/gg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/go$a;
    }
.end annotation


# static fields
.field private static final Cp:J

.field private static final Cq:J

.field private static final Cr:J

.field private static final Cs:J

.field private static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final CA:Lcom/google/android/gms/internal/gr;

.field private final CB:Lcom/google/android/gms/internal/gr;

.field private final CC:Lcom/google/android/gms/internal/gr;

.field private final CD:Lcom/google/android/gms/internal/gr;

.field private final CE:Lcom/google/android/gms/internal/gr;

.field private final CF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/gr;",
            ">;"
        }
    .end annotation
.end field

.field private final CG:Ljava/lang/Runnable;

.field private CH:Z

.field private Ct:J

.field private Cu:Lcom/google/android/gms/cast/MediaStatus;

.field private final Cv:Lcom/google/android/gms/internal/gr;

.field private final Cw:Lcom/google/android/gms/internal/gr;

.field private final Cx:Lcom/google/android/gms/internal/gr;

.field private final Cy:Lcom/google/android/gms/internal/gr;

.field private final Cz:Lcom/google/android/gms/internal/gr;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-wide/16 v2, 0x18

    #@2
    const-string v0, "com.google.cast.media"

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->al(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/google/android/gms/internal/go;->NAMESPACE:Ljava/lang/String;

    #@a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@c
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@f
    move-result-wide v0

    #@10
    sput-wide v0, Lcom/google/android/gms/internal/go;->Cp:J

    #@12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@14
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@17
    move-result-wide v0

    #@18
    sput-wide v0, Lcom/google/android/gms/internal/go;->Cq:J

    #@1a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@1c
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1f
    move-result-wide v0

    #@20
    sput-wide v0, Lcom/google/android/gms/internal/go;->Cr:J

    #@22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@24
    const-wide/16 v2, 0x1

    #@26
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@29
    move-result-wide v0

    #@2a
    sput-wide v0, Lcom/google/android/gms/internal/go;->Cs:J

    #@2c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/gms/internal/go;->NAMESPACE:Ljava/lang/String;

    #@2
    const-string v1, "MediaControlChannel"

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/gg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    new-instance v0, Landroid/os/Handler;

    #@9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->mHandler:Landroid/os/Handler;

    #@12
    new-instance v0, Lcom/google/android/gms/internal/go$a;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/go$a;-><init>(Lcom/google/android/gms/internal/go;Lcom/google/android/gms/internal/go$1;)V

    #@18
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CG:Ljava/lang/Runnable;

    #@1a
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@21
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@23
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cq:J

    #@25
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@28
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@33
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@35
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@38
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cw:Lcom/google/android/gms/internal/gr;

    #@3a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@3c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cw:Lcom/google/android/gms/internal/gr;

    #@3e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@43
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@45
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@48
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cx:Lcom/google/android/gms/internal/gr;

    #@4a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@4c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cx:Lcom/google/android/gms/internal/gr;

    #@4e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@53
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@55
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@58
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cy:Lcom/google/android/gms/internal/gr;

    #@5a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@5c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cy:Lcom/google/android/gms/internal/gr;

    #@5e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@61
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@63
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cr:J

    #@65
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@68
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@6a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@6c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@6e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@73
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@75
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@78
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@7a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@7c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@7e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@83
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@85
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@88
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CB:Lcom/google/android/gms/internal/gr;

    #@8a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@8c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CB:Lcom/google/android/gms/internal/gr;

    #@8e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@91
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@93
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@95
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@98
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CC:Lcom/google/android/gms/internal/gr;

    #@9a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@9c
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CC:Lcom/google/android/gms/internal/gr;

    #@9e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a1
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@a3
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@a5
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@a8
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CD:Lcom/google/android/gms/internal/gr;

    #@aa
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@ac
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CD:Lcom/google/android/gms/internal/gr;

    #@ae
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b1
    new-instance v0, Lcom/google/android/gms/internal/gr;

    #@b3
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cp:J

    #@b5
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/gr;-><init>(J)V

    #@b8
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->CE:Lcom/google/android/gms/internal/gr;

    #@ba
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@bc
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CE:Lcom/google/android/gms/internal/gr;

    #@be
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c1
    invoke-direct {p0}, Lcom/google/android/gms/internal/go;->et()V

    #@c4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/go;)Ljava/util/List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@2
    return-object v0
.end method

.method private a(JLorg/json/JSONObject;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gr;->p(J)Z

    #@7
    move-result v3

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->ev()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_8b

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gr;->p(J)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_8b

    #@18
    move v0, v1

    #@19
    :goto_19
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@1b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gr;->ev()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_29

    #@21
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@23
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/gr;->p(J)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_39

    #@29
    :cond_29
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->CB:Lcom/google/android/gms/internal/gr;

    #@2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gr;->ev()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_8d

    #@31
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->CB:Lcom/google/android/gms/internal/gr;

    #@33
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/gr;->p(J)Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_8d

    #@39
    :cond_39
    :goto_39
    if-eqz v0, :cond_96

    #@3b
    const/4 v0, 0x2

    #@3c
    :goto_3c
    if-eqz v1, :cond_40

    #@3e
    or-int/lit8 v0, v0, 0x1

    #@40
    :cond_40
    if-nez v3, :cond_46

    #@42
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@44
    if-nez v1, :cond_8f

    #@46
    :cond_46
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    #@48
    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    #@4b
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@4d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@50
    move-result-wide v0

    #@51
    iput-wide v0, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@53
    const/4 v0, 0x7

    #@54
    :goto_54
    and-int/lit8 v1, v0, 0x1

    #@56
    if-eqz v1, :cond_61

    #@58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5b
    move-result-wide v4

    #@5c
    iput-wide v4, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->onStatusUpdated()V

    #@61
    :cond_61
    and-int/lit8 v1, v0, 0x2

    #@63
    if-eqz v1, :cond_6e

    #@65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@68
    move-result-wide v4

    #@69
    iput-wide v4, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->onStatusUpdated()V

    #@6e
    :cond_6e
    and-int/lit8 v0, v0, 0x4

    #@70
    if-eqz v0, :cond_75

    #@72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->onMetadataUpdated()V

    #@75
    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v1

    #@7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_98

    #@81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@87
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/gr;->c(JI)Z

    #@8a
    goto :goto_7b

    #@8b
    :cond_8b
    move v0, v2

    #@8c
    goto :goto_19

    #@8d
    :cond_8d
    move v1, v2

    #@8e
    goto :goto_39

    #@8f
    :cond_8f
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@91
    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    #@94
    move-result v0

    #@95
    goto :goto_54

    #@96
    :cond_96
    move v0, v2

    #@97
    goto :goto_3c

    #@98
    :cond_98
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/go;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/go;->CH:Z

    #@2
    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/go;Z)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@3
    return-void
.end method

.method private et()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@4
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@b
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->clear()V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->clear()V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->clear()V

    #@1a
    return-void
.end method

.method private z(Z)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/go;->CH:Z

    #@2
    if-eq v0, p1, :cond_11

    #@4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/go;->CH:Z

    #@6
    if-eqz p1, :cond_12

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mHandler:Landroid/os/Handler;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CG:Ljava/lang/Runnable;

    #@c
    sget-wide v2, Lcom/google/android/gms/internal/go;->Cs:J

    #@e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    :cond_11
    :goto_11
    return-void

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mHandler:Landroid/os/Handler;

    #@14
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CG:Ljava/lang/Runnable;

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@19
    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/gq;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CC:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "GET_STATUS"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@20
    if-eqz v1, :cond_2d

    #@22
    const-string v1, "mediaSessionId"

    #@24
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@26
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->ea()J

    #@29
    move-result-wide v4

    #@2a
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_36

    #@2d
    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    const/4 v1, 0x0

    #@32
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@35
    return-wide v2

    #@36
    :catch_36
    move-exception v1

    #@37
    goto :goto_2d
.end method

.method public a(Lcom/google/android/gms/internal/gq;DLorg/json/JSONObject;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_25

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "Volume cannot be "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    #@27
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@2d
    move-result-wide v2

    #@2e
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CA:Lcom/google/android/gms/internal/gr;

    #@30
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@33
    const/4 v1, 0x1

    #@34
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@37
    :try_start_37
    const-string v1, "requestId"

    #@39
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@3c
    const-string v1, "type"

    #@3e
    const-string v4, "SET_VOLUME"

    #@40
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@43
    const-string v1, "mediaSessionId"

    #@45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@48
    move-result-wide v4

    #@49
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@4c
    new-instance v1, Lorg/json/JSONObject;

    #@4e
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@51
    const-string v4, "level"

    #@53
    invoke-virtual {v1, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@56
    const-string v4, "volume"

    #@58
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5b
    if-eqz p4, :cond_62

    #@5d
    const-string v1, "customData"

    #@5f
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_62} :catch_6b

    #@62
    :cond_62
    :goto_62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    const/4 v1, 0x0

    #@67
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@6a
    return-wide v2

    #@6b
    :catch_6b
    move-exception v1

    #@6c
    goto :goto_62
.end method

.method public a(Lcom/google/android/gms/internal/gq;JILorg/json/JSONObject;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    new-instance v0, Lorg/json/JSONObject;

    #@3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@9
    move-result-wide v2

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cz:Lcom/google/android/gms/internal/gr;

    #@c
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@f
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "SEEK"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    const-string v1, "currentTime"

    #@29
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/gi;->o(J)D

    #@2c
    move-result-wide v4

    #@2d
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@30
    if-ne p4, v6, :cond_49

    #@32
    const-string v1, "resumeState"

    #@34
    const-string v4, "PLAYBACK_START"

    #@36
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@39
    :cond_39
    :goto_39
    if-eqz p5, :cond_40

    #@3b
    const-string v1, "customData"

    #@3d
    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_40} :catch_54

    #@40
    :cond_40
    :goto_40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    const/4 v1, 0x0

    #@45
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@48
    return-wide v2

    #@49
    :cond_49
    const/4 v1, 0x2

    #@4a
    if-ne p4, v1, :cond_39

    #@4c
    :try_start_4c
    const-string v1, "resumeState"

    #@4e
    const-string v4, "PLAYBACK_PAUSE"

    #@50
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_53} :catch_54

    #@53
    goto :goto_39

    #@54
    :catch_54
    move-exception v1

    #@55
    goto :goto_40
.end method

.method public a(Lcom/google/android/gms/internal/gq;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "LOAD"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "media"

    #@20
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->dZ()Lorg/json/JSONObject;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@27
    const-string v1, "autoplay"

    #@29
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@2c
    const-string v1, "currentTime"

    #@2e
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/gi;->o(J)D

    #@31
    move-result-wide v4

    #@32
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@35
    if-eqz p6, :cond_3c

    #@37
    const-string v1, "customData"

    #@39
    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3c} :catch_45

    #@3c
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    const/4 v1, 0x0

    #@41
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@44
    return-wide v2

    #@45
    :catch_45
    move-exception v1

    #@46
    goto :goto_3c
.end method

.method public a(Lcom/google/android/gms/internal/gq;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CE:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "EDIT_TRACKS_INFO"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    if-eqz p2, :cond_29

    #@20
    const-string v1, "textTrackStyle"

    #@22
    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->dZ()Lorg/json/JSONObject;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@29
    :cond_29
    const-string v1, "mediaSessionId"

    #@2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@2e
    move-result-wide v4

    #@2f
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_32} :catch_3b

    #@32
    :goto_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    const/4 v1, 0x0

    #@37
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@3a
    return-wide v2

    #@3b
    :catch_3b
    move-exception v1

    #@3c
    goto :goto_32
.end method

.method public a(Lcom/google/android/gms/internal/gq;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cw:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "PAUSE"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    if-eqz p2, :cond_2e

    #@29
    const-string v1, "customData"

    #@2b
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    #@2e
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@36
    return-wide v2

    #@37
    :catch_37
    move-exception v1

    #@38
    goto :goto_2e
.end method

.method public a(Lcom/google/android/gms/internal/gq;ZLorg/json/JSONObject;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->CB:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "SET_VOLUME"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    new-instance v1, Lorg/json/JSONObject;

    #@29
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@2c
    const-string v4, "muted"

    #@2e
    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@31
    const-string v4, "volume"

    #@33
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@36
    if-eqz p3, :cond_3d

    #@38
    const-string v1, "customData"

    #@3a
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3d} :catch_46

    #@3d
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    const/4 v1, 0x0

    #@42
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@45
    return-wide v2

    #@46
    :catch_46
    move-exception v1

    #@47
    goto :goto_3d
.end method

.method public a(Lcom/google/android/gms/internal/gq;[J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CD:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v0, 0x1

    #@f
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v0, "requestId"

    #@14
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v0, "type"

    #@19
    const-string v4, "EDIT_TRACKS_INFO"

    #@1b
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v0, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    new-instance v4, Lorg/json/JSONArray;

    #@29
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    #@2c
    const/4 v0, 0x0

    #@2d
    :goto_2d
    array-length v5, p2

    #@2e
    if-ge v0, v5, :cond_38

    #@30
    aget-wide v6, p2, v0

    #@32
    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    #@35
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_2d

    #@38
    :cond_38
    const-string v0, "activeTrackIds"

    #@3a
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3d} :catch_46

    #@3d
    :goto_3d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    const/4 v1, 0x0

    #@42
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@45
    return-wide v2

    #@46
    :catch_46
    move-exception v0

    #@47
    goto :goto_3d
.end method

.method public a(JI)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gr;->c(JI)Z

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method public final ai(Ljava/lang/String;)V
    .registers 11

    #@0
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->BD:Lcom/google/android/gms/internal/gn;

    #@5
    const-string v1, "message received: %s"

    #@7
    new-array v2, v7, [Ljava/lang/Object;

    #@9
    aput-object p1, v2, v6

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    #@10
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@13
    const-string v1, "type"

    #@15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const-string v2, "requestId"

    #@1b
    const-wide/16 v4, -0x1

    #@1d
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    #@20
    move-result-wide v2

    #@21
    const-string v4, "MEDIA_STATUS"

    #@23
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_61

    #@29
    const-string v1, "status"

    #@2b
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    #@32
    move-result v1

    #@33
    if-lez v1, :cond_3e

    #@35
    const/4 v1, 0x0

    #@36
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@39
    move-result-object v0

    #@3a
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/go;->a(JLorg/json/JSONObject;)V

    #@3d
    :cond_3d
    :goto_3d
    return-void

    #@3e
    :cond_3e
    const/4 v0, 0x0

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->onStatusUpdated()V

    #@44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->onMetadataUpdated()V

    #@47
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CC:Lcom/google/android/gms/internal/gr;

    #@49
    const/4 v1, 0x0

    #@4a
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/gr;->c(JI)Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_4d} :catch_4e

    #@4d
    goto :goto_3d

    #@4e
    :catch_4e
    move-exception v0

    #@4f
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->BD:Lcom/google/android/gms/internal/gn;

    #@51
    const-string v2, "Message is malformed (%s); ignoring: %s"

    #@53
    new-array v3, v8, [Ljava/lang/Object;

    #@55
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    aput-object v0, v3, v6

    #@5b
    aput-object p1, v3, v7

    #@5d
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    #@60
    goto :goto_3d

    #@61
    :cond_61
    :try_start_61
    const-string v4, "INVALID_PLAYER_STATE"

    #@63
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_90

    #@69
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->BD:Lcom/google/android/gms/internal/gn;

    #@6b
    const-string v4, "received unexpected error: Invalid Player State."

    #@6d
    const/4 v5, 0x0

    #@6e
    new-array v5, v5, [Ljava/lang/Object;

    #@70
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gn;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    #@73
    const-string v1, "customData"

    #@75
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@78
    move-result-object v1

    #@79
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@7b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v4

    #@7f
    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_3d

    #@85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@8b
    const/4 v5, 0x1

    #@8c
    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/internal/gr;->b(JILorg/json/JSONObject;)Z

    #@8f
    goto :goto_7f

    #@90
    :cond_90
    const-string v4, "LOAD_FAILED"

    #@92
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_a5

    #@98
    const-string v1, "customData"

    #@9a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@9d
    move-result-object v0

    #@9e
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@a0
    const/4 v4, 0x1

    #@a1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/gr;->b(JILorg/json/JSONObject;)Z

    #@a4
    goto :goto_3d

    #@a5
    :cond_a5
    const-string v4, "LOAD_CANCELLED"

    #@a7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_ba

    #@ad
    const-string v1, "customData"

    #@af
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@b2
    move-result-object v0

    #@b3
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cv:Lcom/google/android/gms/internal/gr;

    #@b5
    const/4 v4, 0x2

    #@b6
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/gr;->b(JILorg/json/JSONObject;)Z

    #@b9
    goto :goto_3d

    #@ba
    :cond_ba
    const-string v4, "INVALID_REQUEST"

    #@bc
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v1

    #@c0
    if-eqz v1, :cond_3d

    #@c2
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->BD:Lcom/google/android/gms/internal/gn;

    #@c4
    const-string v4, "received unexpected error: Invalid Request."

    #@c6
    const/4 v5, 0x0

    #@c7
    new-array v5, v5, [Ljava/lang/Object;

    #@c9
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gn;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    #@cc
    const-string v1, "customData"

    #@ce
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@d1
    move-result-object v1

    #@d2
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->CF:Ljava/util/List;

    #@d4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d7
    move-result-object v4

    #@d8
    :goto_d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@db
    move-result v0

    #@dc
    if-eqz v0, :cond_3d

    #@de
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e1
    move-result-object v0

    #@e2
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@e4
    const/4 v5, 0x1

    #@e5
    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/internal/gr;->b(JILorg/json/JSONObject;)Z
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_e8} :catch_4e

    #@e8
    goto :goto_d8
.end method

.method public b(Lcom/google/android/gms/internal/gq;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cy:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "STOP"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    if-eqz p2, :cond_2e

    #@29
    const-string v1, "customData"

    #@2b
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    #@2e
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@36
    return-wide v2

    #@37
    :catch_37
    move-exception v1

    #@38
    goto :goto_2e
.end method

.method public c(Lcom/google/android/gms/internal/gq;Lorg/json/JSONObject;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ed()J

    #@8
    move-result-wide v2

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cx:Lcom/google/android/gms/internal/gr;

    #@b
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/gr;->a(JLcom/google/android/gms/internal/gq;)V

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/go;->z(Z)V

    #@12
    :try_start_12
    const-string v1, "requestId"

    #@14
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    const-string v1, "type"

    #@19
    const-string v4, "PLAY"

    #@1b
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1e
    const-string v1, "mediaSessionId"

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->ea()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@27
    if-eqz p2, :cond_2e

    #@29
    const-string v1, "customData"

    #@2b
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    #@2e
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;JLjava/lang/String;)V

    #@36
    return-wide v2

    #@37
    :catch_37
    move-exception v1

    #@38
    goto :goto_2e
.end method

.method public ea()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "No current media session"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->ea()J

    #@11
    move-result-wide v0

    #@12
    return-wide v0
.end method

.method public ee()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/go;->et()V

    #@3
    return-void
.end method

.method public getApproximateStreamPosition()J
    .registers 13

    #@0
    const-wide/16 v2, 0x0

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    #@5
    move-result-object v8

    #@6
    if-nez v8, :cond_a

    #@8
    :cond_8
    move-wide v0, v2

    #@9
    :cond_9
    :goto_9
    return-wide v0

    #@a
    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_8

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    #@15
    move-result-wide v10

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    #@1b
    move-result-wide v0

    #@1c
    iget-object v4, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@1e
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    #@21
    move-result v4

    #@22
    const-wide/16 v6, 0x0

    #@24
    cmpl-double v5, v10, v6

    #@26
    if-eqz v5, :cond_9

    #@28
    const/4 v5, 0x2

    #@29
    if-ne v4, v5, :cond_9

    #@2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e
    move-result-wide v4

    #@2f
    iget-wide v6, p0, Lcom/google/android/gms/internal/go;->Ct:J

    #@31
    sub-long/2addr v4, v6

    #@32
    cmp-long v6, v4, v2

    #@34
    if-gez v6, :cond_4f

    #@36
    move-wide v6, v2

    #@37
    :goto_37
    cmp-long v4, v6, v2

    #@39
    if-eqz v4, :cond_9

    #@3b
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    #@3e
    move-result-wide v4

    #@3f
    long-to-double v6, v6

    #@40
    mul-double/2addr v6, v10

    #@41
    double-to-long v6, v6

    #@42
    add-long/2addr v0, v6

    #@43
    cmp-long v6, v0, v4

    #@45
    if-lez v6, :cond_49

    #@47
    move-wide v0, v4

    #@48
    goto :goto_9

    #@49
    :cond_49
    cmp-long v4, v0, v2

    #@4b
    if-gez v4, :cond_9

    #@4d
    move-wide v0, v2

    #@4e
    goto :goto_9

    #@4f
    :cond_4f
    move-wide v6, v4

    #@50
    goto :goto_37
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->Cu:Lcom/google/android/gms/cast/MediaStatus;

    #@2
    return-object v0
.end method

.method public getStreamDuration()J
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    #@9
    move-result-wide v0

    #@a
    :goto_a
    return-wide v0

    #@b
    :cond_b
    const-wide/16 v0, 0x0

    #@d
    goto :goto_a
.end method

.method protected onMetadataUpdated()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStatusUpdated()V
    .registers 1

    #@0
    return-void
.end method
