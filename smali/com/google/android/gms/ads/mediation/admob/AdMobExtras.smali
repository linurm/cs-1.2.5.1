.class public final Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_d

    #@5
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@a
    :goto_a
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method
