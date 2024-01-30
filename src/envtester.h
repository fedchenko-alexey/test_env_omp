#ifndef ENVTESTER_H
#define ENVTESTER_H

#include <QObject>

class EnvTester : public QObject
{
    Q_OBJECT
public:
    explicit EnvTester(QObject *parent = nullptr);

    Q_INVOKABLE QString cachePath() const;
};

#endif // ENVTESTER_H
