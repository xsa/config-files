clean-src:
  cd /usr/src && ${SUDO} find . -type l -name obj | xargs rm && \
    ${SUDO} make cleandir
lock:
  @xlock -mode tetris
  
mount-loach: mount-loach-ports mount-loach-src

mount-loach-ports:
  ${SUDO} mount_nfs loach:/home/OpenBSD/ports /loach/openbsd/ports

mount-loach-src:
  ${SUDO} mount_nfs loach:/home/OpenBSD/src /loach/openbsd/src
  
.include <bsd.own.mk>
  