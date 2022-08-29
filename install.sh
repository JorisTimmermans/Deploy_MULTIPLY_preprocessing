export rooting_dir='/home/jtimmer1'
export installs_dir=$rooting_dir'/installs'
export software_dir=$rooting_dir'/software'
export data_dir=$rooting_dir'/data'
export config_dir=$rooting_dir'/.multiply'

################################
#### Install and Activate Multiply-platform environment
################################
bash install_environments.sh

################################
#### Download MULTIPLY individual modules
################################
echo 'Downloading and installing MULTIPLY modules...'
bash install_download_multiply_preprocessing.sh
bash install_setup_multiply_preprocessing.sh

echo 'Setting up MULTIPLY Configuration...'
unzip archive/multiply_configuration.zip -d $config_dir

# echo 'setting up scripts'
ln -s $software_dir'/multiply-ui/multiply_ui/server/resources/scripts' $rooting_dir'/scripts'
cp -R notebooks $rooting_dir'/notebooks'
chmod +Rx $rooting_dir'/notebooks'

# ln -s $software_dir'/multiply-ui/notebooks' $rooting_dir'/notebooks'

################################
#### modify files to update paths
####   hint: use following command to search for 'old paths' 
####   "grep -rnw '/home/joris/software/multiply-ui/' -e '/home/jtimmer1/software"
################################
bash install_post.sh

##################
cp launch.sh $rooting_dir
chmod +x $rooting_dir'/launch.sh'

echo 'Finished installation'
echo 'To launch Multiply run "./launch.sh" in the terminal'

#################
#bash install_configure_jupyter.sh

