.class Lcom/google/android/gms/tagmanager/by;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ago:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final agp:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/by;->ago:Ljava/lang/Object;

    #@5
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/by;->agp:Z

    #@7
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->ago:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public ma()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/by;->agp:Z

    #@2
    return v0
.end method
