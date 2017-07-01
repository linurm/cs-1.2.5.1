.class final Lcom/google/android/gms/maps/GoogleMap$a;
.super Lcom/google/android/gms/maps/internal/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Zr:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/b$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zr:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    #@5
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zr:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onCancel()V

    #@5
    return-void
.end method

.method public onFinish()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zr:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onFinish()V

    #@5
    return-void
.end method
