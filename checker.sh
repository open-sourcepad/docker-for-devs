RESULT=`echo | docker run --name dockerfordevs dockerfordevs`

echo "comparing ${RESULT}"
echo "with ${ANSWER}"

if [ "$RESULT" = "$ANSWER" ]; then 
    exit 0
else
    exit 1
fi;