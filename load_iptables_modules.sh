function checkModule(){
  MODULE="$1"
  if lsmod | grep "$MODULE" &> /dev/null ; then
    echo "$MODULE is loaded"
  else
    echo "Loading $MODULE"
    sudo modprobe $MODULE
  fi
}

while true ; do
  checkModule ip6table_filter
  checkModule ip6table_nat
  echo "sleeping for ${SLEEP:-120}"
  sleep ${SLEEP:-120}
done

