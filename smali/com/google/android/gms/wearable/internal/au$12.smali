.class Lcom/google/android/gms/wearable/internal/au$12;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amh:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic ami:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$12;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$12;->ami:Lcom/google/android/gms/common/api/a$d;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/v;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$12;->ami:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/wearable/internal/f$a;

    #@4
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@6
    iget v3, p1, Lcom/google/android/gms/wearable/internal/v;->statusCode:I

    #@8
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@b
    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/v;->alO:Lcom/google/android/gms/wearable/internal/m;

    #@d
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/f$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@13
    return-void
.end method
