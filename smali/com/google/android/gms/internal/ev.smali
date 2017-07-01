.class public final Lcom/google/android/gms/internal/ev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ew;


# instance fields
.field public sw:Ljava/lang/String;

.field public sx:I

.field public sy:I

.field public sz:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ew;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ew;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ev;->CREATOR:Lcom/google/android/gms/internal/ew;

    #@7
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 10

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "afma-sdk-a-v"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "."

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "."

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    if-eqz p3, :cond_34

    #@21
    const-string v0, "0"

    #@23
    :goto_23
    const/4 v1, 0x1

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    move-object v0, p0

    #@2d
    move v3, p1

    #@2e
    move v4, p2

    #@2f
    move v5, p3

    #@30
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;-><init>(ILjava/lang/String;IIZ)V

    #@33
    return-void

    #@34
    :cond_34
    const-string v0, "1"

    #@36
    goto :goto_23
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ev;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/ev;->sx:I

    #@9
    iput p4, p0, Lcom/google/android/gms/internal/ev;->sy:I

    #@b
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ev;->sz:Z

    #@d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/ev;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
