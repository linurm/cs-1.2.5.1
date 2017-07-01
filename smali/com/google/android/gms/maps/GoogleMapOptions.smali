.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;


# instance fields
.field private ZA:Ljava/lang/Boolean;

.field private ZB:Ljava/lang/Boolean;

.field private Zs:Ljava/lang/Boolean;

.field private Zt:Ljava/lang/Boolean;

.field private Zu:I

.field private Zv:Lcom/google/android/gms/maps/model/CameraPosition;

.field private Zw:Ljava/lang/Boolean;

.field private Zx:Ljava/lang/Boolean;

.field private Zy:Ljava/lang/Boolean;

.field private Zz:Ljava/lang/Boolean;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zu:I

    #@6
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->xM:I

    #@9
    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zu:I

    #@6
    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->xM:I

    #@8
    invoke-static {p2}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zs:Ljava/lang/Boolean;

    #@e
    invoke-static {p3}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zt:Ljava/lang/Boolean;

    #@14
    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zu:I

    #@16
    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zv:Lcom/google/android/gms/maps/model/CameraPosition;

    #@18
    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zw:Ljava/lang/Boolean;

    #@1e
    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zx:Ljava/lang/Boolean;

    #@24
    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zy:Ljava/lang/Boolean;

    #@2a
    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zz:Ljava/lang/Boolean;

    #@30
    invoke-static {p10}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZA:Ljava/lang/Boolean;

    #@36
    invoke-static {p11}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZB:Ljava/lang/Boolean;

    #@3c
    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 10

    #@0
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x7

    #@3
    const/4 v5, 0x6

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    if-nez p1, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    sget-object v1, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    #@10
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v1

    #@14
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    #@16
    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    #@19
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_27

    #@1f
    const/4 v2, -0x1

    #@20
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@23
    move-result v2

    #@24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@27
    :cond_27
    const/16 v2, 0xd

    #@29
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_38

    #@2f
    const/16 v2, 0xd

    #@31
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@34
    move-result v2

    #@35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@38
    :cond_38
    const/16 v2, 0xc

    #@3a
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_49

    #@40
    const/16 v2, 0xc

    #@42
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@45
    move-result v2

    #@46
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@49
    :cond_49
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_56

    #@4f
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@52
    move-result v2

    #@53
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@56
    :cond_56
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_63

    #@5c
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5f
    move-result v2

    #@60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@63
    :cond_63
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_70

    #@69
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6c
    move-result v2

    #@6d
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@70
    :cond_70
    const/16 v2, 0x9

    #@72
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_81

    #@78
    const/16 v2, 0x9

    #@7a
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7d
    move-result v2

    #@7e
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@81
    :cond_81
    const/16 v2, 0xb

    #@83
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_92

    #@89
    const/16 v2, 0xb

    #@8b
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@8e
    move-result v2

    #@8f
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@92
    :cond_92
    const/16 v2, 0xa

    #@94
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_a3

    #@9a
    const/16 v2, 0xa

    #@9c
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@9f
    move-result v2

    #@a0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@a3
    :cond_a3
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/CameraPosition;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    #@aa
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@ad
    goto/16 :goto_9
.end method


# virtual methods
.method public camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zv:Lcom/google/android/gms/maps/model/CameraPosition;

    #@2
    return-object p0
.end method

.method public compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zx:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zv:Lcom/google/android/gms/maps/model/CameraPosition;

    #@2
    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zx:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getMapType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zu:I

    #@2
    return v0
.end method

.method public getRotateGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZB:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zy:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getTiltGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZA:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zt:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->xM:I

    #@2
    return v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zs:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zw:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zz:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method jq()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zs:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jr()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zt:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method js()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zw:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jt()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zx:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method ju()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zy:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jv()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zz:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jw()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZA:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jx()B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZB:Ljava/lang/Boolean;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zu:I

    #@2
    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZB:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zy:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ZA:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zt:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jL()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    #@d
    goto :goto_9
.end method

.method public zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zs:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zw:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .registers 3

    #@0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Zz:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method
