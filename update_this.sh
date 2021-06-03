file_bash_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
current_run_path=$(pwd)
cd $file_bash_path
cd ../
git pull
cd $current_run_path