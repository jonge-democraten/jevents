#!/bin/sh

echo "Cleaning builddir"
rm -r builddir/*

echo "Packaging files"
cp src/pkg_jevents.xml builddir/
cp src/install.php builddir/
cp -r src/language builddir/
cd src/com_jevents/
zip -r ../../builddir/com_jevents.zip *
cd ../finder/
zip -r ../../builddir/finder.zip *
cd ../googl/
zip -r ../../builddir/googl.zip *
cd ../mod_jevents_cal/
zip -r ../../builddir/mod_jevents_cal.zip *
cd ../mod_jevents_custom/
zip -r ../../builddir/mod_jevents_custom.zip *
cd ../mod_jevents_filter/
zip -r ../../builddir/mod_jevents_filter.zip *
cd ../mod_jevents_latest/
zip -r ../../builddir/mod_jevents_latest.zip *
cd ../mod_jevents_legend/
zip -r ../../builddir/mod_jevents_legend.zip *
cd ../mod_jevents_switchview/
zip -r ../../builddir/mod_jevents_switchview.zip *
cd ../search/
zip -r ../../builddir/search.zip *

cd ../../builddir/
zip -r ../jevents_3.1.30.zip *
