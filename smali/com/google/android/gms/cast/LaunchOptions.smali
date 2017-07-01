.class public Lcom/google/android/gms/cast/LaunchOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/LaunchOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Aq:Z

.field private Ar:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/cast/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/cast/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/google/android/gms/internal/gi;->b(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/cast/LaunchOptions;-><init>(IZLjava/lang/String;)V

    #@d
    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->xM:I

    #@5
    iput-boolean p2, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@7
    iput-object p3, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@9
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

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p1, p0, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/cast/LaunchOptions;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/cast/LaunchOptions;

    #@c
    iget-boolean v2, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@e
    iget-boolean v3, p1, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget-object v2, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@14
    iget-object v3, p1, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@16
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_4

    #@1c
    goto :goto_5
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRelaunchIfRunning()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/LaunchOptions;->xM:I

    #@2
    return v0
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
    iget-boolean v2, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@f
    aput-object v2, v0, v1

    #@11
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setRelaunchIfRunning(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "LaunchOptions(relaunchIfRunning=%b, language=%s)"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-boolean v3, p0, Lcom/google/android/gms/cast/LaunchOptions;->Aq:Z

    #@8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    iget-object v3, p0, Lcom/google/android/gms/cast/LaunchOptions;->Ar:Ljava/lang/String;

    #@11
    aput-object v3, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/c;->a(Lcom/google/android/gms/cast/LaunchOptions;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
