#!/system/bin/sh

# SCRIPT CREATED FOR EASY ACTIVATING AND DEACTIVATING GOOGLE PLAY SERVICES
# REQUIREMENTS = Root Access And have google play service
# DEV = lucas290as
# AUTHOR = LUCAS DE SOUZA SANTOS

    # MAIN

clear;
echo "\t STARTING APPLICATION, WAIT...";
sleep 3;
clear;

main() 
{
    # IF ENABLE

    result=$(pm list packages -e | grep com.google.android.gms);
    if [ $result == "package:com.google.android.gms" ]; then
        disableApp
    else 
        enableApp
    fi
}
    #  PART 2

disableApp() 
{
    clear;
    echo -n "Do you want to disable the app? (y)Yes | (n)Not [n]: ";
    read disabled;
    case $disabled in
        y|Y)
            clear;
            echo "\t DISABLED APP, WAIT...";
            sleep 2;
            pm disable com.google.android.gms
            clear;
            echo "\t APP SUCCESSFULLY DISABLED!";
            sleep 1;
            clear;
            echo "\t LEAVING THE APP...";
            sleep 2;
            break
            ;;

        n|N|'')
            clear;
            echo "\t LEAVING THE APP...";
            sleep 2;
            break;
            ;;

        *)
            clear;
            echo "\t INVALID KEY";
            disableApp
            break;
            ;;
    esac
    clear;
}

enableApp() 
{
    clear;
    echo -n "Do you want to activate the APP? (y)Yes | (n)Not [n]: ";
    read enabled;
    case $enabled in 
        y|Y)
            clear;
            echo "\t ACTIVATING APP, WAIT...";
            sleep 2;
            pm enable com.google.android.gms
            clear;
            echo "\t APP ACTIVATED SUCCESSFULLY!!";
            sleep 1;
            clear;
            echo "\t LEAVING THE APP...";
            sleep 2;
            break;
            ;;

        n|N|'')
            clear;
            echo "\t LEAVING THE APP...";
            sleep 2;
            break;
            ;;

        *)
            clear;
            echo "\t INVALID KEY";
            enableApp
            break;
            ;;
    esac
    clear;
}

    # STARTED

main