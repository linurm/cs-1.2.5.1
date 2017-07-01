.class public Lcom/google/android/gms/internal/ib$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ia;


# instance fields
.field final Hp:Lcom/google/android/gms/internal/hy$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;"
        }
    .end annotation
.end field

.field final eM:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ia;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ia;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ib$b;->CREATOR:Lcom/google/android/gms/internal/ia;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/hy$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ib$b;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ib$b;->eM:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ib$b;->Hp:Lcom/google/android/gms/internal/hy$a;

    #@9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/hy$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ib$b;->versionCode:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ib$b;->eM:Ljava/lang/String;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/ib$b;->Hp:Lcom/google/android/gms/internal/hy$a;

    #@a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib$b;->CREATOR:Lcom/google/android/gms/internal/ia;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib$b;->CREATOR:Lcom/google/android/gms/internal/ia;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ia;->a(Lcom/google/android/gms/internal/ib$b;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
