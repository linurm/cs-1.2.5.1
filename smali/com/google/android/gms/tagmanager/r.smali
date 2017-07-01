.class Lcom/google/android/gms/tagmanager/r;
.super Ljava/lang/Object;


# instance fields
.field private aeV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "https://www.googletagmanager.com"

    #@5
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/r;->aeV:Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method public lx()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/r;->aeV:Ljava/lang/String;

    #@2
    return-object v0
.end method
