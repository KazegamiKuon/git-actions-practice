echo "Your enviroment will name as dirname where you call this bash"
dirname=$(pwd)
result="${dirname%"${dirname##*[!/]}"}" # extglob-free multi-trailing-/ trim
result="${result##*/}"                  # remove everything before the last /
environment_path="$dirname""/environment.yml"
if [ ! -f $environment_path ]
then
echo "--------We will create basic environment!--------"
dependencies_contain="dependencies:
 - python=3.8
 - pip"
read -n 1 -p "Python environment? [Y/n]: " python_env
echo ""
if [ "$python_env" != "${python_env#[Yy]}" ] ;then
dependencies_contain="dependencies:
 - python=3.8
 - numpy
 - scipy
 - scikit-learn
 - jupyter 
 - notebook 
 - pandas 
 - seaborn
 - pip"
fi
echo "name: ${result}
${dependencies_contain}" > environment.yml
fi
conda env create -f environment.yml
conda activate $result