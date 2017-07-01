.class public Lcom/google/android/gms/internal/md;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static nS()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nT()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nU()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "CodedInputStream encountered a malformed varint."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nV()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "Protocol message contained an invalid tag (zero)."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nW()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "Protocol message end-group tag did not match expected tag."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nX()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "Protocol message tag had invalid wire type."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method static nY()Lcom/google/android/gms/internal/md;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/md;

    #@2
    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/md;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method
