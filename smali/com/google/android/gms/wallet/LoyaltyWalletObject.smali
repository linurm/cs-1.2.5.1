.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ajA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;"
        }
    .end annotation
.end field

.field ajB:Lcom/google/android/gms/wallet/wobs/f;

.field aji:Ljava/lang/String;

.field ajj:Ljava/lang/String;

.field ajk:Ljava/lang/String;

.field ajl:Ljava/lang/String;

.field ajm:Ljava/lang/String;

.field ajn:Ljava/lang/String;

.field ajo:Ljava/lang/String;

.field ajp:Ljava/lang/String;

.field ajq:Ljava/lang/String;

.field ajr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/p;",
            ">;"
        }
    .end annotation
.end field

.field ajs:Lcom/google/android/gms/wallet/wobs/l;

.field ajt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field aju:Ljava/lang/String;

.field ajv:Ljava/lang/String;

.field ajw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/d;",
            ">;"
        }
    .end annotation
.end field

.field ajx:Z

.field ajy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;"
        }
    .end annotation
.end field

.field ajz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/j;",
            ">;"
        }
    .end annotation
.end field

.field eC:Ljava/lang/String;

.field state:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/j;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/j;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xM:I

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajr:Ljava/util/ArrayList;

    #@c
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajt:Ljava/util/ArrayList;

    #@12
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajw:Ljava/util/ArrayList;

    #@18
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajy:Ljava/util/ArrayList;

    #@1e
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajz:Ljava/util/ArrayList;

    #@24
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajA:Ljava/util/ArrayList;

    #@2a
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/f;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/p;",
            ">;",
            "Lcom/google/android/gms/wallet/wobs/l;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/d;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/j;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/n;",
            ">;",
            "Lcom/google/android/gms/wallet/wobs/f;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aji:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajj:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajk:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajl:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajm:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajn:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajo:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajp:Ljava/lang/String;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajq:Ljava/lang/String;

    #@19
    iput p12, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    #@1b
    iput-object p13, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajr:Ljava/util/ArrayList;

    #@1d
    iput-object p14, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajs:Lcom/google/android/gms/wallet/wobs/l;

    #@1f
    move-object/from16 v0, p15

    #@21
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajt:Ljava/util/ArrayList;

    #@23
    move-object/from16 v0, p16

    #@25
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aju:Ljava/lang/String;

    #@27
    move-object/from16 v0, p17

    #@29
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajv:Ljava/lang/String;

    #@2b
    move-object/from16 v0, p18

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajw:Ljava/util/ArrayList;

    #@2f
    move/from16 v0, p19

    #@31
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajx:Z

    #@33
    move-object/from16 v0, p20

    #@35
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajy:Ljava/util/ArrayList;

    #@37
    move-object/from16 v0, p21

    #@39
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajz:Ljava/util/ArrayList;

    #@3b
    move-object/from16 v0, p22

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajA:Ljava/util/ArrayList;

    #@3f
    move-object/from16 v0, p23

    #@41
    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajB:Lcom/google/android/gms/wallet/wobs/f;

    #@43
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

.method public getAccountId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aji:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBarcodeAlternateText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBarcodeType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBarcodeValue()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProgramName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajk:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/j;->a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
