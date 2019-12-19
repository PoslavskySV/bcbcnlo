#!/bin/bash

GROOVY_PATH=""
MATHEMATICA_PATH=""
MATHEMATICA_AVAILABLE=true

if [ "$(uname)" == "Darwin" ]; then
    MATHEMATICA_PATH="/Applications/Mathematica.app/Contents/"
fi

if [ "$(hostname)" == "ix6" ]; then
    GROOVY_PATH="/home/r/groovy-2.4.5/bin/"
    MATHEMATICA_PATH="/home/r/Mathematica9/"
fi

if [ "$(hostname)" == "ix8" ]; then
    GROOVY_PATH="/home/poslavsky/groovy-2.4.5/bin/"
    MATHEMATICA_AVAILABLE=false
fi

if [ "$MATHEMATICA_AVAILABLE" = true ] ; then
    JLINK_PATH="${MATHEMATICA_PATH}SystemFiles/Links/JLink/JLink.jar"
fi

groovyCmd="${GROOVY_PATH}groovy"


# Main processing:

os=`uname`
delta=100

case $os in
    Darwin)
        freeBlocks=$(vm_stat | grep free | awk '{ print $3 }' | sed 's/\.//')
        inactiveBlocks=$(vm_stat | grep inactive | awk '{ print $3 }' | sed 's/\.//')
        speculativeBlocks=$(vm_stat | grep speculative | awk '{ print $3 }' | sed 's/\.//')
        freeMb=$((($freeBlocks+$speculativeBlocks)*4096/1048576))
        inactiveMb=$(($inactiveBlocks*4096/1048576))
        maxMb=$((($freeMb+$inactiveMb-$delta)))
    ;;
    Linux)
        rFreeMb=$(free -m | head -n 3 | tail -n 1 | awk '{ print $4 }')
        maxMb=$(($rFreeMb-$delta))
    ;;
    *)
       echo "Unknown OS."
       exit 1
    ;;
esac



mixcrArgs=()
javaArgs=()
needXmxXms=true
otherJar=""

while [[ $# > 0 ]]
do
    key="$1"
    shift
    case $key in
        -D*|-X*|-ea|-agentlib*)
            javaArgs+=(${key})

            case $key in
                -Xmx*|-Xms*)
                    needXmxXms=false
                    ;;
            esac

            ;;
        -jar|-V)
            otherJar="$1"
            shift
            ;;
        *)
            mixcrArgs+=(${key})
            ;;
    esac
done

if [[ ${needXmxXms} == true ]]
then
    targetXmx=3000

    if [[ $targetXmx -gt $maxMb ]];
    then
        targetXmx=$maxMb
    fi

    javaArgs+=("-Xmx${targetXmx}m")

    targetXms=$((${targetXmx}*2/3))

    if [[ $targetXms -lt 2000 ]];
    then
        targetXms=$targetXmx
    fi

    javaArgs+=("-Xms${targetXms}m")
fi

if [[ -z "$otherJar" ]];
then
    jar="redberry.jar"
else
    jar=$otherJar
fi

if [[ "$jar" == "" ]];
then
    echo "No jar."
    exit 1
fi

export JAVA_OPTS="${javaArgs[@]} -XX:+AggressiveOpts"
$groovyCmd -cp "$jar":"$JLINK_PATH" "${mixcrArgs[@]}"
