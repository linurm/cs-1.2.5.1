.class public Lcom/google/android/gms/internal/fm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fn;


# instance fields
.field public final id:I

.field final xM:I

.field final xY:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fn;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fn;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fm;->CREATOR:Lcom/google/android/gms/internal/fn;

    #@7
    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/fm;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/fm;->id:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/fm;->xY:Landroid/os/Bundle;

    #@9
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fm;->CREATOR:Lcom/google/android/gms/internal/fn;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fm;->CREATOR:Lcom/google/android/gms/internal/fn;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fn;->a(Lcom/google/android/gms/internal/fm;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
