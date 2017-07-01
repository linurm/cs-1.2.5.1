.class Lcom/google/android/gms/tagmanager/bm;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public lR()Lcom/google/android/gms/tagmanager/bl;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bm;->lj()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    if-ge v0, v1, :cond_e

    #@8
    new-instance v0, Lcom/google/android/gms/tagmanager/av;

    #@a
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    new-instance v0, Lcom/google/android/gms/tagmanager/aw;

    #@10
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/aw;-><init>()V

    #@13
    goto :goto_d
.end method

.method lj()I
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    return v0
.end method
