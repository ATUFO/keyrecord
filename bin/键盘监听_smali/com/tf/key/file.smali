.class public Lcom/tf/key/file;
.super Ljava/lang/Object;
.source "file.java"


# static fields
.field public static conf:Ljava/lang/String;

.field public static i:I

.field public static str:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, "/sdcard/hookrecord.txt"

    sput-object v2, Lcom/tf/key/file;->conf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cfile()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 15
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    move v1, v3

    .line 16
    move v3, v1

    if-nez v3, :cond_0

    .line 17
    :goto_0
    return-void

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "初始化完成"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static chongxie()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v2, Ljava/io/FileWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 24
    move-object v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 25
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    return-void
.end method

.method public static duqu()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v4, Ljava/io/FileInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    sget-object v6, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 32
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 43
    sget-object v4, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-static {v4}, Lcom/tf/key/read;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 45
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public static jiaru(Ljava/lang/String;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    new-instance v6, Lcom/tf/key/read;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/tf/key/read;-><init>()V

    move-object v1, v6

    .line 77
    sget-object v6, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-static {v6}, Lcom/tf/key/read;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 78
    new-instance v6, Ljava/io/File;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Lcom/tf/key/file;->conf:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 79
    new-instance v6, Ljava/io/FileOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 80
    move-object v6, v4

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public static path()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
