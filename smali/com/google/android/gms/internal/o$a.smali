.class public Lcom/google/android/gms/internal/o$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic km:Lcom/google/android/gms/internal/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/o;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/o$a;->km:Lcom/google/android/gms/internal/o;

    #@2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@5
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/o$a;->km:Lcom/google/android/gms/internal/o;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method
