Name:      apache-log-stats
Summary:   Apache log stats
Version:   %{version}
Release:   %{release}
Group:     Applications/Web
License:   GPL
Vendor:    Andrew Johnstone.
URL:       https://github.com/ajohnstone/apache-log-stats
Source:    apache-log-stats-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root
BuildArch: noarch
AutoReq:   no

%description
Apache log stats

%prep
%setup -q

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor < /dev/null
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT
make pure_install PERL_INSTALL_ROOT=$RPM_BUILD_ROOT
find $RPM_BUILD_ROOT -type f -name .packlist -exec rm -f {} ';'
find $RPM_BUILD_ROOT -type d -depth -exec rmdir {} 2>/dev/null ';'
find $RPM_BUILD_ROOT -type f -name 'clustrix-graphite.pod' -exec rm -f {} ';'
chmod -R u+w $RPM_BUILD_ROOT/*

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc COPYING INSTALL README.md Changelog
%{_bindir}/*
%{_mandir}/man1/*.1*

%changelog
* Sun May 18 2013 Andrew Johnstone
- Initial
