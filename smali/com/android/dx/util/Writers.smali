.class public final Lcom/android/dx/util/Writers;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;
    .registers 2

    #@0
    instance-of v0, p0, Ljava/io/PrintWriter;

    #@2
    if-eqz v0, :cond_7

    #@4
    check-cast p0, Ljava/io/PrintWriter;

    #@6
    :goto_6
    return-object p0

    #@7
    :cond_7
    new-instance v0, Ljava/io/PrintWriter;

    #@9
    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@c
    move-object p0, v0

    #@d
    goto :goto_6
.end method
