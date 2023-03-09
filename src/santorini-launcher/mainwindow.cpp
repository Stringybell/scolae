#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{

//    int id = QFontDatabase::addApplicationFont(":/fonts/DalekPinpointBold.ttf");
//    QString family = QFontDatabase::applicationFontFamilies(id).at(0);
//    QFont dalekpinpoint(family);


    ui->setupUi(this);

    //int loadedFontID = QFontDatabase::addApplicationFont ( ":/fonts/DalekPinpointBold.ttf" );
    //QFont Triforce("Triforce");
    //ui->label->setFont(Triforce);

//    QFont santorini("DalekPinpointBold",16,QFont::Bold);
//    ui->centralWidget->setFont(santorini);


    //connect(ui->widget, SIGNAL(run()), this, SLOT(setup()));

//    connect(ui->horizontalSlider, SIGNAL(valueChanged(int)),
//            ui->progressBar, SLOT(setValue(int)));
//
//    connect(ui->horizontalSlider, SIGNAL(valueChanged(int)),
//            ui->progressBar_2, SLOT(setValue(int)));
//
//    disconnect(ui->horizontalSlider, SIGNAL(valueChanged(int)),
//               ui->progressBar, SLOT(setValue(int)));

    //ui->mainButton->setText("Play");
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::install()
{
    QTextStream(stdout) << "Install" << endl;
    QProcess process;
    #ifdef _WIN64
        QProcess::execute("bin/install64.bat");
    #elif _WIN32
        QProcess::execute("bin/install32.bat");
    #elif __linux__
        QProcess::execute("bin/install.sh");
    #elif __unix__
        QProcess::execute("bin/install.sh");
    #else
        printf("Unidentified OS\n");
    #endif
}

void MainWindow::play()
{
    QTextStream(stdout) << "Welcome to Santorini" << endl;
    QProcess process;
    #ifdef _WIN64
        QProcess::execute("\"C:\\Program Files\\Santorini\\bin\\santorini64.exe\"");
    #elif _WIN32
        QProcess::execute("\"C:\\Program Files (x86)\\Santorini\\bin\\santorini32.exe\"");
    #elif __linux__
        QProcess::execute("santorini");
    #elif __unix__
        QProcess::execute("santorini");
    #else
        printf("Unidentified OS\n");
    #endif
}

void MainWindow::uninstall()
{
    QTextStream(stdout) << "Uninstall" << endl;
    QProcess process;
    #ifdef _WIN64
        QProcess::execute("bin/uninstall64.bat");
    #elif _WIN32
        QProcess::execute("bin/uninstall32.bat");
    #elif __linux__
        QProcess::execute("bin/uninstall.sh");
    #elif __unix__
        QProcess::execute("bin/uninstall.sh");
    #else
        printf("Unidentified OS\n");
    #endif
}