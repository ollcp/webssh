Name:     webssh
Version:  1.26
Release:  1
Summary:  webssh
License:  GPLv3+

%description
webssh

%install
mkdir -p %{buildroot}/usr/local/bin
install -m 755 -t %{buildroot}/usr/local/bin /github/workspace/webssh_linux_amd64


%files
/usr/local/bin/webssh_linux_amd64

