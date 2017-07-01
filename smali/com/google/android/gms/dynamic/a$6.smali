.class Lcom/google/android/gms/dynamic/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mb:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$6;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$6;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onStart()V

    #@9
    return-void
.end method

.method public getState()I
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    return v0
.end method
