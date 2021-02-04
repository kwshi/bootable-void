# vi: ft=dockerfile
FROM "blinc/void.rootfs"

COPY ["src/xbps", "/etc/xbps.d"]
RUN ["chmod", "2774", "/etc/xbps.d"]

RUN ["ln", "-s", "lib", "/usr/lib64"]

RUN ["xbps-install", "-Suy", "xbps", "base-files"]
RUN ["xbps-install", "-uy"]
RUN ["xbps-install", "-y", "base-system", "base-devel", "curl", "git", "stow"]

RUN ["useradd", "-rb", "/opt/blinc", "-G", "wheel", "vpkgs"]
RUN ["useradd", "-rb", "/opt/blinc", "-G", "wheel", "opam"]
RUN ["useradd", "-rb", "/opt/blinc", "-G", "wheel", "npm"]
RUN ["useradd", "-rb", "/opt/blinc", "-G", "wheel", "pip"]
RUN ["useradd", "-rb", "/opt/blinc", "-G", "wheel", "poetry"]

CMD ["/bin/bash"]
