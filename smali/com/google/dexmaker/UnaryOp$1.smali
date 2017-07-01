.class final enum Lcom/google/dexmaker/UnaryOp$1;
.super Lcom/google/dexmaker/UnaryOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/UnaryOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/UnaryOp;-><init>(Ljava/lang/String;ILcom/google/dexmaker/UnaryOp$1;)V

    #@4
    return-void
.end method


# virtual methods
.method rop(Lcom/google/dexmaker/TypeId;)Lcom/android/dx/rop/code/Rop;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/android/dx/rop/code/Rop;"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@2
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opNot(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
