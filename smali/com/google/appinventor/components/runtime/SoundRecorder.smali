.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SoundRecorder.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

.field private havePermission:Z

.field private savedRecording:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/SoundRecorder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 127
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 128
    return-void
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 2
    .param p1, "sound"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    .line 318
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterSoundRecorded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 138
    :cond_0
    return-void
.end method

.method public SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    return-object v0
.end method

.method public SavedRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public Start()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 178
    const-string v0, "Cannot record sound"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "uri":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 180
    move-object v0, p0

    .line 182
    .local v0, "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    const-string v5, "android.permission.RECORD_AUDIO"

    if-eqz v2, :cond_0

    .line 183
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    .local v2, "neededPermissions":[Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v2    # "neededPermissions":[Ljava/lang/String;
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    aput-object v5, v2, v4

    .line 187
    .restart local v2    # "neededPermissions":[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void

    .line 202
    .end local v0    # "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    .end local v2    # "neededPermissions":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v5, "SoundRecorder"

    if-eqz v2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start() called, but already recording to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 206
    :cond_2
    const-string v2, "Start() called"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    const-string v6, "Start"

    if-eqz v2, :cond_3

    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v7, "mounted"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2c1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 211
    return-void

    .line 214
    :cond_3
    const/16 v2, 0x322

    :try_start_0
    new-instance v7, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    nop

    .line 225
    :try_start_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    nop

    .line 236
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    .line 237
    return-void

    .line 226
    :catchall_0
    move-exception v7

    .line 230
    .local v7, "t":Ljava/lang/Throwable;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 231
    invoke-static {v5, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 233
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 232
    invoke-virtual {v0, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 234
    return-void

    .line 218
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    .line 219
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {v5, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 221
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 220
    invoke-virtual {v0, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 222
    return-void

    .line 215
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p0, v6, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 217
    return-void
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    .line 323
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartedRecording"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v1, "SoundRecorder"

    if-nez v0, :cond_0

    .line 299
    const-string v0, "Stop() called, but already stopped."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "Stop() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v2, "stopping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    .line 306
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing AfterSoundRecorded with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v1

    .line 309
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x321

    invoke-virtual {v2, p0, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    nop

    .line 314
    return-void

    .line 311
    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    throw v1
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StoppedRecording"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 5
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v1, "SoundRecorder"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onError"

    const/16 v4, 0x321

    invoke-virtual {v0, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    nop

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    goto :goto_1

    .line 248
    :catchall_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    nop

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 254
    :goto_1
    return-void

    .line 251
    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 253
    throw v1

    .line 242
    :cond_1
    :goto_2
    const-string v0, "onError called with wrong recorder. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    const-string v1, "SoundRecorder"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v0, :cond_0

    goto :goto_4

    .line 262
    :cond_0
    const-string v0, "recording"

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 278
    return-void

    .line 268
    :sswitch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x325

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    goto :goto_0

    .line 264
    :sswitch_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x324

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 266
    goto :goto_0

    .line 272
    :sswitch_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x321

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 273
    nop

    .line 281
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_1
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    goto :goto_2

    .line 288
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 283
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v4, "SoundRecorder was not in a recording state."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "Stop"

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v5, 0x323

    invoke-virtual {v1, p0, v4, v5, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 291
    :goto_2
    return-void

    .line 288
    :goto_3
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 290
    throw v1

    .line 259
    :cond_1
    :goto_4
    const-string v0, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x320 -> :sswitch_1
        0x321 -> :sswitch_0
    .end sparse-switch
.end method
