.class Lcom/google/dexmaker/DexMaker$FieldDeclaration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldDeclaration"
.end annotation


# instance fields
.field private final accessFlags:I

.field final fieldId:Lcom/google/dexmaker/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/FieldId",
            "<**>;"
        }
    .end annotation
.end field

.field private final staticValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/FieldId",
            "<**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    and-int/lit8 v0, p2, 0x8

    #@5
    if-nez v0, :cond_11

    #@7
    if-eqz p3, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "instance fields may not have a value"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->fieldId:Lcom/google/dexmaker/FieldId;

    #@13
    iput p2, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    #@15
    iput-object p3, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    #@17
    return-void
.end method

.method static synthetic access$800(Lcom/google/dexmaker/DexMaker$FieldDeclaration;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method


# virtual methods
.method public isStatic()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method toEncodedField()Lcom/android/dx/dex/file/EncodedField;
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/dex/file/EncodedField;

    #@2
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->fieldId:Lcom/google/dexmaker/FieldId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@6
    iget v2, p0, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->accessFlags:I

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    #@b
    return-object v0
.end method
