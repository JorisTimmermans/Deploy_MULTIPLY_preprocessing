source $software_dir'/miniconda3/etc/profile.d/conda.sh'
echo 'Installing and Activating Miniconda environment for the MULTIPLYL-preprocessing-module...'
conda env create -f $installs_dir/Deploy_MULTIPLY_preprocessing/environments/environment_multiply_preprocessing-39e.yml
conda activate multiply-preprocessing-39e

echo 'conda activate multiply-preprocessing-39e' >> ~/.bashrc
source ~/.bashrc
# --- not working yet ---!!
# conda env create -f $installs_dir/Deploy_MULTIPLY_preprocessing/environment_multiply_vis.yml
# conda env create -f $installs_dir/Deploy_MULTIPLY_preprocessing/environments/environment_multiply_ui.yml

Deploy_MULTIPLY_preprocessing
