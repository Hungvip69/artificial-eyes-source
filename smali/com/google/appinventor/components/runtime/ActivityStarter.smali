.class public Lcom/google/appinventor/components/runtime/ActivityStarter;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that can launch an activity using the <code>StartActivity</code> method. \n<p>Activities that can be launched include:<ul> <li> Starting another App Inventor for Android app. \n To do so, first      find out the <em>class</em> of the other application by      downloading the source code and using a file explorer or unzip      utility to find a file named      \"youngandroidproject/project.properties\".  \n The first line of      the file will start with \"main=\" and be followed by the class      name; for example,      <code>main=com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>.       (The first components indicate that it was created by      Ben.Bitdiddle@gmail.com.)  \n To make your      <code>ActivityStarter</code> launch this application, set the      following properties: <ul>\n      <li> <code>ActivityPackage</code> to the class name, dropping the           last component (for example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr</code>)</li>\n      <li> <code>ActivityClass</code> to the entire class name (for           example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>)</li>      </ul></li> \n<li> Starting the camera application by setting the following      properties:<ul> \n     <li> <code>Action: android.intent.action.MAIN</code> </li> \n     <li> <code>ActivityPackage: com.android.camera</code> </li> \n     <li> <code>ActivityClass: com.android.camera.Camera</code></li>\n      </ul></li>\n<li> Performing web search.  Assuming the term you want to search      for is \"vampire\" (feel free to substitute your own choice), \n     set the properties to:\n<ul><code>     <li>Action: android.intent.action.WEB_SEARCH</li>      <li>ExtraKey: query</li>      <li>ExtraValue: vampire</li>      <li>ActivityPackage: com.google.android.providers.enhancedgooglesearch</li>     <li>ActivityClass: com.google.android.providers.enhancedgooglesearch.Launcher</li>      </code></ul></li> \n<li> Opening a browser to a specified web page.  Assuming the page you      want to go to is \"www.facebook.com\" (feel free to substitute      your own choice), set the properties to:\n<ul><code>      <li>Action: android.intent.action.VIEW</li>      <li>DataUri: http://www.facebook.com</li> </code> </ul> </li> </ul></p>"
    designerHelpDescription = "A component that can launch an activity using the <code>StartActivity</code> method.<p>Activities that can be launched include: <ul> \n<li> starting other App Inventor for Android apps </li> \n<li> starting the camera application </li> \n<li> performing web search </li> \n<li> opening a browser to a specified web page</li> \n<li> opening the map application to a specified location</li></ul> \nYou can also launch activities that return text data.  See the documentation on using the Activity Starter for examples.</p>"
    iconName = "images/activityStarter.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityStarter"


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Ljava/lang/String;

.field private activityPackage:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private dataType:Ljava/lang/String;

.field private dataUri:Ljava/lang/String;

.field private extraKey:Ljava/lang/String;

.field private extraValue:Ljava/lang/String;

.field private extras:Lcom/google/appinventor/components/runtime/util/YailList;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;

.field private resultName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 163
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 167
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityPackage(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityClass(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataUri(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataType(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraKey(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraValue(Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Extras(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ResultName(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private buildActivityIntent()Landroid/content/Intent;
    .locals 16

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 504
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    const-string v5, "ActivityStarter"

    if-eqz v1, :cond_1

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 507
    const-string v6, "Using file://"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 510
    const-string v7, "It\'s a file"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v7, v6}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 512
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 513
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 514
    const-string v7, "added permissions"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v6    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 519
    return-object v2

    .line 522
    :cond_2
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 523
    if-eqz v1, :cond_3

    .line 524
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 526
    :cond_3
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    :goto_1
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 535
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 536
    return-object v2

    .line 533
    :cond_6
    :goto_2
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_7
    nop

    .line 539
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v6, "Adding extra, key = "

    const-string v7, " value = "

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 540
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    :cond_8
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v8, :cond_b

    aget-object v11, v2, v10

    .line 547
    .local v11, "extra":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 548
    .local v12, "castExtra":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v12, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 549
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v12, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 550
    .local v14, "value":Ljava/lang/Object;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_a

    .line 552
    instance-of v15, v14, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v15, :cond_9

    .line 553
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding extra list, key = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object v9, v14

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 557
    :cond_9
    invoke-virtual {v12, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 558
    .local v9, "stringValue":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding extra string, key = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v3, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    .end local v9    # "stringValue":Ljava/lang/String;
    .end local v11    # "extra":Ljava/lang/Object;
    .end local v12    # "castExtra":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 563
    :cond_b
    return-object v3
.end method


# virtual methods
.method public Action()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public Action(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public ActivityCanceled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised if this ActivityStarter returns because the activity was canceled."
    .end annotation

    .line 395
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityCanceled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public ActivityClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityClass"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public ActivityError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The ActivityError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .line 590
    return-void
.end method

.method public ActivityPackage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityPackage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public AfterActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after this ActivityStarter returns."
    .end annotation

    .line 386
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterActivity"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public DataType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public DataType(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public DataUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    return-object v0
.end method

.method public DataUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataUri"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public ExtraKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the extra key that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead."
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public ExtraValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the extra value that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead."
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public Extras()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Extras(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .param p1, "pairs"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 433
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 434
    .local v4, "pair":Ljava/lang/Object;
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 435
    .local v5, "isYailList":Z
    if-eqz v5, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 436
    .local v6, "isPair":Z
    :goto_1
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 433
    .end local v4    # "pair":Ljava/lang/Object;
    .end local v5    # "isYailList":Z
    .end local v6    # "isPair":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .restart local v4    # "pair":Ljava/lang/Object;
    .restart local v5    # "isYailList":Z
    .restart local v6    # "isPair":Z
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Argument to Extras should be a list of pairs"

    const-string v2, "ActivityStarter Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 441
    .end local v4    # "pair":Ljava/lang/Object;
    .end local v5    # "isYailList":Z
    .end local v6    # "isPair":Z
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 442
    return-void
.end method

.method public ResolveActivity()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the name of the activity that corresponds to this ActivityStarter, or an empty string if no corresponding activity can be found."
    .end annotation

    .line 460
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 462
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 463
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v3

    .line 466
    :cond_0
    const-string v3, ""

    return-object v3
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName(Ljava/lang/String;)V
    .locals 1
    .param p1, "resultName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public ResultType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "resultType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 407
    return-object v0

    .line 410
    .end local v0    # "resultType":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ResultUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "resultUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 422
    return-object v0

    .line 425
    .end local v0    # "resultUri":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public StartActivity()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the activity corresponding to this ActivityStarter."
    .end annotation

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    .line 487
    :cond_0
    const/4 v1, 0x0

    const-string v2, "StartActivity"

    if-nez v0, :cond_1

    .line 488
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x25a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 493
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimation()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "openAnim":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v3    # "openAnim":Ljava/lang/String;
    goto :goto_0

    .line 495
    :catch_0
    move-exception v3

    .line 496
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x259

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v2, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 500
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 597
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 568
    iget v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-ne p1, v0, :cond_2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultReturned - resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityStarter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 571
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    .line 573
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 579
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->AfterActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_1
    if-nez p2, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityCanceled()V

    .line 584
    :cond_2
    :goto_1
    return-void
.end method
