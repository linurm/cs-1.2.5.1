.class public abstract Lcom/google/android/gms/appstate/AppStateManager$a;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$b",
        "<TR;",
        "Lcom/google/android/gms/internal/ga;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/appstate/AppStateManager;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    #@5
    return-void
.end method