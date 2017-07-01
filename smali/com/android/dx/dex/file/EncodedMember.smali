.class public abstract Lcom/android/dx/dex/file/EncodedMember;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# instance fields
.field private final accessFlags:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/dex/file/EncodedMember;->accessFlags:I

    #@5
    return-void
.end method


# virtual methods
.method public abstract addContents(Lcom/android/dx/dex/file/DexFile;)V
.end method

.method public abstract debugPrint(Ljava/io/PrintWriter;Z)V
.end method

.method public abstract encode(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;II)I
.end method

.method public final getAccessFlags()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/EncodedMember;->accessFlags:I

    #@2
    return v0
.end method

.method public abstract getName()Lcom/android/dx/rop/cst/CstString;
.end method
