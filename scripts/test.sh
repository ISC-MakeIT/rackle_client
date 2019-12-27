exit=0

echo "==========testing=========="

make analyze || error=1
make test || error=1

exit $error

