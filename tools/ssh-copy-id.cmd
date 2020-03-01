@ECHO OFF
IF NOT "%1"=="" (
    SET machine=%1
    SHIFT
) ELSE (
    ECHO target machine not specified, exiting
    ECHO.
    ECHO Command format: ssh-copy-id [user@]machine [-i [identity_file]]
    GOTO :theend
)

SET identity_file=%userprofile%\.ssh\id_rsa.pub
:loop
IF NOT "%1"=="" (
    IF "%1"=="-i" (
        SET i_file=%2
        SHIFT
    )
    SHIFT
    GOTO :loop
)

set linux_cmd="umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys"
type %identity_file% | ssh %machine% %linux_cmd%

REM Source: https://linux.die.net/man/1/ssh-copy-id
REM set src_pub_key=%userprofile%\.ssh\id_rsa.pub
REM set machine=android
REM set linux_cmd="umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys"
REM type %src_pub_key% | ssh %machine% %linux_cmd%

:theend
