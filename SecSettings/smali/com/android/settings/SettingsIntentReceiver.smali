.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 539
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 541
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 542
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 555
    :cond_1
    :goto_1
    return v3

    .line 551
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 552
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 518
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 520
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 521
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 535
    :cond_1
    :goto_1
    return-object v3

    .line 530
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 535
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 413
    const-string v0, "sys/class/sec/switch/adc"

    .line 414
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 415
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 416
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 418
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 420
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 421
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 429
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 431
    const/4 v7, 0x1

    .line 433
    :cond_0
    return v7

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 426
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 423
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private isAutoActivateFMM(Z)Z
    .locals 4
    .parameter "onoff"

    .prologue
    const/4 v1, 0x1

    .line 450
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    if-eqz p1, :cond_1

    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CMCC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CU"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    :cond_0
    const/4 v1, 0x0

    .line 464
    :cond_1
    return v1
.end method

.method private makeDMfile()V
    .locals 8

    .prologue
    .line 469
    const/4 v3, 0x0

    .line 471
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, dmFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 479
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    if-eqz v4, :cond_d

    .line 482
    :try_start_1
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 489
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 484
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 485
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 486
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 474
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 475
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :cond_4
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    if-eqz v3, :cond_3

    .line 482
    :try_start_3
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 484
    :catch_2
    move-exception v2

    .line 485
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 476
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 477
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    :cond_7
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_8
    if-eqz v3, :cond_3

    .line 482
    :try_start_5
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 484
    :catch_4
    move-exception v2

    .line 485
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 479
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_a
    if-eqz v3, :cond_c

    .line 482
    :try_start_6
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 486
    :cond_c
    :goto_1
    throw v5

    .line 484
    :catch_5
    move-exception v2

    .line 485
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_d
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "onoff"

    .prologue
    const/4 v3, 0x0

    .line 437
    const-string v2, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMM enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsIntentReceiver;->isAutoActivateFMM(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    :cond_0
    const-string v2, "FMMPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 443
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    move v2, v3

    .line 439
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 8
    .parameter "mtData"

    .prologue
    .line 492
    const/4 v3, 0x0

    .line 494
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, mtFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MT file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 497
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 505
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    if-eqz v4, :cond_10

    .line 508
    :try_start_2
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 515
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 510
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 511
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 512
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 498
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 499
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    :cond_4
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_5
    if-eqz v3, :cond_3

    .line 508
    :try_start_4
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 510
    :catch_2
    move-exception v1

    .line 511
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 501
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 505
    :cond_7
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_8
    if-eqz v3, :cond_3

    .line 508
    :try_start_6
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 510
    :catch_4
    move-exception v1

    .line 511
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 502
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 503
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 505
    :cond_a
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_b
    if-eqz v3, :cond_3

    .line 508
    :try_start_8
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 510
    :catch_6
    move-exception v1

    .line 511
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 505
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_d
    if-eqz v3, :cond_f

    .line 508
    :try_start_9
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 512
    :cond_f
    :goto_5
    throw v5

    .line 510
    :catch_7
    move-exception v1

    .line 511
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 505
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 502
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 500
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 498
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_10
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 65
    .local v22, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 66
    .local v14, mPm:Landroid/content/pm/PackageManager;
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_0

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    const-string v27, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 69
    .local v9, extras:Landroid/os/Bundle;
    const-string v27, "MTDATA"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 70
    .local v26, temp:Ljava/lang/String;
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_1

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MT data: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 75
    const-string v27, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    const-string v28, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v27, 0x1

    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v26           #temp:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v27, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 407
    const-string v27, "samsung_signin"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 410
    :cond_3
    return-void

    .line 76
    .restart local v9       #extras:Landroid/os/Bundle;
    .restart local v26       #temp:Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    goto :goto_0

    .line 79
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v26           #temp:Ljava/lang/String;
    :cond_5
    const-string v27, "android.intent.action.ASSISTIVELIGHT_ON"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 80
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_1

    .line 81
    :cond_6
    const-string v27, "android.intent.action.ASSISTIVELIGHT_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 82
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 83
    const-string v27, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 84
    .local v19, notificationManager:Landroid/app/NotificationManager;
    const v27, 0x7f0202b1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 85
    .end local v19           #notificationManager:Landroid/app/NotificationManager;
    :cond_7
    const-string v27, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 86
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 87
    :cond_8
    const-string v27, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 88
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 91
    :cond_9
    const-string v27, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 93
    .restart local v9       #extras:Landroid/os/Bundle;
    const/16 v23, 0x2

    .line 94
    .local v23, ringerMode:I
    if-eqz v9, :cond_b

    .line 95
    const-string v27, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 96
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_a

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Extras, ringer mode: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_a
    :goto_2
    packed-switch v23, :pswitch_data_0

    .line 120
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_2

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Not supported ringer mode"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    :cond_b
    const-string v27, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 99
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    .line 100
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_a

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "No extras, ringer mode: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v4           #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_c

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Ringer mode: silent & set driving mode off"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_c
    const-string v27, "driving_mode_on"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    const-string v27, "vibrate_in_silent"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 111
    :pswitch_1
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_d

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Ringer mode: vibrate"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_d
    const-string v27, "vibrate_in_silent"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 116
    :pswitch_2
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_e

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Ringer mode: normal"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_e
    const-string v27, "vibrate_in_silent"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 122
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v23           #ringerMode:I
    :cond_f
    const-string v27, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 123
    const-string v27, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 125
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 126
    .local v12, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mLockPatternUtils.isSecure(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v28, "is_secured_lock"

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v27, 0x1

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    .end local v12           #mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_10
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 131
    const-string v27, "power_saving_mode"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_1e

    const/16 v27, 0x1

    :goto_4
    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 135
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "smart_network"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-lez v27, :cond_1f

    const/4 v11, 0x1

    .line 137
    .local v11, isOn:Z
    :goto_5
    const-string v27, "statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/StatusBarManager;

    .line 153
    .local v16, mStatusBar:Landroid/app/StatusBarManager;
    const-string v27, "high_contrast"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_20

    const/16 v27, 0x1

    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 156
    const-string v27, "torch_light"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 158
    const-string v27, "torch_light"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_12
    const-string v27, "screen_mode_setting"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 183
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 184
    .local v24, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v27, "pref_device_provision"

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-nez v27, :cond_14

    .line 185
    const-string v27, "screen_off_timeout"

    const/16 v28, 0x7530

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const v28, 0x1d8a8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 186
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Overriding setup wizard set screen timeout"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v28, "screen_off_timeout"

    const-string v27, "USC"

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_21

    const v27, 0xea60

    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    :cond_13
    const-string v27, "device_provisioned"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 191
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 192
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v27, "pref_device_provision"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_14
    const-string v27, "screen_off_timeout"

    const/16 v28, 0x7530

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 203
    .local v20, oldScreenTimOut:I
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_15

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Current screen timeout value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_15
    const v27, 0x927c0

    move/from16 v0, v20

    move/from16 v1, v27

    if-gt v0, v1, :cond_16

    if-gez v20, :cond_17

    .line 206
    :cond_16
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Reset screen timeout to 10mins"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v27, "screen_off_timeout"

    const v28, 0x927c0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    :cond_17
    const-string v27, "stay_on_while_plugged_in"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 211
    .local v21, oldStayAwake:I
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_18

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Current stay awake value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_18
    if-eqz v21, :cond_19

    .line 213
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Set stay awake off"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v27, "stay_on_while_plugged_in"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    :cond_19
    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 221
    const-string v27, "usb_setting_mode"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_1a
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_1b

    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "salesCode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1b
    const-string v27, "TMB"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 228
    const-string v27, "auto_time"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    const-string v27, "auto_time_zone"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    :cond_1c
    const/16 v27, 0x1

    const-string v28, "easy_mode_switch"

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 234
    :try_start_0
    const-string v27, "com.sec.android.easysettings"

    const/16 v28, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 235
    :catch_0
    move-exception v7

    .line 236
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v27, "SettingsIntentReceiver"

    const-string v28, " Couldn\'t find package : com.sec.android.easysettings"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 127
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v11           #isOn:Z
    .end local v16           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v20           #oldScreenTimOut:I
    .end local v21           #oldStayAwake:I
    .end local v24           #sharedPreferences:Landroid/content/SharedPreferences;
    .restart local v12       #mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1d
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 131
    .end local v12           #mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 135
    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 153
    .restart local v11       #isOn:Z
    .restart local v16       #mStatusBar:Landroid/app/StatusBarManager;
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 187
    .restart local v24       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_21
    const/16 v27, 0x7530

    goto/16 :goto_7

    .line 241
    .restart local v20       #oldScreenTimOut:I
    .restart local v21       #oldStayAwake:I
    :cond_22
    :try_start_1
    const-string v27, "com.sec.android.easysettings"

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 242
    :catch_1
    move-exception v7

    .line 243
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    const-string v27, "SettingsIntentReceiver"

    const-string v28, " Couldn\'t find package : com.sec.android.easysettings"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v11           #isOn:Z
    .end local v16           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v20           #oldScreenTimOut:I
    .end local v21           #oldStayAwake:I
    .end local v24           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_23
    const-string v27, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    .line 248
    const-string v27, "android.intent.extra.DOCK_STATE"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 249
    .local v25, state:I
    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received dock event with state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v27, "cradle_enable"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 252
    .local v5, cradleEnabled:I
    if-nez v25, :cond_26

    .line 254
    const-string v27, "cradle_connect"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    if-eqz v5, :cond_25

    .line 256
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Cradle is enabled without dock"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v15, mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 259
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SmartDock connected, Do nothing"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_8
    const-string v27, "state"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Sound state changed to device (state: 0)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 261
    :cond_24
    const-string v27, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 268
    .end local v15           #mSendIntent:Landroid/content/Intent;
    :cond_25
    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cradle is disabled1: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Sound state is device"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :cond_26
    const/16 v27, 0x7

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 273
    const-string v27, "cradle_connect"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    if-eqz v5, :cond_28

    .line 275
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Cradle is enabled with dock"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 277
    .restart local v15       #mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v27

    if-eqz v27, :cond_27

    .line 278
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SmartDock connected, Do nothing"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_9
    const-string v27, "state"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Sound state changed to line out (state: 1)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    :cond_27
    const-string v27, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 287
    .end local v15           #mSendIntent:Landroid/content/Intent;
    :cond_28
    const-string v27, "SettingsIntentReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cradle is disabled2: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Sound state is device"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 291
    .end local v5           #cradleEnabled:I
    .end local v25           #state:I
    :cond_29
    const-string v27, "shopdemo_on"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 292
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "+++++ shop demo on +++++"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v27, "shopdemo"

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 294
    :cond_2a
    const-string v27, "shopdemo_off"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 295
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "+++++ shop demo off +++++"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v27, "shopdemo"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 297
    :cond_2b
    const-string v27, "com.sec.samsung.torchwidget.torch_on_1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 298
    const/16 v27, 0xe

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 299
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_2

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 300
    :cond_2c
    const-string v27, "com.sec.samsung.torchwidget.torch_on_2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 301
    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 302
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_2

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :cond_2d
    const-string v27, "com.sec.samsung.torchwidget.torch_on_3"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2e

    .line 304
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 305
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_2

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    :cond_2e
    const-string v27, "com.sec.samsung.torchwidget.torch_off"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2f

    .line 307
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 308
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_2

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    :cond_2f
    const-string v27, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 312
    const-string v27, "persist.sys.roaming_menu"

    const-string v28, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v27, "persist.sys.tether_data"

    const-string v28, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :cond_30
    const-string v27, "android.intent.action.ACTION_ASSISTIVE_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 317
    const-string v27, "torch_light"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    const/16 v27, 0x0

    :try_start_2
    invoke-static/range {v27 .. v27}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    :goto_a
    const-string v27, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 324
    .restart local v19       #notificationManager:Landroid/app/NotificationManager;
    const v27, 0x7f0202b1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 320
    .end local v19           #notificationManager:Landroid/app/NotificationManager;
    :catch_2
    move-exception v7

    .line 321
    .local v7, e:Ljava/lang/Exception;
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Could not turn off torch light "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 325
    .end local v7           #e:Ljava/lang/Exception;
    :cond_31
    const-string v27, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 327
    sget-boolean v27, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v27, :cond_32

    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Limit brightness"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_32
    const-string v27, "max_brightness"

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 329
    .local v13, mMaxBrightness:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 330
    .restart local v24       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 331
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v27, "pref_siop_brightness"

    move-object/from16 v0, v27

    invoke-interface {v8, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 333
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #mMaxBrightness:I
    .end local v24           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_33
    const-string v27, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 334
    const-string v27, "change_alert"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v27, "remote_control"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    const-string v27, "samsung_signin"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 385
    :cond_34
    const-string v27, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 386
    const-string v27, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 387
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v6, :cond_35

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v17

    .line 389
    .local v17, maxTimeout:J
    :goto_b
    const-string v27, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 392
    .local v10, isDeviceLockTime:Z
    const-wide/16 v27, 0x1

    cmp-long v27, v17, v27

    if-gez v27, :cond_2

    .line 393
    const-string v27, "SettingsIntentReceiver"

    const-string v28, "Max timeout is removed. Rollback timeout value"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v27, "screen_off_timeout"

    const-string v28, "screen_off_timeout_rollback"

    const/16 v29, 0x7530

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    const-string v28, "lock_screen_lock_after_timeout"

    const-string v29, "lock_after_timeout_rollback"

    if-eqz v10, :cond_36

    const v27, 0x927c0

    :goto_c
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 387
    .end local v10           #isDeviceLockTime:Z
    .end local v17           #maxTimeout:J
    :cond_35
    const-wide/16 v17, 0x0

    goto :goto_b

    .line 396
    .restart local v10       #isDeviceLockTime:Z
    .restart local v17       #maxTimeout:J
    :cond_36
    const/16 v27, 0x1388

    goto :goto_c

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
