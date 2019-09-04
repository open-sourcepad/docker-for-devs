RESULT=`echo | docker exec dockerfordevs curl --retry 10 --retry-connrefused -sb -H http://0.0.0.0:3000/api/health_check`

echo "comparing ${RESULT}"
echo "with ${ANSWER}"

if [ "$RESULT" = "$ANSWER" ]; then 
    exit 0
else
    exit 1
fi;