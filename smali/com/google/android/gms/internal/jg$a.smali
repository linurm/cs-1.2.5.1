.class final Lcom/google/android/gms/internal/jg$a;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/je;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final CT:I

.field private final VT:[Ljava/lang/String;

.field final synthetic VU:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jg$a;->VU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@5
    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/google/android/gms/internal/jg$a;->CT:I

    #@b
    iput-object p4, p0, Lcom/google/android/gms/internal/jg$a;->VT:[Ljava/lang/String;

    #@d
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 4

    #@0
    if-eqz p1, :cond_9

    #@2
    iget v0, p0, Lcom/google/android/gms/internal/jg$a;->CT:I

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$a;->VT:[Ljava/lang/String;

    #@6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    #@9
    :cond_9
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jg$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 1

    #@0
    return-void
.end method
