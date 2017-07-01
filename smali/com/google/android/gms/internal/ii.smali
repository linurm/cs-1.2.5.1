.class public final Lcom/google/android/gms/internal/ii;
.super Ljava/lang/Object;


# static fields
.field private static Hu:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/google/android/gms/internal/ii;->Hu:Ljava/util/regex/Pattern;

    #@3
    return-void
.end method

.method public static F(Landroid/content/Context;)Z
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android.hardware.type.watch"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static aB(I)I
    .registers 2

    #@0
    div-int/lit16 v0, p0, 0x3e8

    #@2
    return v0
.end method

.method public static aC(I)I
    .registers 2

    #@0
    rem-int/lit16 v0, p0, 0x3e8

    #@2
    div-int/lit8 v0, v0, 0x64

    #@4
    return v0
.end method

.method public static aD(I)Z
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/ii;->aC(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_8
.end method
