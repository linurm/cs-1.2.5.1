.class final Lcom/google/android/gms/internal/gt$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field FM:I

.field FN:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gt$b;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    if-eqz p1, :cond_d

    #@5
    iget v0, p1, Lcom/google/android/gms/internal/gt$b;->FM:I

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/gt$b;->FM:I

    #@9
    iget v0, p1, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@b
    iput v0, p0, Lcom/google/android/gms/internal/gt$b;->FN:I

    #@d
    :cond_d
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gt$b;->FM:I

    #@2
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gt;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/gt$b;)V

    #@5
    return-object v0
.end method
