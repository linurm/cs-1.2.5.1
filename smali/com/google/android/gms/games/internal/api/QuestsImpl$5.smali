.class Lcom/google/android/gms/games/internal/api/QuestsImpl$5;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PE:I

.field final synthetic Pe:Z

.field final synthetic Ph:Ljava/lang/String;

.field final synthetic Qq:[I

.field final synthetic Qs:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 9

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->Ph:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->Qs:Ljava/lang/String;

    #@4
    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->Qq:[I

    #@6
    iget v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->PE:I

    #@8
    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->Pe:Z

    #@a
    move-object v0, p1

    #@b
    move-object v1, p0

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    #@f
    return-void
.end method
