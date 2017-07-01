.class final Lcom/google/android/gms/plus/internal/e$a;
.super Lcom/google/android/gms/plus/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final abL:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic abM:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$a;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$a;->abL:Lcom/google/android/gms/common/api/a$d;

    #@7
    return-void
.end method


# virtual methods
.method public am(Lcom/google/android/gms/common/api/Status;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$a;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/internal/e$d;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$a;->abM:Lcom/google/android/gms/plus/internal/e;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$a;->abL:Lcom/google/android/gms/common/api/a$d;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/plus/internal/e$d;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method
