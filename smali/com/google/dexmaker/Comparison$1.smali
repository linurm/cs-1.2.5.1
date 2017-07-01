.class final enum Lcom/google/dexmaker/Comparison$1;
.super Lcom/google/dexmaker/Comparison;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/Comparison;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/Comparison;-><init>(Ljava/lang/String;ILcom/google/dexmaker/Comparison$1;)V

    #@4
    return-void
.end method


# virtual methods
.method rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/android/dx/rop/code/Rops;->opIfLt(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
