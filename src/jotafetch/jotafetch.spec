Name:           jotafetch
Version:        1.0.0
Release:        1%{?dist}
Summary:        A neofetch-like utility made by Jotalea

License:        MIT
URL:            https://github.com/jotalea/jotafetch
Source0:        %{url}/archive/refs/tags/v%{version}.tar.gz

BuildArch:      noarch
Requires:       bash

%description
A neofetch-like utility made by Jotalea. Displays system information in a pretty way.

%prep
%setup -q

%build
# Nothing to build (bash script)

%install
%make_install PREFIX=/usr

%files
%license LICENSE
%{_bindir}/jotafetch
%{_mandir}/man1/jotafetch.1*

%changelog
* Thu Apr 09 2026 Jotalea <jotalea@example.com> - 1.0.0-1
- Initial release
