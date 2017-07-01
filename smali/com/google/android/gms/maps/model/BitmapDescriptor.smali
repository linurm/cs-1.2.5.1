.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final YX:Lcom/google/android/gms/dynamic/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/d;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/dynamic/d;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->YX:Lcom/google/android/gms/dynamic/d;

    #@b
    return-void
.end method


# virtual methods
.method public jn()Lcom/google/android/gms/dynamic/d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->YX:Lcom/google/android/gms/dynamic/d;

    #@2
    return-object v0
.end method
