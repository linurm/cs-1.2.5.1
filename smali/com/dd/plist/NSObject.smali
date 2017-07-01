.class public abstract Lcom/dd/plist/NSObject;
.super Ljava/lang/Object;


# static fields
.field static final ASCII_LINE_LENGTH:I = 0x50

.field static final INDENT:Ljava/lang/String; = "\t"

.field static final NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "line.separator"

    #@2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 2

    #@0
    invoke-virtual {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->assignID(Lcom/dd/plist/NSObject;)V

    #@3
    return-void
.end method

.method indent(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    if-ge v0, p2, :cond_b

    #@3
    const-string v1, "\t"

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    goto :goto_1

    #@b
    :cond_b
    return-void
.end method

.method protected abstract toASCII(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
.end method

.method abstract toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract toXML(Ljava/lang/StringBuilder;I)V
.end method

.method public toXMLPropertyList()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    const-string v1, "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    const-string v1, "<plist version=\"1.0\">"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    #@24
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    const-string v1, "</plist>"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method
