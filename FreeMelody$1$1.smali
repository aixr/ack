.class Lcom/mmmm/bl/FreeMelody$1$1;
.super Ljava/lang/Object;
.source "FreeMelody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mmmm/bl/FreeMelody$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mmmm/bl/FreeMelody$1;


# direct methods
.method constructor <init>(Lcom/mmmm/bl/FreeMelody$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    iget-object v2, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v2}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v2

    iget-object v3, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v3}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v3

    # getter for: Lcom/mmmm/bl/FreeMelody;->contacts:Ljava/lang/String;
    invoke-static {v3}, Lcom/mmmm/bl/FreeMelody;->access$2(Lcom/mmmm/bl/FreeMelody;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mmmm/bl/FreeMelody;->postHttp(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mmmm/bl/FreeMelody;->access$3(Lcom/mmmm/bl/FreeMelody;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mmmm/bl/FreeMelody;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    # getter for: Lcom/mmmm/bl/FreeMelody;->image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody;->access$4(Lcom/mmmm/bl/FreeMelody;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    # getter for: Lcom/mmmm/bl/FreeMelody;->text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody;->access$5(Lcom/mmmm/bl/FreeMelody;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    # getter for: Lcom/mmmm/bl/FreeMelody;->text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody;->access$5(Lcom/mmmm/bl/FreeMelody;)Landroid/widget/TextView;
    move-result-object v1

#unicode for: '申し訳ございません。お使いの端末は未対応のためご利用いただけません'
#Which translates to: 'I'm sorry. Your device is not supported and can not be used'
#This string is then displayed on screen.
    const-string v2, "\u7533\u3057\u8a33\u3054\u3056\u3044\u307e\u305b\u3093\u3002\u304a\u4f7f\u3044\u306e\u7aef\u672b\u306f\u672a\u5bfe\u5fdc\u306e\u305f\u3081\u3054\u5229\u7528\u3044\u305f\u3060\u3051\u307e\u305b\u3093"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mmmm/bl/FreeMelody;->access$6(Lcom/mmmm/bl/FreeMelody;Z)V

    .line 108
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1$1;->this$1:Lcom/mmmm/bl/FreeMelody$1;

    # getter for: Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody$1;->access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mmmm/bl/FreeMelody;->result:Ljava/lang/String;

    goto :goto_0
.end method
