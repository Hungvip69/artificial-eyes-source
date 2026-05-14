.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The TextToSpeech component speaks a given text aloud.  You can set the pitch and the rate of speech. <p>You can also set a language by supplying a language code.  This changes the pronunciation of words, not the actual language spoken.  For example, setting the language to French and speaking English text will sound like someone speaking English (en) with a French accent.</p> <p>You can also specify a country by supplying a country code. This can affect the pronunciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language.</p> <p>The languages and countries available depend on the particular device, and can be listed with the AvailableLanguages and AvailableCountries properties.</p>"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextToSpeech"

.field private static final iso3CountryToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso3LanguageToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

.field private allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

.field private country:Ljava/lang/String;

.field private countryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTtsPrepared:Z

.field private iso2Country:Ljava/lang/String;

.field private iso2Language:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private languageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pitch:F

.field private result:Z

.field private speechRate:F

.field private final tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# direct methods
.method static bridge synthetic -$$Nest$fputresult(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    .line 81
    invoke-static {}, Lcom/google/appinventor/components/runtime/TextToSpeech;->initLocaleMaps()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 77
    iput v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    .line 135
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, "useExternalLibrary":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "external"

    goto :goto_1

    :cond_1
    const-string v2, "internal"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TTS library."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeech"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v2, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    .line 153
    .local v2, "callback":Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    if-eqz v1, :cond_2

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    invoke-direct {v3, p1, v2}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2

    .line 154
    :cond_2
    new-instance v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    :goto_2
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    .line 156
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 157
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 158
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 160
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 162
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 168
    return-void
.end method

.method private getLanguageAndCountryLists()V
    .locals 9

    .line 407
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 410
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 412
    .local v3, "locale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v4, v3}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    .line 413
    .local v4, "res":I
    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 414
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "tempLang":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "tempCountry":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 420
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 423
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "res":I
    .end local v5    # "tempLang":Ljava/lang/String;
    .end local v6    # "tempCountry":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 430
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 432
    :cond_3
    return-void
.end method

.method private static initLocaleMaps()V
    .locals 6

    .line 106
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 107
    .local v0, "locales":[Ljava/util/Locale;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 109
    .local v3, "locale":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "iso3Country":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 111
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v4    # "iso3Country":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 113
    :catch_0
    move-exception v4

    .line 117
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "iso3Language":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 119
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v4    # "iso3Language":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 121
    :catch_1
    move-exception v4

    .line 107
    .end local v3    # "locale":Ljava/util/Locale;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method

.method private static iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "iso3Country"    # Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 346
    .local v0, "mappedLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 348
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Locale;

    .line 350
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "iso3Language"    # Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 215
    .local v0, "mappedLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 217
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Locale;

    .line 219
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 3
    .param p1, "result"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to raise after the message is spoken. The result will be true if the message is spoken successfully, otherwise it will be false."
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "AfterSpeaking"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public AvailableCountries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the country codes available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public AvailableLanguages()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the languages available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 458
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforeSpeaking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "countries"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Country code to use for speech generation.  This can affect the pronounciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language."
    .end annotation

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 338
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 329
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 330
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    .line 331
    goto :goto_0

    .line 333
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    .line 335
    nop

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    .line 342
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "languages"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the language for TextToSpeech. This changes the way that words are pronounced, not the actual language that is spoken.  For example setting the language to and speaking English text with sound like someone speaking English with a French accent."
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 207
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 198
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 199
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    .line 200
    goto :goto_0

    .line 202
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    .line 204
    nop

    .line 210
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    .line 211
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of Pitch"
    .end annotation

    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    return v0
.end method

.method public Pitch(F)V
    .locals 2
    .param p1, "pitch"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Pitch for TextToSpeech The values should be between 0 and 2 where lower values lower the tone of synthesized voice and greater values raise it."
    .end annotation

    .line 238
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 248
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setPitch(F)V

    .line 249
    return-void

    .line 239
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pitch value should be between 0 and 2, but user specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    .line 440
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v0, "loc":Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1, p1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    .line 442
    return-void
.end method

.method public SpeechRate()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of SpeechRate"
    .end annotation

    .line 296
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    return v0
.end method

.method public SpeechRate(F)V
    .locals 2
    .param p1, "speechRate"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the SpeechRate for TextToSpeech. The values should be between 0 and 2 where lower values slow down the pitch and greater values accelerate it."
    .end annotation

    .line 277
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    .line 287
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setSpeechRate(F)V

    .line 288
    return-void

    .line 278
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speechRate value should be between 0 and 2, but user specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->stop()V

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    .line 451
    return-void
.end method

.method public onClear()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    .line 493
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    .line 488
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    .line 483
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    .line 478
    return-void
.end method

.method public prepareLanguageAndCountryProperties()V
    .locals 4

    .line 382
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TextToSpeech"

    const/16 v3, 0xa8d

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 389
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Speak(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->getLanguageAndCountryLists()V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    .line 395
    :cond_1
    :goto_0
    return-void
.end method
