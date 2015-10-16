#!/bin/bash
cd /cmaf/
/opt/qt54/bin/qmake /cmaf/cmaf.pro -r -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug
make

