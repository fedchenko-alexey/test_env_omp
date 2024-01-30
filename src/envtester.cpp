#include <QDir>
#include <auroraapp.h>
#include <QDebug>

#include "envtester.h"

EnvTester::EnvTester(QObject *parent) : QObject(parent)
{  }

QString EnvTester::cachePath() const
{
    auto path = Aurora::Application::cacheDir(false).path() + "/testdir";
    return path;
}
