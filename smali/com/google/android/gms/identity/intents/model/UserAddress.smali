.class public final Lcom/google/android/gms/identity/intents/model/UserAddress;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/intents/model/UserAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field UH:Ljava/lang/String;

.field UI:Ljava/lang/String;

.field UJ:Ljava/lang/String;

.field UK:Ljava/lang/String;

.field UL:Ljava/lang/String;

.field UM:Ljava/lang/String;

.field UN:Ljava/lang/String;

.field UO:Ljava/lang/String;

.field UP:Ljava/lang/String;

.field UQ:Ljava/lang/String;

.field UR:Z

.field US:Ljava/lang/String;

.field UT:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rf:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/identity/intents/model/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/model/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UH:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UI:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UJ:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UK:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UL:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UM:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UN:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->rf:Ljava/lang/String;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UO:Ljava/lang/String;

    #@19
    iput-object p12, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UP:Ljava/lang/String;

    #@1b
    iput-object p13, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UQ:Ljava/lang/String;

    #@1d
    iput-boolean p14, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UR:Z

    #@1f
    move-object/from16 v0, p15

    #@21
    iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->US:Ljava/lang/String;

    #@23
    move-object/from16 v0, p16

    #@25
    iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UT:Ljava/lang/String;

    #@27
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    #@0
    if-eqz p0, :cond_a

    #@2
    const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"

    #@4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"

    #@e
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    #@14
    goto :goto_b
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UH:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UJ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress4()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UK:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress5()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UM:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->US:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->rf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UT:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UO:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xM:I

    #@2
    return v0
.end method

.method public isPostBox()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UR:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/model/b;->a(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
