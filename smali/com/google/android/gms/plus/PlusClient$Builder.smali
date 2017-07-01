.class public Lcom/google/android/gms/plus/PlusClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final abA:Lcom/google/android/gms/plus/internal/i;

.field private final aby:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private final abz:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->aby:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abz:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@9
    new-instance v0, Lcom/google/android/gms/plus/internal/i;

    #@b
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/i;-><init>(Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@12
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/PlusClient;
    .registers 7

    #@0
    new-instance v0, Lcom/google/android/gms/plus/PlusClient;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/internal/e;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->aby:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@8
    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abz:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@a
    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@c
    invoke-virtual {v5}, Lcom/google/android/gms/plus/internal/i;->kj()Lcom/google/android/gms/plus/internal/h;

    #@f
    move-result-object v5

    #@10
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V

    #@13
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/PlusClient;-><init>(Lcom/google/android/gms/plus/internal/e;)V

    #@16
    return-object v0
.end method

.method public clearScopes()Lcom/google/android/gms/plus/PlusClient$Builder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/i;->ki()Lcom/google/android/gms/plus/internal/i;

    #@5
    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->bz(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    #@5
    return-object p0
.end method

.method public varargs setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->f([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    #@5
    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abA:Lcom/google/android/gms/plus/internal/i;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->e([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    #@5
    return-object p0
.end method
