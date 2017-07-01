.class public Lcom/google/android/gms/internal/ka;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kb;


# instance fields
.field public final YV:Ljava/lang/String;

.field public final YW:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/kb;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/kb;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ka;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ka;->versionCode:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@8
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@e
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    if-ne p0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    if-eqz p1, :cond_b

    #@7
    instance-of v2, p1, Lcom/google/android/gms/internal/ka;

    #@9
    if-nez v2, :cond_d

    #@b
    :cond_b
    move v0, v1

    #@c
    goto :goto_4

    #@d
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/ka;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@11
    iget-object v3, p1, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_23

    #@19
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@1b
    iget-object v3, p1, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_4

    #@23
    :cond_23
    move v0, v1

    #@24
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@b
    aput-object v2, v0, v1

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "clientPackageName"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YV:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "locale"

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/ka;->YW:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ka;->CREATOR:Lcom/google/android/gms/internal/kb;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kb;->a(Lcom/google/android/gms/internal/ka;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
