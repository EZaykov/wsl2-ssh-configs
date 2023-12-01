// FSTAB
LABEL=cloudimg-rootfs	/	 ext4	defaults	0 0
C:\Users\<USERNAME>\.ssh\ /home/<USERNAME>/.ssh drvfs rw,noatime,uid=1000,gid=1000,case=off,umask=0077,fmask=0177 0 0

// PAGEANT SHORTCUT
C:\ProgramData\chocolatey\bin\PAGEANT.EXE --encrypted "C:\Users\%USERNAME%\.ssh\id_rsa.ppk" --openssh-config "C:\Users\%USERNAME%\.ssh\pageant.conf"