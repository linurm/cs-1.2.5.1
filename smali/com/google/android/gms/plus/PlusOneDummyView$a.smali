.class Lcom/google/android/gms/plus/PlusOneDummyView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$a;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$a;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$a;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    const v1, 0x1080004

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public isValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
