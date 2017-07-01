.class Lcom/google/android/gms/dynamic/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mb:Lcom/google/android/gms/dynamic/a;

.field final synthetic Mc:Landroid/app/Activity;

.field final synthetic Md:Landroid/os/Bundle;

.field final synthetic Me:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$2;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$2;->Mc:Landroid/app/Activity;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/dynamic/a$2;->Md:Landroid/os/Bundle;

    #@6
    iput-object p4, p0, Lcom/google/android/gms/dynamic/a$2;->Me:Landroid/os/Bundle;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$2;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$2;->Mc:Landroid/app/Activity;

    #@8
    iget-object v2, p0, Lcom/google/android/gms/dynamic/a$2;->Md:Landroid/os/Bundle;

    #@a
    iget-object v3, p0, Lcom/google/android/gms/dynamic/a$2;->Me:Landroid/os/Bundle;

    #@c
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public getState()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
