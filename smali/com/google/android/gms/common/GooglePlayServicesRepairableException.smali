.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;


# instance fields
.field private final yY:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 4

    #@0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@3
    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->yY:I

    #@5
    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->yY:I

    #@2
    return v0
.end method
