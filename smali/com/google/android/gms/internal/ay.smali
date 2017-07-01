.class public final Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;


# instance fields
.field private mQ:Ljava/lang/String;

.field private mR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object v1, p0, Lcom/google/android/gms/internal/ay;->mQ:Ljava/lang/String;

    #@6
    iput-object v1, p0, Lcom/google/android/gms/internal/ay;->mR:Ljava/lang/String;

    #@8
    const-string v0, "http://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/ay;->mQ:Ljava/lang/String;

    #@c
    iput-object v1, p0, Lcom/google/android/gms/internal/ay;->mR:Ljava/lang/String;

    #@e
    return-void
.end method


# virtual methods
.method public aN()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ay;->mQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ay;->mR:Ljava/lang/String;

    #@2
    return-object v0
.end method
