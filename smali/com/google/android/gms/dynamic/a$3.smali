.class Lcom/google/android/gms/dynamic/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mb:Lcom/google/android/gms/dynamic/a;

.field final synthetic Me:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$3;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$3;->Me:Landroid/os/Bundle;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$3;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$3;->Me:Landroid/os/Bundle;

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    #@b
    return-void
.end method

.method public getState()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
