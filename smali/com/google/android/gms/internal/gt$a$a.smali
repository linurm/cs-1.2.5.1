.class final Lcom/google/android/gms/internal/gt$a$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gt$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gt$a$a;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gt$a;->fh()Lcom/google/android/gms/internal/gt$a;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
