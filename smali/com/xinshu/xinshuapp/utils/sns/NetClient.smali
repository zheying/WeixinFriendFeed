.class public Lcom/xinshu/xinshuapp/utils/sns/NetClient;
.super Ljava/lang/Object;
.source "NetClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v7, ""

    .line 21
    .local v7, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 23
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 24
    .local v9, "urlNameString":Ljava/lang/String;
    const-string v10, "url"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .local v6, "realUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 30
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v10, "accept"

    const-string v11, "*/*"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v10, "connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v10, "user-agent"

    const-string v11, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    invoke-virtual {v0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 38
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 39
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    goto :goto_0

    .line 51
    :cond_0
    if-eqz v4, :cond_1

    .line 52
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v8, v7

    .line 59
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "realUrl":Ljava/net/URL;
    .end local v7    # "result":Ljava/lang/String;
    .end local v9    # "urlNameString":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 55
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "realUrl":Ljava/net/URL;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v9    # "urlNameString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "realUrl":Ljava/net/URL;
    .end local v9    # "urlNameString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_2
    move-object v8, v7

    .line 59
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_1

    .line 44
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v10, "error"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u53d1\u9001GET\u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38\uff01"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    if-eqz v3, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-object v8, v7

    .line 54
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 56
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 51
    :goto_4
    if-eqz v3, :cond_3

    .line 52
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    move-object v8, v7

    .line 54
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 56
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    throw v10

    .line 50
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "realUrl":Ljava/net/URL;
    .restart local v9    # "urlNameString":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 44
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v8, ""

    .line 72
    .local v8, "result":Ljava/lang/String;
    const-string v11, "url"

    invoke-static {v11, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 77
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 78
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 81
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 83
    const-string v11, "Content-Type"

    const-string v12, "application/json; charset=UTF-8"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v11, "UTF-8"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    .local v0, "bytes":[B
    array-length v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "len":Ljava/lang/String;
    const-string v11, "Content-Length"

    invoke-virtual {v1, v11, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 92
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 95
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 99
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v9, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "lines":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 104
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "utf-8"

    invoke-direct {v5, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 105
    .end local v4    # "lines":Ljava/lang/String;
    .local v5, "lines":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "bytes":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "len":Ljava/lang/String;
    .end local v5    # "lines":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v8

    .line 107
    .restart local v0    # "bytes":[B
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "len":Ljava/lang/String;
    .restart local v4    # "lines":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v11, "url"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 111
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v8, ""

    .line 129
    .local v8, "result":Ljava/lang/String;
    const-string v11, "url"

    invoke-static {v11, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 134
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 136
    const-string v11, "PUT"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 138
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 140
    const-string v11, "Content-Type"

    const-string v12, "application/json; charset=UTF-8"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v11, "UTF-8"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    .local v0, "bytes":[B
    array-length v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "len":Ljava/lang/String;
    const-string v11, "Content-Length"

    invoke-virtual {v1, v11, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 149
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 151
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 152
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 153
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 156
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 157
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v9, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "lines":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 161
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "utf-8"

    invoke-direct {v5, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 162
    .end local v4    # "lines":Ljava/lang/String;
    .local v5, "lines":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v0    # "bytes":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "len":Ljava/lang/String;
    .end local v5    # "lines":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v8

    .line 164
    .restart local v0    # "bytes":[B
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "len":Ljava/lang/String;
    .restart local v4    # "lines":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    const-string v11, "url"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
