#/bin/bash
# Simple Build Script
# Desc: Takes in source and dest as args, 

## Integrate Code Function
function integrate_code(){
    SOURCE=$1;
    DEST=$2;

    git checkout $DEST;
    git pull -ff-only origin $DEST;
    result=$?;

    if [$result -ne 0]
    then
        echo "Error in pull";
        exit 1;
    fi 
    git merge -ff-only $SOURCE --no-edit;
    result=$?;

    if [$result -ne 0]
    then
        echo "Error in merge";
        exit 1;
    fi

    git push origin $DEST;
    result=$?;
    
    if [$result -ne 0]
    then
        echo "Error in a push";
        exit 1;
    fi
    return 0;
}
