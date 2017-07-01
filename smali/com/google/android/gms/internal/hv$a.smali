.class public final Lcom/google/android/gms/internal/hv$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hx;


# instance fields
.field final GZ:Ljava/lang/String;

.field final Ha:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hx;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hx;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/hx;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/hv$a;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/hv$a;->GZ:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/hv$a;->Ha:I

    #@9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/hv$a;->versionCode:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/hv$a;->GZ:Ljava/lang/String;

    #@8
    iput p2, p0, Lcom/google/android/gms/internal/hv$a;->Ha:I

    #@a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/hx;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/hx;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hx;->a(Lcom/google/android/gms/internal/hv$a;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
