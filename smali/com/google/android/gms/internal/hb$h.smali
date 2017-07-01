.class public final Lcom/google/android/gms/internal/hb$h;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Gi:Lcom/google/android/gms/internal/hb;

.field public final Gn:Landroid/os/Bundle;

.field public final Go:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hb;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    const/4 v0, 0x1

    #@3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@a
    iput p2, p0, Lcom/google/android/gms/internal/hb$h;->statusCode:I

    #@c
    iput-object p3, p0, Lcom/google/android/gms/internal/hb$h;->Go:Landroid/os/IBinder;

    #@e
    iput-object p4, p0, Lcom/google/android/gms/internal/hb$h;->Gn:Landroid/os/Bundle;

    #@10
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Boolean;)V
    .registers 8

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p1, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@6
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/hb$h;->statusCode:I

    #@c
    sparse-switch v0, :sswitch_data_e2

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gn:Landroid/os/Bundle;

    #@11
    if-eqz v0, :cond_de

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gn:Landroid/os/Bundle;

    #@15
    const-string v2, "pendingIntent"

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/app/PendingIntent;

    #@1d
    :goto_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@1f
    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->d(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hb$f;

    #@22
    move-result-object v2

    #@23
    if-eqz v2, :cond_43

    #@25
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@27
    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->e(Lcom/google/android/gms/internal/hb;)Landroid/content/Context;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v2}, Lcom/google/android/gms/internal/hd;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;

    #@2e
    move-result-object v2

    #@2f
    iget-object v3, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    iget-object v4, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@37
    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->d(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hb$f;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)V

    #@3e
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@40
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Lcom/google/android/gms/internal/hb$f;)Lcom/google/android/gms/internal/hb$f;

    #@43
    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@45
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@48
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@4a
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@4d
    iget-object v1, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@4f
    invoke-static {v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;

    #@52
    move-result-object v1

    #@53
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    #@55
    iget v3, p0, Lcom/google/android/gms/internal/hb$h;->statusCode:I

    #@57
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@5a
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    #@5d
    goto :goto_9

    #@5e
    :sswitch_5e
    :try_start_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Go:Landroid/os/IBinder;

    #@60
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/hb;->bv()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_97

    #@70
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@72
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@74
    iget-object v3, p0, Lcom/google/android/gms/internal/hb$h;->Go:Landroid/os/IBinder;

    #@76
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hb;->x(Landroid/os/IBinder;)Landroid/os/IInterface;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@7d
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@7f
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->c(Lcom/google/android/gms/internal/hb;)Landroid/os/IInterface;

    #@82
    move-result-object v0

    #@83
    if-eqz v0, :cond_97

    #@85
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@87
    const/4 v2, 0x3

    #@88
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@8b
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@8d
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc;->cp()V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_94} :catch_96

    #@94
    goto/16 :goto_9

    #@96
    :catch_96
    move-exception v0

    #@97
    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@99
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->e(Lcom/google/android/gms/internal/hb;)Landroid/content/Context;

    #@9c
    move-result-object v0

    #@9d
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;

    #@a0
    move-result-object v0

    #@a1
    iget-object v2, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@a3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    iget-object v3, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@a9
    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->d(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hb$f;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hd;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)V

    #@b0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@b2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Lcom/google/android/gms/internal/hb$f;)Lcom/google/android/gms/internal/hb$f;

    #@b5
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@b7
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@ba
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@bc
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@bf
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@c1
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;

    #@c4
    move-result-object v0

    #@c5
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    #@c7
    const/16 v3, 0x8

    #@c9
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@cc
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    #@cf
    goto/16 :goto_9

    #@d1
    :sswitch_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$h;->Gi:Lcom/google/android/gms/internal/hb;

    #@d3
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@d6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d8
    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    #@da
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v0

    #@de
    :cond_de
    move-object v0, v1

    #@df
    goto/16 :goto_1d

    #@e1
    nop

    #@e2
    :sswitch_data_e2
    .sparse-switch
        0x0 -> :sswitch_5e
        0xa -> :sswitch_d1
    .end sparse-switch
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Ljava/lang/Boolean;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hb$h;->b(Ljava/lang/Boolean;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 1

    #@0
    return-void
.end method
