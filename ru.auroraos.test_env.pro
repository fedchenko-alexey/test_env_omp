TARGET = ru.auroraos.test_env

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/envtester.cpp \
    src/main.cpp \

HEADERS += \
    src/envtester.h

DISTFILES += \
    rpm/ru.auroraos.test_env.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.auroraos.test_env.ts \
    translations/ru.auroraos.test_env-ru.ts \
