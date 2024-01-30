#include <auroraapp.h>
#include <QtQuick>

#include "envtester.h"

int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("ru.auroraos"));
    application->setApplicationName(QStringLiteral("test_env"));

    qmlRegisterType<EnvTester>("ru.auroraos.test", 1, 0, "EnvTester");

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/test_env.qml")));
    view->show();

    return application->exec();
}
