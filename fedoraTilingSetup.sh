#!/usr/bin/env bash

declare script_dir_path
script_dir_path="$(dirname -- "$0")"

declare script_dir
script_dir="$(realpath "$script_dir_path")"

source "$script_dir"/functions.sh

# Menu for selecting the installation steps
while true; do
    echo
    echo '==============================================='
    echo '    Fedora Tiling Window Manager Setup'
    echo '==============================================='
    echo 'Please select an option:'
    echo
    echo '  System Preparation:'
    echo '1.  Backup configs'
    echo '2.  Update DNF for faster downloads'
    echo '3.  Upgrade Fedora'
    echo '4.  Update firmware'
    echo
    echo '  Package Management:'
    echo '5.  Install and Remove Packages'
    echo '6.  Enable Flathub repository'
    echo '7.  Install development tools'
    echo '8.  Install codecs'
    echo
    echo '  Environment Setup:'
    echo '9.  Create custom directories'
    echo '10. Install Nerd font'
    echo '11. Copy wallpapers'
    echo '12. Customize tiling settings'
    echo '13. Customize vimrc file'
    echo
    echo '  Applications & Tools:'
    echo '14. Install VLC, plugins, and restricted extras'
    echo '15. Install VSCode'
    echo '16. Configure Git'
    echo
    echo '  System Configuration:'
    echo '17. Install and enable firewalld'
    echo '18. Configure swappiness'
    echo '19. Speed up boot time'
    echo
    echo '20. Execute all steps'
    echo '0.  Exit'
    echo
    echo -n 'Enter the number of your choice: '
    read choice

    case $choice in
        1)  
            backup_configs
            ;; 
            
        2)  
            update_dnf
            ;;          

        3)  
            upgrade_fedora
            ;;         
     
        4)  
            update_firmware
            ;; 
      
        5)  
            install_packages
            remove_packages
            ;; 
    
        6)  
            enable_flathub
            ;;

        7) 
            install_development_tools 
            ;;
        
        8)  
            install_codecs
            ;;
        
        9) 
            create_directories
            ;;
            
        10)  
            install_font
            ;;
            
        11)  
            copy_wallpapers
            ;;

        12) 
            customize_tiling
            ;;

        13) 
            configure_vimrc
            ;;

        14) 
            install_vlc_restricted_extras
            ;;

        15)
            install_vscode
            ;;

        16)
            configure_git
            ;;

        17) 
            install_firewalld_enable
            ;;

        18) 
            configure_swappiness
            ;;

        19) 
            speed_up_boot_time
            ;;
        
        20)
            echo 'Executing all setup steps...'
            echo
            backup_configs
            update_dnf
            upgrade_fedora
            update_firmware
            install_packages
            remove_packages
            enable_flathub
            install_development_tools
            install_codecs
            create_directories
            install_font
            copy_wallpapers
            customize_tiling
            configure_vimrc
            install_vlc_restricted_extras
            install_vscode
            configure_git
            install_firewalld_enable
            configure_swappiness
            speed_up_boot_time
            echo
            echo 'All setup steps completed!'
            ;;

        0)
            echo 'Exiting.'
            break
            ;;
        *)
            echo 'Invalid option. Please try again.'
            ;;
    esac
    
    echo
    echo 'Press Enter to continue...'
    read
done

# Future installation steps
# Install Google Chrome
# Install mise-en-place
# Install OBS Studio