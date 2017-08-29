.class public Lcom/tf/key/read;
.super Ljava/lang/Object;
.source "read.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    move-object v0, p0

    new-instance v4, Ljava/io/FileInputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 9
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    move-object v2, v4

    .line 10
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 11
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 12
    new-instance v4, Ljava/lang/String;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    move-object v0, v4

    return-object v0
.end method
