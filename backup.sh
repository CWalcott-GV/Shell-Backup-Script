if [ $# = 0 ]
 then
  echo "Must include at least one argument!"
  exit 1
fi

if [[ $* = "-c"  ]]
 then
  ls ~/backup | wc -l
  du -h ~/backup

elif [[ $* = "-l" ]]
 then
  ls ~/backup -a

elif [ $1 = "--help" ]
 then
  echo "Proper Syntax ./backup file1 file2 file3 [options]"
  echo ""
  echo "Where file1 file2 file3 were intended to be copied into backup"
  echo ""
  echo "[options] -----------------------------------------------------------------"
  echo "-c - shows the number of files and directories in the 'backup' subdirectory"
  echo "And it shows the size of 'backup'"
  echo "-l - lists files and directories of the 'backup' subdirectory"
fi

if [ ! -d ~/backup ]
 then
  mkdir ~/backup
fi
