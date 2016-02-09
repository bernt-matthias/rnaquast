VERSION="$(cat ./VERSION)"
rm -rf rnaQUAST-$VERSION
mkdir -p rnaQUAST-$VERSION

cp -r ./other_libs rnaQUAST-$VERSION/other_libs
cp -r ./metrics rnaQUAST-$VERSION/metrics
cp -r ./objects rnaQUAST-$VERSION/objects
cp -r ./general rnaQUAST-$VERSION/general
cp -r ./report rnaQUAST-$VERSION/report
cp -r ./test_data rnaQUAST-$VERSION/test_data
cp -r ./quast23 rnaQUAST-$VERSION/quast23

cp ./LICENSE rnaQUAST-$VERSION
cp ./README rnaQUAST-$VERSION
cp ./VERSION rnaQUAST-$VERSION
cp ./rnaQUAST.py rnaQUAST-$VERSION
cp ./manual.html rnaQUAST-$VERSION
cp ./fig1.png rnaQUAST-$VERSION
cp ./GPLv2.txt rnaQUAST-$VERSION

# cleaning .pyc and .pyo
rm -f rnaQUAST-$VERSION/*.pyc
rm -f rnaQUAST-$VERSION/*.pyo
rm -f rnaQUAST-$VERSION/*/*.pyc
rm -f rnaQUAST-$VERSION/*/*.pyo
rm -f rnaQUAST-$VERSION/*/*/*.pyc
rm -f rnaQUAST-$VERSION/*/*/*.pyo
rm -f rnaQUAST-$VERSION/*~
rm -f rnaQUAST-$VERSION/*/*~
rm -f rnaQUAST-$VERSION/*/*/*~


rm -f rnaQUAST-$VERSION.tar.gz
tar -pczf rnaQUAST-$VERSION.tar.gz rnaQUAST-$VERSION
rm -r rnaQUAST-$VERSION
