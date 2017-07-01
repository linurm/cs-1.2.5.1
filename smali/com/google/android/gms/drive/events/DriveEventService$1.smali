.class Lcom/google/android/gms/drive/events/DriveEventService$1;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/events/DriveEventService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ii:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$1;->Ii:Lcom/google/android/gms/drive/events/DriveEventService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    #@0
    const-string v0, "DriveEventService"

    #@2
    const-string v1, "onTransact"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$1;->Ii:Lcom/google/android/gms/drive/events/DriveEventService;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/drive/events/DriveEventService;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;

    #@13
    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->gn()Ljava/util/concurrent/LinkedBlockingDeque;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$1;->Ii:Lcom/google/android/gms/drive/events/DriveEventService;

    #@1c
    new-instance v1, Landroid/content/Intent;

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService$1;->Ii:Lcom/google/android/gms/drive/events/DriveEventService;

    #@20
    iget-object v3, p0, Lcom/google/android/gms/drive/events/DriveEventService$1;->Ii:Lcom/google/android/gms/drive/events/DriveEventService;

    #@22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/events/DriveEventService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@2c
    const/4 v0, 0x1

    #@2d
    return v0
.end method
