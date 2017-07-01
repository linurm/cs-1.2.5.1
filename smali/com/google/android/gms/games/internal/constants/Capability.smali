.class public Lcom/google/android/gms/games/internal/constants/Capability;
.super Ljava/lang/Object;


# static fields
.field public static final Ri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Ri:Ljava/util/ArrayList;

    #@7
    sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Ri:Ljava/util/ArrayList;

    #@9
    const-string v1, "ibb"

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Ri:Ljava/util/ArrayList;

    #@10
    const-string v1, "rtp"

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    sget-object v0, Lcom/google/android/gms/games/internal/constants/Capability;->Ri:Ljava/util/ArrayList;

    #@17
    const-string v1, "unreliable_ping"

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
