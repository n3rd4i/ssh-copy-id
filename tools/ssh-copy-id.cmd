REM source: https://stackoverflow.com/a/3981086/2692448
@ECHO OFF
SET man1=%1
SET man2=%2
SHIFT & SHIFT

:loop
IF NOT "%1"=="" (
    IF "%1"=="-username" (
        SET user=%2
        SHIFT
    )
    IF "%1"=="-otheroption" (
        SET other=%2
        SHIFT
    )
    SHIFT
    GOTO :loop
)
ECHO Man1 = %man1%
ECHO Man2 = %man2%
ECHO Username = %user%
ECHO Other option = %other%
REM ...do stuff here...

REM Source: https://linux.die.net/man/1/ssh-copy-id
REM ssh-copy-id [-i [identity_file]] [user@]machine

REM Source: https://linux.die.net/man/1/ssh-copy-id
REM set src_pub_key=%userprofile%\.ssh\id_rsa.pub
REM set machine=android
REM set linux_cmd="umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys"
REM type %src_pub_key% | ssh %machine% %linux_cmd%

:theend