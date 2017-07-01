.class public Lcom/android/dx/util/ExceptionWithContext;
.super Ljava/lang/RuntimeException;


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    #@0
    if-eqz p1, :cond_24

    #@2
    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5
    instance-of v0, p2, Lcom/android/dx/util/ExceptionWithContext;

    #@7
    if-eqz v0, :cond_2d

    #@9
    check-cast p2, Lcom/android/dx/util/ExceptionWithContext;

    #@b
    iget-object v0, p2, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Ljava/lang/StringBuffer;

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    add-int/lit16 v2, v2, 0xc8

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1c
    iput-object v1, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@1e
    iget-object v1, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    :goto_23
    return-void

    #@24
    :cond_24
    if-eqz p2, :cond_2b

    #@26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    goto :goto_2

    #@2b
    :cond_2b
    const/4 p1, 0x0

    #@2c
    goto :goto_2

    #@2d
    :cond_2d
    new-instance v0, Ljava/lang/StringBuffer;

    #@2f
    const/16 v1, 0xc8

    #@31
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@34
    iput-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@36
    goto :goto_23
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    return-void
.end method

.method public static withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;
    .registers 3

    #@0
    instance-of v0, p0, Lcom/android/dx/util/ExceptionWithContext;

    #@2
    if-eqz v0, :cond_a

    #@4
    check-cast p0, Lcom/android/dx/util/ExceptionWithContext;

    #@6
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/dx/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    #@9
    return-object p0

    #@a
    :cond_a
    new-instance v0, Lcom/android/dx/util/ExceptionWithContext;

    #@c
    invoke-direct {v0, p0}, Lcom/android/dx/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    #@f
    move-object p0, v0

    #@10
    goto :goto_6
.end method


# virtual methods
.method public addContext(Ljava/lang/String;)V
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "str == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    const-string v0, "\n"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1e

    #@17
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@19
    const/16 v1, 0xa

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1e
    :cond_1e
    return-void
.end method

.method public getContext()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public printContext(Ljava/io/PrintStream;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@c
    return-void
.end method

.method public printContext(Ljava/io/PrintWriter;)V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@c
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    #@3
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@8
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@3
    iget-object v0, p0, Lcom/android/dx/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@8
    return-void
.end method
