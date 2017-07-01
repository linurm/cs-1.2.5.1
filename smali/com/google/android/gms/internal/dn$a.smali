.class final Lcom/google/android/gms/internal/dn$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final pJ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    iput p2, p0, Lcom/google/android/gms/internal/dn$a;->pJ:I

    #@5
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/dn$a;->pJ:I

    #@2
    return v0
.end method
