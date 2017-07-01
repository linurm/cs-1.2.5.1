.class Lcom/google/android/gms/games/internal/api/RequestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ph:Ljava/lang/String;

.field final synthetic QA:[Ljava/lang/String;

.field final synthetic QB:I

.field final synthetic QC:[B

.field final synthetic QD:I


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 9

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->Ph:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->QA:[Ljava/lang/String;

    #@4
    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->QB:I

    #@6
    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->QC:[B

    #@8
    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->QD:I

    #@a
    move-object v0, p1

    #@b
    move-object v1, p0

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    #@f
    return-void
.end method
