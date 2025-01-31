# Base image
FROM ianhorn/servercore:ltsc2022-git-chocolatey-python.v1.0.0 as pgstacbase

WORKDIR /downloads

# Install with Chocolatey
RUN \
    # choco install vcredist140 -y && \
    choco install postgresql -y
# Install Postgis
RUN pwsh -Command "Invoke-Webrequest -Uri https://download.osgeo.org/postgis/windows/pg17/postgis-bundle-pg17x64-setup-3.5.2-1.exe -OutFile postgis-install.exe \ 
    Start-Process -FilePath postgis-install.exe -ArgumentList '/silent' -NoNewWindow -Wait;"