line=$(grep "^name" environment.yml)
env_name=${line/"name: "/""}
conda activate $env_name
read -n 1 -p "Will export environment? [Y/n]: " export_env
if [ "$export_env" != "${export_env#[Yy]}" ] ;then
    conda env export > environment.yml
    conda list -e > requirements.txt    
fi
conda deactivate
conda env remove --name ${result}