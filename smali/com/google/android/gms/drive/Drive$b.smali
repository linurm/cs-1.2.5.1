.class public Lcom/google/android/gms/drive/Drive$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final HM:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/Drive$b;-><init>(Landroid/os/Bundle;)V

    #@8
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/Drive$b;->HM:Landroid/os/Bundle;

    #@5
    return-void
.end method


# virtual methods
.method public gj()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/Drive$b;->HM:Landroid/os/Bundle;

    #@2
    return-object v0
.end method
