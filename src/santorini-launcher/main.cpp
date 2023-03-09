#include "mainwindow.h"
#include <QApplication>
#include <QFile>
#include <QFont>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QFontDatabase::addApplicationFont(":/resources/fonts/DalekPinpointBold.ttf");
//    QFontDatabase db;
//    for(int i=0; i<db.families().size(); i++)
//    {
//        qDebug() << db.families().at(i);
//        QTextStream(stdout) << db.families().at(i) << endl;
//    }

    MainWindow w;
    w.show();
    return a.exec();
}
