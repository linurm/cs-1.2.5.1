.class final Lcom/google/android/gms/internal/u$a;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final kI:Lcom/google/android/gms/internal/ep;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/ep;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ep;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/u$a;->kI:Lcom/google/android/gms/internal/ep;

    #@a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/u$a;)Lcom/google/android/gms/internal/ep;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$a;->kI:Lcom/google/android/gms/internal/ep;

    #@2
    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$a;->kI:Lcom/google/android/gms/internal/ep;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ep;->c(Landroid/view/MotionEvent;)V

    #@5
    const/4 v0, 0x0

    #@6
    return v0
.end method
