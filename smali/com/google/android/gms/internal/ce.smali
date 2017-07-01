.class public final Lcom/google/android/gms/internal/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cd;


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final oa:Ljava/lang/String;

.field public final ob:Ljava/lang/String;

.field public final oc:Ljava/lang/String;

.field public final od:Ljava/lang/String;

.field public final oe:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/cd;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cd;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ce;->CREATOR:Lcom/google/android/gms/internal/cd;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ce;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ce;->oa:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ce;->ob:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ce;->mimeType:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/internal/ce;->packageName:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/ce;->oc:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/internal/ce;->od:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/internal/ce;->oe:Ljava/lang/String;

    #@13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    #@0
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move-object v7, p6

    #@8
    move-object/from16 v8, p7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ce;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/ce;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
