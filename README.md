# hackupdater
A startup script for OSx86 (Hackintosh) user to install kexts or run scripts on update or upgrade

## Installation
1. Download the zip file from [here](https://github.com/MuntashirAkon/hackupdater/releases/latest) and extract it. You'll find three files there
2. Run the `hackupdater_installer`, it'll ask for admin password, give it
3. Done.

*NOTE 1:* Installing kexts requires a reboot to work. It'll reboot automatically (so it'll reboot two times during update procedure—one to update and another to run post update tasks. It's done so that the user don't have to do anything at all).

*NOTE 2:* Backup of your existing kext(s) can be found here: `/Users/Shared/Backups`

## Usage:
1. Add/remove a kext
  To add a kext,
  
  ```shell
  sudo hackupdater add kext /path/to/kext.kext
  ```
  To remove a kext,
  
  ```shell
  sudo hackupdater remove kext kext.kext
  ```
2. Add/remove a script
  To add a script,
  
  ```shell
  sudo hackupdater add script /path/to/script
  ```
  To remove a script,
  ```shell
  sudo hackupdater remove script script
  ```
3. List added kexts/scripts
  To list kexts,

  ```shell
  hackupdater list kext
  ```
  To list scripts,

  ```shell
  hackupdater list script
  ```
4. To run hackupdater manually (it's actually useless since it already took care of everything, still included)

  ```shell
  sudo hackupdater update
  ```
5. For help

  ```shell
  hackupdater help
  ```

## How it works
hackupdater is created using `PHP CLI`. It always triggers at startup and checks if the OS is updated. If not, it'll remain silent. Otherwise, it'll install the kexts and run the scripts you added (that means, it can be used to run post update scripts too).

## Debug:
* Error log: `/Users/Shared/.hackupdater/logs/error.log`
* Std output log: `/Users/Shared/.hackupdater/logs/out.log`

