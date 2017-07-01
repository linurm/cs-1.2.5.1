.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

.field public static final MATCH_RESULT_DISAGREED:I = 0x5

.field public static final MATCH_RESULT_DISCONNECT:I = 0x4

.field public static final MATCH_RESULT_LOSS:I = 0x1

.field public static final MATCH_RESULT_NONE:I = 0x3

.field public static final MATCH_RESULT_TIE:I = 0x2

.field public static final MATCH_RESULT_UNINITIALIZED:I = -0x1

.field public static final MATCH_RESULT_WIN:I = 0x0

.field public static final PLACING_UNINITIALIZED:I = -0x1


# instance fields
.field private final Oq:Ljava/lang/String;

.field private final Tf:I

.field private final Tg:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->xM:I

    #@5
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Oq:Ljava/lang/String;

    #@d
    invoke-static {p3}, Lcom/google/android/gms/games/internal/constants/MatchResult;->isValid(I)Z

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@14
    iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Tf:I

    #@16
    iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Tg:I

    #@18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V

    #@4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Oq:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlacing()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Tg:I

    #@2
    return v0
.end method

.method public getResult()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->Tf:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;->a(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
