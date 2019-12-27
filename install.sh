#!/bin/bash 

# Responsible for loading the file containing the information of what will be installed.
source setup.sh

date_start=$(date +'%Y-%m-%d %T')

# Installing 
source scripts/hello.sh

if [ $softwares -eq true ]
then
    # Installing softwares
    source scripts/softwares.sh
fi

if [ $server -eq true ]
then
    # Installing server
    source scripts/server.sh
fi

if [ $database -eq true ]
then
    # Installing database
    source scripts/database.sh
fi

if [ $programming_languages -eq true ]
then
    # Installing programming languages
    source scripts/programming_languages.sh
fi

if [ $tools -eq true ]
then
    # Installing tools
    source scripts/tools.sh
fi

# Installing server configuration
# The server settings is based on the settings made in the server step.
source scripts/server_configuration.sh

if [ ${packages[vim]} -eq true ]
then
# Installing vim configuration
source scripts/vim_configuration.sh
fi

if [ $config_so_dracula_theme -eq true ]
then
    # Installing config SO dracula theme
    source scripts/config_so_dracula_theme.sh
fi

# Installing checking installed packages
source scripts/checking_installed_packages.sh

# process completion
source scripts/finalization.sh