@echo off
rem download.bat: Download geomagnetic data from Edinburgh GIN

rem Configurable parameters - these variables control authentication
rem to the GIN web site and use of proxy servers at the users site -
rem change them as required (though the defaults should work OK)
set gin_username=
set gin_password=
set proxy_username=
set proxy_address=

rem check a download tool is available
set errmsg="Unable to find URL download software (curl or wget)"
call findtool
if %gmtool%==none goto :errhand

rem are we restarting a failed operation or starting from new
if not exist counter.bat goto D0
call counter.bat
goto D%gmcount%


:D0
echo Creating directories...
call safemd "2014"
call safemd "2014\PIL"
set errmsg="Unable to create directory: 2014\PIL"
if %gmstatus%==1 goto errhand
echo set gmcount=1 > counter.bat

:D1
call safemd "2015"
call safemd "2015\PIL"
set errmsg="Unable to create directory: 2015\PIL"
if %gmstatus%==1 goto errhand
echo set gmcount=2 > counter.bat

:D2
echo 0%% - downloading file: 2014\PIL\pil20140101dmin.min
set errmsg="Unable to download 2014\PIL\pil20140101dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-01&dataDuration=1" "2014\PIL\pil20140101dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=3 > counter.bat

:D3
echo 0%% - downloading file: 2014\PIL\pil20140102dmin.min
set errmsg="Unable to download 2014\PIL\pil20140102dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-02&dataDuration=1" "2014\PIL\pil20140102dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=4 > counter.bat

:D4
echo 0%% - downloading file: 2014\PIL\pil20140103dmin.min
set errmsg="Unable to download 2014\PIL\pil20140103dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-03&dataDuration=1" "2014\PIL\pil20140103dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=5 > counter.bat

:D5
echo 0%% - downloading file: 2014\PIL\pil20140104dmin.min
set errmsg="Unable to download 2014\PIL\pil20140104dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-04&dataDuration=1" "2014\PIL\pil20140104dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=6 > counter.bat

:D6
echo 1%% - downloading file: 2014\PIL\pil20140105dmin.min
set errmsg="Unable to download 2014\PIL\pil20140105dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-05&dataDuration=1" "2014\PIL\pil20140105dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=7 > counter.bat

:D7
echo 1%% - downloading file: 2014\PIL\pil20140106dmin.min
set errmsg="Unable to download 2014\PIL\pil20140106dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-06&dataDuration=1" "2014\PIL\pil20140106dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=8 > counter.bat

:D8
echo 1%% - downloading file: 2014\PIL\pil20140107dmin.min
set errmsg="Unable to download 2014\PIL\pil20140107dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-07&dataDuration=1" "2014\PIL\pil20140107dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=9 > counter.bat

:D9
echo 1%% - downloading file: 2014\PIL\pil20140108dmin.min
set errmsg="Unable to download 2014\PIL\pil20140108dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-08&dataDuration=1" "2014\PIL\pil20140108dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=10 > counter.bat

:D10
echo 2%% - downloading file: 2014\PIL\pil20140109dmin.min
set errmsg="Unable to download 2014\PIL\pil20140109dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-09&dataDuration=1" "2014\PIL\pil20140109dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=11 > counter.bat

:D11
echo 2%% - downloading file: 2014\PIL\pil20140110dmin.min
set errmsg="Unable to download 2014\PIL\pil20140110dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-10&dataDuration=1" "2014\PIL\pil20140110dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=12 > counter.bat

:D12
echo 2%% - downloading file: 2014\PIL\pil20140111dmin.min
set errmsg="Unable to download 2014\PIL\pil20140111dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-11&dataDuration=1" "2014\PIL\pil20140111dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=13 > counter.bat

:D13
echo 3%% - downloading file: 2014\PIL\pil20140112dmin.min
set errmsg="Unable to download 2014\PIL\pil20140112dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-12&dataDuration=1" "2014\PIL\pil20140112dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=14 > counter.bat

:D14
echo 3%% - downloading file: 2014\PIL\pil20140113dmin.min
set errmsg="Unable to download 2014\PIL\pil20140113dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-13&dataDuration=1" "2014\PIL\pil20140113dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=15 > counter.bat

:D15
echo 3%% - downloading file: 2014\PIL\pil20140114dmin.min
set errmsg="Unable to download 2014\PIL\pil20140114dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-14&dataDuration=1" "2014\PIL\pil20140114dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=16 > counter.bat

:D16
echo 3%% - downloading file: 2014\PIL\pil20140115dmin.min
set errmsg="Unable to download 2014\PIL\pil20140115dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-15&dataDuration=1" "2014\PIL\pil20140115dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=17 > counter.bat

:D17
echo 4%% - downloading file: 2014\PIL\pil20140116dmin.min
set errmsg="Unable to download 2014\PIL\pil20140116dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-16&dataDuration=1" "2014\PIL\pil20140116dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=18 > counter.bat

:D18
echo 4%% - downloading file: 2014\PIL\pil20140117dmin.min
set errmsg="Unable to download 2014\PIL\pil20140117dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-17&dataDuration=1" "2014\PIL\pil20140117dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=19 > counter.bat

:D19
echo 4%% - downloading file: 2014\PIL\pil20140118dmin.min
set errmsg="Unable to download 2014\PIL\pil20140118dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-18&dataDuration=1" "2014\PIL\pil20140118dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=20 > counter.bat

:D20
echo 4%% - downloading file: 2014\PIL\pil20140119dmin.min
set errmsg="Unable to download 2014\PIL\pil20140119dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-19&dataDuration=1" "2014\PIL\pil20140119dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=21 > counter.bat

:D21
echo 5%% - downloading file: 2014\PIL\pil20140120dmin.min
set errmsg="Unable to download 2014\PIL\pil20140120dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-20&dataDuration=1" "2014\PIL\pil20140120dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=22 > counter.bat

:D22
echo 5%% - downloading file: 2014\PIL\pil20140121dmin.min
set errmsg="Unable to download 2014\PIL\pil20140121dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-21&dataDuration=1" "2014\PIL\pil20140121dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=23 > counter.bat

:D23
echo 5%% - downloading file: 2014\PIL\pil20140122dmin.min
set errmsg="Unable to download 2014\PIL\pil20140122dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-22&dataDuration=1" "2014\PIL\pil20140122dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=24 > counter.bat

:D24
echo 6%% - downloading file: 2014\PIL\pil20140123dmin.min
set errmsg="Unable to download 2014\PIL\pil20140123dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-23&dataDuration=1" "2014\PIL\pil20140123dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=25 > counter.bat

:D25
echo 6%% - downloading file: 2014\PIL\pil20140124dmin.min
set errmsg="Unable to download 2014\PIL\pil20140124dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-24&dataDuration=1" "2014\PIL\pil20140124dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=26 > counter.bat

:D26
echo 6%% - downloading file: 2014\PIL\pil20140125dmin.min
set errmsg="Unable to download 2014\PIL\pil20140125dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-25&dataDuration=1" "2014\PIL\pil20140125dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=27 > counter.bat

:D27
echo 6%% - downloading file: 2014\PIL\pil20140126dmin.min
set errmsg="Unable to download 2014\PIL\pil20140126dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-26&dataDuration=1" "2014\PIL\pil20140126dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=28 > counter.bat

:D28
echo 7%% - downloading file: 2014\PIL\pil20140127dmin.min
set errmsg="Unable to download 2014\PIL\pil20140127dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-27&dataDuration=1" "2014\PIL\pil20140127dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=29 > counter.bat

:D29
echo 7%% - downloading file: 2014\PIL\pil20140128dmin.min
set errmsg="Unable to download 2014\PIL\pil20140128dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-28&dataDuration=1" "2014\PIL\pil20140128dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=30 > counter.bat

:D30
echo 7%% - downloading file: 2014\PIL\pil20140129dmin.min
set errmsg="Unable to download 2014\PIL\pil20140129dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-29&dataDuration=1" "2014\PIL\pil20140129dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=31 > counter.bat

:D31
echo 7%% - downloading file: 2014\PIL\pil20140130dmin.min
set errmsg="Unable to download 2014\PIL\pil20140130dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-30&dataDuration=1" "2014\PIL\pil20140130dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=32 > counter.bat

:D32
echo 8%% - downloading file: 2014\PIL\pil20140131dmin.min
set errmsg="Unable to download 2014\PIL\pil20140131dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-01-31&dataDuration=1" "2014\PIL\pil20140131dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=33 > counter.bat

:D33
echo 8%% - downloading file: 2014\PIL\pil20140201dmin.min
set errmsg="Unable to download 2014\PIL\pil20140201dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-01&dataDuration=1" "2014\PIL\pil20140201dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=34 > counter.bat

:D34
echo 8%% - downloading file: 2014\PIL\pil20140202dmin.min
set errmsg="Unable to download 2014\PIL\pil20140202dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-02&dataDuration=1" "2014\PIL\pil20140202dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=35 > counter.bat

:D35
echo 9%% - downloading file: 2014\PIL\pil20140203dmin.min
set errmsg="Unable to download 2014\PIL\pil20140203dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-03&dataDuration=1" "2014\PIL\pil20140203dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=36 > counter.bat

:D36
echo 9%% - downloading file: 2014\PIL\pil20140204dmin.min
set errmsg="Unable to download 2014\PIL\pil20140204dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-04&dataDuration=1" "2014\PIL\pil20140204dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=37 > counter.bat

:D37
echo 9%% - downloading file: 2014\PIL\pil20140205dmin.min
set errmsg="Unable to download 2014\PIL\pil20140205dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-05&dataDuration=1" "2014\PIL\pil20140205dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=38 > counter.bat

:D38
echo 9%% - downloading file: 2014\PIL\pil20140206dmin.min
set errmsg="Unable to download 2014\PIL\pil20140206dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-06&dataDuration=1" "2014\PIL\pil20140206dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=39 > counter.bat

:D39
echo 10%% - downloading file: 2014\PIL\pil20140207dmin.min
set errmsg="Unable to download 2014\PIL\pil20140207dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-07&dataDuration=1" "2014\PIL\pil20140207dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=40 > counter.bat

:D40
echo 10%% - downloading file: 2014\PIL\pil20140208dmin.min
set errmsg="Unable to download 2014\PIL\pil20140208dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-08&dataDuration=1" "2014\PIL\pil20140208dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=41 > counter.bat

:D41
echo 10%% - downloading file: 2014\PIL\pil20140209dmin.min
set errmsg="Unable to download 2014\PIL\pil20140209dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-09&dataDuration=1" "2014\PIL\pil20140209dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=42 > counter.bat

:D42
echo 10%% - downloading file: 2014\PIL\pil20140210dmin.min
set errmsg="Unable to download 2014\PIL\pil20140210dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-10&dataDuration=1" "2014\PIL\pil20140210dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=43 > counter.bat

:D43
echo 11%% - downloading file: 2014\PIL\pil20140211dmin.min
set errmsg="Unable to download 2014\PIL\pil20140211dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-11&dataDuration=1" "2014\PIL\pil20140211dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=44 > counter.bat

:D44
echo 11%% - downloading file: 2014\PIL\pil20140212dmin.min
set errmsg="Unable to download 2014\PIL\pil20140212dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-12&dataDuration=1" "2014\PIL\pil20140212dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=45 > counter.bat

:D45
echo 11%% - downloading file: 2014\PIL\pil20140213dmin.min
set errmsg="Unable to download 2014\PIL\pil20140213dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-13&dataDuration=1" "2014\PIL\pil20140213dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=46 > counter.bat

:D46
echo 12%% - downloading file: 2014\PIL\pil20140214dmin.min
set errmsg="Unable to download 2014\PIL\pil20140214dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-14&dataDuration=1" "2014\PIL\pil20140214dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=47 > counter.bat

:D47
echo 12%% - downloading file: 2014\PIL\pil20140215dmin.min
set errmsg="Unable to download 2014\PIL\pil20140215dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-15&dataDuration=1" "2014\PIL\pil20140215dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=48 > counter.bat

:D48
echo 12%% - downloading file: 2014\PIL\pil20140216dmin.min
set errmsg="Unable to download 2014\PIL\pil20140216dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-16&dataDuration=1" "2014\PIL\pil20140216dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=49 > counter.bat

:D49
echo 12%% - downloading file: 2014\PIL\pil20140217dmin.min
set errmsg="Unable to download 2014\PIL\pil20140217dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-17&dataDuration=1" "2014\PIL\pil20140217dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=50 > counter.bat

:D50
echo 13%% - downloading file: 2014\PIL\pil20140218dmin.min
set errmsg="Unable to download 2014\PIL\pil20140218dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-18&dataDuration=1" "2014\PIL\pil20140218dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=51 > counter.bat

:D51
echo 13%% - downloading file: 2014\PIL\pil20140219dmin.min
set errmsg="Unable to download 2014\PIL\pil20140219dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-19&dataDuration=1" "2014\PIL\pil20140219dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=52 > counter.bat

:D52
echo 13%% - downloading file: 2014\PIL\pil20140220dmin.min
set errmsg="Unable to download 2014\PIL\pil20140220dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-20&dataDuration=1" "2014\PIL\pil20140220dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=53 > counter.bat

:D53
echo 13%% - downloading file: 2014\PIL\pil20140221dmin.min
set errmsg="Unable to download 2014\PIL\pil20140221dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-21&dataDuration=1" "2014\PIL\pil20140221dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=54 > counter.bat

:D54
echo 14%% - downloading file: 2014\PIL\pil20140222dmin.min
set errmsg="Unable to download 2014\PIL\pil20140222dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-22&dataDuration=1" "2014\PIL\pil20140222dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=55 > counter.bat

:D55
echo 14%% - downloading file: 2014\PIL\pil20140223dmin.min
set errmsg="Unable to download 2014\PIL\pil20140223dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-23&dataDuration=1" "2014\PIL\pil20140223dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=56 > counter.bat

:D56
echo 14%% - downloading file: 2014\PIL\pil20140224dmin.min
set errmsg="Unable to download 2014\PIL\pil20140224dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-24&dataDuration=1" "2014\PIL\pil20140224dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=57 > counter.bat

:D57
echo 15%% - downloading file: 2014\PIL\pil20140225dmin.min
set errmsg="Unable to download 2014\PIL\pil20140225dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-25&dataDuration=1" "2014\PIL\pil20140225dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=58 > counter.bat

:D58
echo 15%% - downloading file: 2014\PIL\pil20140226dmin.min
set errmsg="Unable to download 2014\PIL\pil20140226dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-26&dataDuration=1" "2014\PIL\pil20140226dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=59 > counter.bat

:D59
echo 15%% - downloading file: 2014\PIL\pil20140227dmin.min
set errmsg="Unable to download 2014\PIL\pil20140227dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-27&dataDuration=1" "2014\PIL\pil20140227dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=60 > counter.bat

:D60
echo 15%% - downloading file: 2014\PIL\pil20140228dmin.min
set errmsg="Unable to download 2014\PIL\pil20140228dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-02-28&dataDuration=1" "2014\PIL\pil20140228dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=61 > counter.bat

:D61
echo 16%% - downloading file: 2014\PIL\pil20140301dmin.min
set errmsg="Unable to download 2014\PIL\pil20140301dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-01&dataDuration=1" "2014\PIL\pil20140301dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=62 > counter.bat

:D62
echo 16%% - downloading file: 2014\PIL\pil20140302dmin.min
set errmsg="Unable to download 2014\PIL\pil20140302dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-02&dataDuration=1" "2014\PIL\pil20140302dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=63 > counter.bat

:D63
echo 16%% - downloading file: 2014\PIL\pil20140303dmin.min
set errmsg="Unable to download 2014\PIL\pil20140303dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-03&dataDuration=1" "2014\PIL\pil20140303dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=64 > counter.bat

:D64
echo 16%% - downloading file: 2014\PIL\pil20140304dmin.min
set errmsg="Unable to download 2014\PIL\pil20140304dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-04&dataDuration=1" "2014\PIL\pil20140304dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=65 > counter.bat

:D65
echo 17%% - downloading file: 2014\PIL\pil20140305dmin.min
set errmsg="Unable to download 2014\PIL\pil20140305dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-05&dataDuration=1" "2014\PIL\pil20140305dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=66 > counter.bat

:D66
echo 17%% - downloading file: 2014\PIL\pil20140306dmin.min
set errmsg="Unable to download 2014\PIL\pil20140306dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-06&dataDuration=1" "2014\PIL\pil20140306dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=67 > counter.bat

:D67
echo 17%% - downloading file: 2014\PIL\pil20140307dmin.min
set errmsg="Unable to download 2014\PIL\pil20140307dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-07&dataDuration=1" "2014\PIL\pil20140307dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=68 > counter.bat

:D68
echo 18%% - downloading file: 2014\PIL\pil20140308dmin.min
set errmsg="Unable to download 2014\PIL\pil20140308dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-08&dataDuration=1" "2014\PIL\pil20140308dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=69 > counter.bat

:D69
echo 18%% - downloading file: 2014\PIL\pil20140309dmin.min
set errmsg="Unable to download 2014\PIL\pil20140309dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-09&dataDuration=1" "2014\PIL\pil20140309dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=70 > counter.bat

:D70
echo 18%% - downloading file: 2014\PIL\pil20140310dmin.min
set errmsg="Unable to download 2014\PIL\pil20140310dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-10&dataDuration=1" "2014\PIL\pil20140310dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=71 > counter.bat

:D71
echo 18%% - downloading file: 2014\PIL\pil20140311dmin.min
set errmsg="Unable to download 2014\PIL\pil20140311dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-11&dataDuration=1" "2014\PIL\pil20140311dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=72 > counter.bat

:D72
echo 19%% - downloading file: 2014\PIL\pil20140312dmin.min
set errmsg="Unable to download 2014\PIL\pil20140312dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-12&dataDuration=1" "2014\PIL\pil20140312dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=73 > counter.bat

:D73
echo 19%% - downloading file: 2014\PIL\pil20140313dmin.min
set errmsg="Unable to download 2014\PIL\pil20140313dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-13&dataDuration=1" "2014\PIL\pil20140313dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=74 > counter.bat

:D74
echo 19%% - downloading file: 2014\PIL\pil20140314dmin.min
set errmsg="Unable to download 2014\PIL\pil20140314dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-14&dataDuration=1" "2014\PIL\pil20140314dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=75 > counter.bat

:D75
echo 20%% - downloading file: 2014\PIL\pil20140315dmin.min
set errmsg="Unable to download 2014\PIL\pil20140315dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-15&dataDuration=1" "2014\PIL\pil20140315dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=76 > counter.bat

:D76
echo 20%% - downloading file: 2014\PIL\pil20140316dmin.min
set errmsg="Unable to download 2014\PIL\pil20140316dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-16&dataDuration=1" "2014\PIL\pil20140316dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=77 > counter.bat

:D77
echo 20%% - downloading file: 2014\PIL\pil20140317dmin.min
set errmsg="Unable to download 2014\PIL\pil20140317dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-17&dataDuration=1" "2014\PIL\pil20140317dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=78 > counter.bat

:D78
echo 20%% - downloading file: 2014\PIL\pil20140318dmin.min
set errmsg="Unable to download 2014\PIL\pil20140318dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-18&dataDuration=1" "2014\PIL\pil20140318dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=79 > counter.bat

:D79
echo 21%% - downloading file: 2014\PIL\pil20140319dmin.min
set errmsg="Unable to download 2014\PIL\pil20140319dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-19&dataDuration=1" "2014\PIL\pil20140319dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=80 > counter.bat

:D80
echo 21%% - downloading file: 2014\PIL\pil20140320dmin.min
set errmsg="Unable to download 2014\PIL\pil20140320dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-20&dataDuration=1" "2014\PIL\pil20140320dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=81 > counter.bat

:D81
echo 21%% - downloading file: 2014\PIL\pil20140321dmin.min
set errmsg="Unable to download 2014\PIL\pil20140321dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-21&dataDuration=1" "2014\PIL\pil20140321dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=82 > counter.bat

:D82
echo 21%% - downloading file: 2014\PIL\pil20140322dmin.min
set errmsg="Unable to download 2014\PIL\pil20140322dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-22&dataDuration=1" "2014\PIL\pil20140322dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=83 > counter.bat

:D83
echo 22%% - downloading file: 2014\PIL\pil20140323dmin.min
set errmsg="Unable to download 2014\PIL\pil20140323dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-23&dataDuration=1" "2014\PIL\pil20140323dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=84 > counter.bat

:D84
echo 22%% - downloading file: 2014\PIL\pil20140324dmin.min
set errmsg="Unable to download 2014\PIL\pil20140324dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-24&dataDuration=1" "2014\PIL\pil20140324dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=85 > counter.bat

:D85
echo 22%% - downloading file: 2014\PIL\pil20140325dmin.min
set errmsg="Unable to download 2014\PIL\pil20140325dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-25&dataDuration=1" "2014\PIL\pil20140325dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=86 > counter.bat

:D86
echo 23%% - downloading file: 2014\PIL\pil20140326dmin.min
set errmsg="Unable to download 2014\PIL\pil20140326dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-26&dataDuration=1" "2014\PIL\pil20140326dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=87 > counter.bat

:D87
echo 23%% - downloading file: 2014\PIL\pil20140327dmin.min
set errmsg="Unable to download 2014\PIL\pil20140327dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-27&dataDuration=1" "2014\PIL\pil20140327dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=88 > counter.bat

:D88
echo 23%% - downloading file: 2014\PIL\pil20140328dmin.min
set errmsg="Unable to download 2014\PIL\pil20140328dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-28&dataDuration=1" "2014\PIL\pil20140328dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=89 > counter.bat

:D89
echo 23%% - downloading file: 2014\PIL\pil20140329dmin.min
set errmsg="Unable to download 2014\PIL\pil20140329dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-29&dataDuration=1" "2014\PIL\pil20140329dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=90 > counter.bat

:D90
echo 24%% - downloading file: 2014\PIL\pil20140330dmin.min
set errmsg="Unable to download 2014\PIL\pil20140330dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-30&dataDuration=1" "2014\PIL\pil20140330dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=91 > counter.bat

:D91
echo 24%% - downloading file: 2014\PIL\pil20140331dmin.min
set errmsg="Unable to download 2014\PIL\pil20140331dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-03-31&dataDuration=1" "2014\PIL\pil20140331dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=92 > counter.bat

:D92
echo 24%% - downloading file: 2014\PIL\pil20140401dmin.min
set errmsg="Unable to download 2014\PIL\pil20140401dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-01&dataDuration=1" "2014\PIL\pil20140401dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=93 > counter.bat

:D93
echo 24%% - downloading file: 2014\PIL\pil20140402dmin.min
set errmsg="Unable to download 2014\PIL\pil20140402dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-02&dataDuration=1" "2014\PIL\pil20140402dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=94 > counter.bat

:D94
echo 25%% - downloading file: 2014\PIL\pil20140403dmin.min
set errmsg="Unable to download 2014\PIL\pil20140403dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-03&dataDuration=1" "2014\PIL\pil20140403dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=95 > counter.bat

:D95
echo 25%% - downloading file: 2014\PIL\pil20140404dmin.min
set errmsg="Unable to download 2014\PIL\pil20140404dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-04&dataDuration=1" "2014\PIL\pil20140404dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=96 > counter.bat

:D96
echo 25%% - downloading file: 2014\PIL\pil20140405dmin.min
set errmsg="Unable to download 2014\PIL\pil20140405dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-05&dataDuration=1" "2014\PIL\pil20140405dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=97 > counter.bat

:D97
echo 26%% - downloading file: 2014\PIL\pil20140406dmin.min
set errmsg="Unable to download 2014\PIL\pil20140406dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-06&dataDuration=1" "2014\PIL\pil20140406dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=98 > counter.bat

:D98
echo 26%% - downloading file: 2014\PIL\pil20140407dmin.min
set errmsg="Unable to download 2014\PIL\pil20140407dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-07&dataDuration=1" "2014\PIL\pil20140407dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=99 > counter.bat

:D99
echo 26%% - downloading file: 2014\PIL\pil20140408dmin.min
set errmsg="Unable to download 2014\PIL\pil20140408dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-08&dataDuration=1" "2014\PIL\pil20140408dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=100 > counter.bat

:D100
echo 26%% - downloading file: 2014\PIL\pil20140409dmin.min
set errmsg="Unable to download 2014\PIL\pil20140409dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-09&dataDuration=1" "2014\PIL\pil20140409dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=101 > counter.bat

:D101
echo 27%% - downloading file: 2014\PIL\pil20140410dmin.min
set errmsg="Unable to download 2014\PIL\pil20140410dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-10&dataDuration=1" "2014\PIL\pil20140410dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=102 > counter.bat

:D102
echo 27%% - downloading file: 2014\PIL\pil20140411dmin.min
set errmsg="Unable to download 2014\PIL\pil20140411dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-11&dataDuration=1" "2014\PIL\pil20140411dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=103 > counter.bat

:D103
echo 27%% - downloading file: 2014\PIL\pil20140412dmin.min
set errmsg="Unable to download 2014\PIL\pil20140412dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-12&dataDuration=1" "2014\PIL\pil20140412dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=104 > counter.bat

:D104
echo 27%% - downloading file: 2014\PIL\pil20140413dmin.min
set errmsg="Unable to download 2014\PIL\pil20140413dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-13&dataDuration=1" "2014\PIL\pil20140413dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=105 > counter.bat

:D105
echo 28%% - downloading file: 2014\PIL\pil20140414dmin.min
set errmsg="Unable to download 2014\PIL\pil20140414dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-14&dataDuration=1" "2014\PIL\pil20140414dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=106 > counter.bat

:D106
echo 28%% - downloading file: 2014\PIL\pil20140415dmin.min
set errmsg="Unable to download 2014\PIL\pil20140415dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-15&dataDuration=1" "2014\PIL\pil20140415dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=107 > counter.bat

:D107
echo 28%% - downloading file: 2014\PIL\pil20140416dmin.min
set errmsg="Unable to download 2014\PIL\pil20140416dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-16&dataDuration=1" "2014\PIL\pil20140416dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=108 > counter.bat

:D108
echo 29%% - downloading file: 2014\PIL\pil20140417dmin.min
set errmsg="Unable to download 2014\PIL\pil20140417dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-17&dataDuration=1" "2014\PIL\pil20140417dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=109 > counter.bat

:D109
echo 29%% - downloading file: 2014\PIL\pil20140418dmin.min
set errmsg="Unable to download 2014\PIL\pil20140418dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-18&dataDuration=1" "2014\PIL\pil20140418dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=110 > counter.bat

:D110
echo 29%% - downloading file: 2014\PIL\pil20140419dmin.min
set errmsg="Unable to download 2014\PIL\pil20140419dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-19&dataDuration=1" "2014\PIL\pil20140419dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=111 > counter.bat

:D111
echo 29%% - downloading file: 2014\PIL\pil20140420dmin.min
set errmsg="Unable to download 2014\PIL\pil20140420dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-20&dataDuration=1" "2014\PIL\pil20140420dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=112 > counter.bat

:D112
echo 30%% - downloading file: 2014\PIL\pil20140421dmin.min
set errmsg="Unable to download 2014\PIL\pil20140421dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-21&dataDuration=1" "2014\PIL\pil20140421dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=113 > counter.bat

:D113
echo 30%% - downloading file: 2014\PIL\pil20140422dmin.min
set errmsg="Unable to download 2014\PIL\pil20140422dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-22&dataDuration=1" "2014\PIL\pil20140422dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=114 > counter.bat

:D114
echo 30%% - downloading file: 2014\PIL\pil20140423dmin.min
set errmsg="Unable to download 2014\PIL\pil20140423dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-23&dataDuration=1" "2014\PIL\pil20140423dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=115 > counter.bat

:D115
echo 30%% - downloading file: 2014\PIL\pil20140424dmin.min
set errmsg="Unable to download 2014\PIL\pil20140424dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-24&dataDuration=1" "2014\PIL\pil20140424dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=116 > counter.bat

:D116
echo 31%% - downloading file: 2014\PIL\pil20140425dmin.min
set errmsg="Unable to download 2014\PIL\pil20140425dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-25&dataDuration=1" "2014\PIL\pil20140425dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=117 > counter.bat

:D117
echo 31%% - downloading file: 2014\PIL\pil20140426dmin.min
set errmsg="Unable to download 2014\PIL\pil20140426dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-26&dataDuration=1" "2014\PIL\pil20140426dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=118 > counter.bat

:D118
echo 31%% - downloading file: 2014\PIL\pil20140427dmin.min
set errmsg="Unable to download 2014\PIL\pil20140427dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-27&dataDuration=1" "2014\PIL\pil20140427dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=119 > counter.bat

:D119
echo 32%% - downloading file: 2014\PIL\pil20140428dmin.min
set errmsg="Unable to download 2014\PIL\pil20140428dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-28&dataDuration=1" "2014\PIL\pil20140428dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=120 > counter.bat

:D120
echo 32%% - downloading file: 2014\PIL\pil20140429dmin.min
set errmsg="Unable to download 2014\PIL\pil20140429dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-29&dataDuration=1" "2014\PIL\pil20140429dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=121 > counter.bat

:D121
echo 32%% - downloading file: 2014\PIL\pil20140430dmin.min
set errmsg="Unable to download 2014\PIL\pil20140430dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-04-30&dataDuration=1" "2014\PIL\pil20140430dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=122 > counter.bat

:D122
echo 32%% - downloading file: 2014\PIL\pil20140501dmin.min
set errmsg="Unable to download 2014\PIL\pil20140501dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-01&dataDuration=1" "2014\PIL\pil20140501dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=123 > counter.bat

:D123
echo 33%% - downloading file: 2014\PIL\pil20140502dmin.min
set errmsg="Unable to download 2014\PIL\pil20140502dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-02&dataDuration=1" "2014\PIL\pil20140502dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=124 > counter.bat

:D124
echo 33%% - downloading file: 2014\PIL\pil20140503dmin.min
set errmsg="Unable to download 2014\PIL\pil20140503dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-03&dataDuration=1" "2014\PIL\pil20140503dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=125 > counter.bat

:D125
echo 33%% - downloading file: 2014\PIL\pil20140504dmin.min
set errmsg="Unable to download 2014\PIL\pil20140504dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-04&dataDuration=1" "2014\PIL\pil20140504dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=126 > counter.bat

:D126
echo 33%% - downloading file: 2014\PIL\pil20140505dmin.min
set errmsg="Unable to download 2014\PIL\pil20140505dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-05&dataDuration=1" "2014\PIL\pil20140505dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=127 > counter.bat

:D127
echo 34%% - downloading file: 2014\PIL\pil20140506dmin.min
set errmsg="Unable to download 2014\PIL\pil20140506dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-06&dataDuration=1" "2014\PIL\pil20140506dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=128 > counter.bat

:D128
echo 34%% - downloading file: 2014\PIL\pil20140507dmin.min
set errmsg="Unable to download 2014\PIL\pil20140507dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-07&dataDuration=1" "2014\PIL\pil20140507dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=129 > counter.bat

:D129
echo 34%% - downloading file: 2014\PIL\pil20140508dmin.min
set errmsg="Unable to download 2014\PIL\pil20140508dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-08&dataDuration=1" "2014\PIL\pil20140508dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=130 > counter.bat

:D130
echo 35%% - downloading file: 2014\PIL\pil20140509dmin.min
set errmsg="Unable to download 2014\PIL\pil20140509dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-09&dataDuration=1" "2014\PIL\pil20140509dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=131 > counter.bat

:D131
echo 35%% - downloading file: 2014\PIL\pil20140510dmin.min
set errmsg="Unable to download 2014\PIL\pil20140510dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-10&dataDuration=1" "2014\PIL\pil20140510dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=132 > counter.bat

:D132
echo 35%% - downloading file: 2014\PIL\pil20140511dmin.min
set errmsg="Unable to download 2014\PIL\pil20140511dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-11&dataDuration=1" "2014\PIL\pil20140511dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=133 > counter.bat

:D133
echo 35%% - downloading file: 2014\PIL\pil20140512dmin.min
set errmsg="Unable to download 2014\PIL\pil20140512dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-12&dataDuration=1" "2014\PIL\pil20140512dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=134 > counter.bat

:D134
echo 36%% - downloading file: 2014\PIL\pil20140513dmin.min
set errmsg="Unable to download 2014\PIL\pil20140513dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-13&dataDuration=1" "2014\PIL\pil20140513dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=135 > counter.bat

:D135
echo 36%% - downloading file: 2014\PIL\pil20140514dmin.min
set errmsg="Unable to download 2014\PIL\pil20140514dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-14&dataDuration=1" "2014\PIL\pil20140514dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=136 > counter.bat

:D136
echo 36%% - downloading file: 2014\PIL\pil20140515dmin.min
set errmsg="Unable to download 2014\PIL\pil20140515dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-15&dataDuration=1" "2014\PIL\pil20140515dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=137 > counter.bat

:D137
echo 36%% - downloading file: 2014\PIL\pil20140516dmin.min
set errmsg="Unable to download 2014\PIL\pil20140516dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-16&dataDuration=1" "2014\PIL\pil20140516dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=138 > counter.bat

:D138
echo 37%% - downloading file: 2014\PIL\pil20140517dmin.min
set errmsg="Unable to download 2014\PIL\pil20140517dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-17&dataDuration=1" "2014\PIL\pil20140517dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=139 > counter.bat

:D139
echo 37%% - downloading file: 2014\PIL\pil20140518dmin.min
set errmsg="Unable to download 2014\PIL\pil20140518dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-18&dataDuration=1" "2014\PIL\pil20140518dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=140 > counter.bat

:D140
echo 37%% - downloading file: 2014\PIL\pil20140519dmin.min
set errmsg="Unable to download 2014\PIL\pil20140519dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-19&dataDuration=1" "2014\PIL\pil20140519dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=141 > counter.bat

:D141
echo 38%% - downloading file: 2014\PIL\pil20140520dmin.min
set errmsg="Unable to download 2014\PIL\pil20140520dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-20&dataDuration=1" "2014\PIL\pil20140520dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=142 > counter.bat

:D142
echo 38%% - downloading file: 2014\PIL\pil20140521dmin.min
set errmsg="Unable to download 2014\PIL\pil20140521dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-21&dataDuration=1" "2014\PIL\pil20140521dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=143 > counter.bat

:D143
echo 38%% - downloading file: 2014\PIL\pil20140522dmin.min
set errmsg="Unable to download 2014\PIL\pil20140522dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-22&dataDuration=1" "2014\PIL\pil20140522dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=144 > counter.bat

:D144
echo 38%% - downloading file: 2014\PIL\pil20140523dmin.min
set errmsg="Unable to download 2014\PIL\pil20140523dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-23&dataDuration=1" "2014\PIL\pil20140523dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=145 > counter.bat

:D145
echo 39%% - downloading file: 2014\PIL\pil20140524dmin.min
set errmsg="Unable to download 2014\PIL\pil20140524dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-24&dataDuration=1" "2014\PIL\pil20140524dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=146 > counter.bat

:D146
echo 39%% - downloading file: 2014\PIL\pil20140525dmin.min
set errmsg="Unable to download 2014\PIL\pil20140525dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-25&dataDuration=1" "2014\PIL\pil20140525dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=147 > counter.bat

:D147
echo 39%% - downloading file: 2014\PIL\pil20140526dmin.min
set errmsg="Unable to download 2014\PIL\pil20140526dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-26&dataDuration=1" "2014\PIL\pil20140526dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=148 > counter.bat

:D148
echo 40%% - downloading file: 2014\PIL\pil20140527dmin.min
set errmsg="Unable to download 2014\PIL\pil20140527dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-27&dataDuration=1" "2014\PIL\pil20140527dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=149 > counter.bat

:D149
echo 40%% - downloading file: 2014\PIL\pil20140528dmin.min
set errmsg="Unable to download 2014\PIL\pil20140528dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-28&dataDuration=1" "2014\PIL\pil20140528dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=150 > counter.bat

:D150
echo 40%% - downloading file: 2014\PIL\pil20140529dmin.min
set errmsg="Unable to download 2014\PIL\pil20140529dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-29&dataDuration=1" "2014\PIL\pil20140529dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=151 > counter.bat

:D151
echo 40%% - downloading file: 2014\PIL\pil20140530dmin.min
set errmsg="Unable to download 2014\PIL\pil20140530dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-30&dataDuration=1" "2014\PIL\pil20140530dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=152 > counter.bat

:D152
echo 41%% - downloading file: 2014\PIL\pil20140531dmin.min
set errmsg="Unable to download 2014\PIL\pil20140531dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-05-31&dataDuration=1" "2014\PIL\pil20140531dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=153 > counter.bat

:D153
echo 41%% - downloading file: 2014\PIL\pil20140601dmin.min
set errmsg="Unable to download 2014\PIL\pil20140601dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-01&dataDuration=1" "2014\PIL\pil20140601dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=154 > counter.bat

:D154
echo 41%% - downloading file: 2014\PIL\pil20140602dmin.min
set errmsg="Unable to download 2014\PIL\pil20140602dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-02&dataDuration=1" "2014\PIL\pil20140602dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=155 > counter.bat

:D155
echo 41%% - downloading file: 2014\PIL\pil20140603dmin.min
set errmsg="Unable to download 2014\PIL\pil20140603dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-03&dataDuration=1" "2014\PIL\pil20140603dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=156 > counter.bat

:D156
echo 42%% - downloading file: 2014\PIL\pil20140604dmin.min
set errmsg="Unable to download 2014\PIL\pil20140604dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-04&dataDuration=1" "2014\PIL\pil20140604dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=157 > counter.bat

:D157
echo 42%% - downloading file: 2014\PIL\pil20140605dmin.min
set errmsg="Unable to download 2014\PIL\pil20140605dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-05&dataDuration=1" "2014\PIL\pil20140605dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=158 > counter.bat

:D158
echo 42%% - downloading file: 2014\PIL\pil20140606dmin.min
set errmsg="Unable to download 2014\PIL\pil20140606dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-06&dataDuration=1" "2014\PIL\pil20140606dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=159 > counter.bat

:D159
echo 43%% - downloading file: 2014\PIL\pil20140607dmin.min
set errmsg="Unable to download 2014\PIL\pil20140607dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-07&dataDuration=1" "2014\PIL\pil20140607dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=160 > counter.bat

:D160
echo 43%% - downloading file: 2014\PIL\pil20140608dmin.min
set errmsg="Unable to download 2014\PIL\pil20140608dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-08&dataDuration=1" "2014\PIL\pil20140608dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=161 > counter.bat

:D161
echo 43%% - downloading file: 2014\PIL\pil20140609dmin.min
set errmsg="Unable to download 2014\PIL\pil20140609dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-09&dataDuration=1" "2014\PIL\pil20140609dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=162 > counter.bat

:D162
echo 43%% - downloading file: 2014\PIL\pil20140610dmin.min
set errmsg="Unable to download 2014\PIL\pil20140610dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-10&dataDuration=1" "2014\PIL\pil20140610dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=163 > counter.bat

:D163
echo 44%% - downloading file: 2014\PIL\pil20140611dmin.min
set errmsg="Unable to download 2014\PIL\pil20140611dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-11&dataDuration=1" "2014\PIL\pil20140611dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=164 > counter.bat

:D164
echo 44%% - downloading file: 2014\PIL\pil20140612dmin.min
set errmsg="Unable to download 2014\PIL\pil20140612dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-12&dataDuration=1" "2014\PIL\pil20140612dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=165 > counter.bat

:D165
echo 44%% - downloading file: 2014\PIL\pil20140613dmin.min
set errmsg="Unable to download 2014\PIL\pil20140613dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-13&dataDuration=1" "2014\PIL\pil20140613dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=166 > counter.bat

:D166
echo 44%% - downloading file: 2014\PIL\pil20140614dmin.min
set errmsg="Unable to download 2014\PIL\pil20140614dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-14&dataDuration=1" "2014\PIL\pil20140614dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=167 > counter.bat

:D167
echo 45%% - downloading file: 2014\PIL\pil20140615dmin.min
set errmsg="Unable to download 2014\PIL\pil20140615dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-15&dataDuration=1" "2014\PIL\pil20140615dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=168 > counter.bat

:D168
echo 45%% - downloading file: 2014\PIL\pil20140616dmin.min
set errmsg="Unable to download 2014\PIL\pil20140616dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-16&dataDuration=1" "2014\PIL\pil20140616dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=169 > counter.bat

:D169
echo 45%% - downloading file: 2014\PIL\pil20140617dmin.min
set errmsg="Unable to download 2014\PIL\pil20140617dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-17&dataDuration=1" "2014\PIL\pil20140617dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=170 > counter.bat

:D170
echo 46%% - downloading file: 2014\PIL\pil20140618dmin.min
set errmsg="Unable to download 2014\PIL\pil20140618dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-18&dataDuration=1" "2014\PIL\pil20140618dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=171 > counter.bat

:D171
echo 46%% - downloading file: 2014\PIL\pil20140619dmin.min
set errmsg="Unable to download 2014\PIL\pil20140619dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-19&dataDuration=1" "2014\PIL\pil20140619dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=172 > counter.bat

:D172
echo 46%% - downloading file: 2014\PIL\pil20140620dmin.min
set errmsg="Unable to download 2014\PIL\pil20140620dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-20&dataDuration=1" "2014\PIL\pil20140620dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=173 > counter.bat

:D173
echo 46%% - downloading file: 2014\PIL\pil20140621dmin.min
set errmsg="Unable to download 2014\PIL\pil20140621dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-21&dataDuration=1" "2014\PIL\pil20140621dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=174 > counter.bat

:D174
echo 47%% - downloading file: 2014\PIL\pil20140622dmin.min
set errmsg="Unable to download 2014\PIL\pil20140622dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-22&dataDuration=1" "2014\PIL\pil20140622dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=175 > counter.bat

:D175
echo 47%% - downloading file: 2014\PIL\pil20140623dmin.min
set errmsg="Unable to download 2014\PIL\pil20140623dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-23&dataDuration=1" "2014\PIL\pil20140623dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=176 > counter.bat

:D176
echo 47%% - downloading file: 2014\PIL\pil20140624dmin.min
set errmsg="Unable to download 2014\PIL\pil20140624dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-24&dataDuration=1" "2014\PIL\pil20140624dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=177 > counter.bat

:D177
echo 47%% - downloading file: 2014\PIL\pil20140625dmin.min
set errmsg="Unable to download 2014\PIL\pil20140625dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-25&dataDuration=1" "2014\PIL\pil20140625dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=178 > counter.bat

:D178
echo 48%% - downloading file: 2014\PIL\pil20140626dmin.min
set errmsg="Unable to download 2014\PIL\pil20140626dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-26&dataDuration=1" "2014\PIL\pil20140626dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=179 > counter.bat

:D179
echo 48%% - downloading file: 2014\PIL\pil20140627dmin.min
set errmsg="Unable to download 2014\PIL\pil20140627dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-27&dataDuration=1" "2014\PIL\pil20140627dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=180 > counter.bat

:D180
echo 48%% - downloading file: 2014\PIL\pil20140628dmin.min
set errmsg="Unable to download 2014\PIL\pil20140628dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-28&dataDuration=1" "2014\PIL\pil20140628dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=181 > counter.bat

:D181
echo 49%% - downloading file: 2014\PIL\pil20140629dmin.min
set errmsg="Unable to download 2014\PIL\pil20140629dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-29&dataDuration=1" "2014\PIL\pil20140629dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=182 > counter.bat

:D182
echo 49%% - downloading file: 2014\PIL\pil20140630dmin.min
set errmsg="Unable to download 2014\PIL\pil20140630dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-06-30&dataDuration=1" "2014\PIL\pil20140630dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=183 > counter.bat

:D183
echo 49%% - downloading file: 2014\PIL\pil20140701dmin.min
set errmsg="Unable to download 2014\PIL\pil20140701dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-01&dataDuration=1" "2014\PIL\pil20140701dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=184 > counter.bat

:D184
echo 49%% - downloading file: 2014\PIL\pil20140702dmin.min
set errmsg="Unable to download 2014\PIL\pil20140702dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-02&dataDuration=1" "2014\PIL\pil20140702dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=185 > counter.bat

:D185
echo 50%% - downloading file: 2014\PIL\pil20140703dmin.min
set errmsg="Unable to download 2014\PIL\pil20140703dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-03&dataDuration=1" "2014\PIL\pil20140703dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=186 > counter.bat

:D186
echo 50%% - downloading file: 2014\PIL\pil20140704dmin.min
set errmsg="Unable to download 2014\PIL\pil20140704dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-04&dataDuration=1" "2014\PIL\pil20140704dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=187 > counter.bat

:D187
echo 50%% - downloading file: 2014\PIL\pil20140705dmin.min
set errmsg="Unable to download 2014\PIL\pil20140705dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-05&dataDuration=1" "2014\PIL\pil20140705dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=188 > counter.bat

:D188
echo 50%% - downloading file: 2014\PIL\pil20140706dmin.min
set errmsg="Unable to download 2014\PIL\pil20140706dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-06&dataDuration=1" "2014\PIL\pil20140706dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=189 > counter.bat

:D189
echo 51%% - downloading file: 2014\PIL\pil20140707dmin.min
set errmsg="Unable to download 2014\PIL\pil20140707dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-07&dataDuration=1" "2014\PIL\pil20140707dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=190 > counter.bat

:D190
echo 51%% - downloading file: 2014\PIL\pil20140708dmin.min
set errmsg="Unable to download 2014\PIL\pil20140708dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-08&dataDuration=1" "2014\PIL\pil20140708dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=191 > counter.bat

:D191
echo 51%% - downloading file: 2014\PIL\pil20140709dmin.min
set errmsg="Unable to download 2014\PIL\pil20140709dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-09&dataDuration=1" "2014\PIL\pil20140709dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=192 > counter.bat

:D192
echo 52%% - downloading file: 2014\PIL\pil20140710dmin.min
set errmsg="Unable to download 2014\PIL\pil20140710dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-10&dataDuration=1" "2014\PIL\pil20140710dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=193 > counter.bat

:D193
echo 52%% - downloading file: 2014\PIL\pil20140711dmin.min
set errmsg="Unable to download 2014\PIL\pil20140711dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-11&dataDuration=1" "2014\PIL\pil20140711dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=194 > counter.bat

:D194
echo 52%% - downloading file: 2014\PIL\pil20140712dmin.min
set errmsg="Unable to download 2014\PIL\pil20140712dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-12&dataDuration=1" "2014\PIL\pil20140712dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=195 > counter.bat

:D195
echo 52%% - downloading file: 2014\PIL\pil20140713dmin.min
set errmsg="Unable to download 2014\PIL\pil20140713dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-13&dataDuration=1" "2014\PIL\pil20140713dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=196 > counter.bat

:D196
echo 53%% - downloading file: 2014\PIL\pil20140714dmin.min
set errmsg="Unable to download 2014\PIL\pil20140714dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-14&dataDuration=1" "2014\PIL\pil20140714dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=197 > counter.bat

:D197
echo 53%% - downloading file: 2014\PIL\pil20140715dmin.min
set errmsg="Unable to download 2014\PIL\pil20140715dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-15&dataDuration=1" "2014\PIL\pil20140715dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=198 > counter.bat

:D198
echo 53%% - downloading file: 2014\PIL\pil20140716dmin.min
set errmsg="Unable to download 2014\PIL\pil20140716dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-16&dataDuration=1" "2014\PIL\pil20140716dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=199 > counter.bat

:D199
echo 53%% - downloading file: 2014\PIL\pil20140717dmin.min
set errmsg="Unable to download 2014\PIL\pil20140717dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-17&dataDuration=1" "2014\PIL\pil20140717dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=200 > counter.bat

:D200
echo 54%% - downloading file: 2014\PIL\pil20140718dmin.min
set errmsg="Unable to download 2014\PIL\pil20140718dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-18&dataDuration=1" "2014\PIL\pil20140718dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=201 > counter.bat

:D201
echo 54%% - downloading file: 2014\PIL\pil20140719dmin.min
set errmsg="Unable to download 2014\PIL\pil20140719dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-19&dataDuration=1" "2014\PIL\pil20140719dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=202 > counter.bat

:D202
echo 54%% - downloading file: 2014\PIL\pil20140720dmin.min
set errmsg="Unable to download 2014\PIL\pil20140720dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-20&dataDuration=1" "2014\PIL\pil20140720dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=203 > counter.bat

:D203
echo 55%% - downloading file: 2014\PIL\pil20140721dmin.min
set errmsg="Unable to download 2014\PIL\pil20140721dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-21&dataDuration=1" "2014\PIL\pil20140721dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=204 > counter.bat

:D204
echo 55%% - downloading file: 2014\PIL\pil20140722dmin.min
set errmsg="Unable to download 2014\PIL\pil20140722dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-22&dataDuration=1" "2014\PIL\pil20140722dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=205 > counter.bat

:D205
echo 55%% - downloading file: 2014\PIL\pil20140723dmin.min
set errmsg="Unable to download 2014\PIL\pil20140723dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-23&dataDuration=1" "2014\PIL\pil20140723dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=206 > counter.bat

:D206
echo 55%% - downloading file: 2014\PIL\pil20140724dmin.min
set errmsg="Unable to download 2014\PIL\pil20140724dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-24&dataDuration=1" "2014\PIL\pil20140724dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=207 > counter.bat

:D207
echo 56%% - downloading file: 2014\PIL\pil20140725dmin.min
set errmsg="Unable to download 2014\PIL\pil20140725dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-25&dataDuration=1" "2014\PIL\pil20140725dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=208 > counter.bat

:D208
echo 56%% - downloading file: 2014\PIL\pil20140726dmin.min
set errmsg="Unable to download 2014\PIL\pil20140726dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-26&dataDuration=1" "2014\PIL\pil20140726dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=209 > counter.bat

:D209
echo 56%% - downloading file: 2014\PIL\pil20140727dmin.min
set errmsg="Unable to download 2014\PIL\pil20140727dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-27&dataDuration=1" "2014\PIL\pil20140727dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=210 > counter.bat

:D210
echo 56%% - downloading file: 2014\PIL\pil20140728dmin.min
set errmsg="Unable to download 2014\PIL\pil20140728dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-28&dataDuration=1" "2014\PIL\pil20140728dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=211 > counter.bat

:D211
echo 57%% - downloading file: 2014\PIL\pil20140729dmin.min
set errmsg="Unable to download 2014\PIL\pil20140729dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-29&dataDuration=1" "2014\PIL\pil20140729dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=212 > counter.bat

:D212
echo 57%% - downloading file: 2014\PIL\pil20140730dmin.min
set errmsg="Unable to download 2014\PIL\pil20140730dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-30&dataDuration=1" "2014\PIL\pil20140730dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=213 > counter.bat

:D213
echo 57%% - downloading file: 2014\PIL\pil20140731dmin.min
set errmsg="Unable to download 2014\PIL\pil20140731dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-07-31&dataDuration=1" "2014\PIL\pil20140731dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=214 > counter.bat

:D214
echo 58%% - downloading file: 2014\PIL\pil20140801dmin.min
set errmsg="Unable to download 2014\PIL\pil20140801dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-01&dataDuration=1" "2014\PIL\pil20140801dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=215 > counter.bat

:D215
echo 58%% - downloading file: 2014\PIL\pil20140802dmin.min
set errmsg="Unable to download 2014\PIL\pil20140802dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-02&dataDuration=1" "2014\PIL\pil20140802dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=216 > counter.bat

:D216
echo 58%% - downloading file: 2014\PIL\pil20140803dmin.min
set errmsg="Unable to download 2014\PIL\pil20140803dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-03&dataDuration=1" "2014\PIL\pil20140803dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=217 > counter.bat

:D217
echo 58%% - downloading file: 2014\PIL\pil20140804dmin.min
set errmsg="Unable to download 2014\PIL\pil20140804dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-04&dataDuration=1" "2014\PIL\pil20140804dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=218 > counter.bat

:D218
echo 59%% - downloading file: 2014\PIL\pil20140805dmin.min
set errmsg="Unable to download 2014\PIL\pil20140805dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-05&dataDuration=1" "2014\PIL\pil20140805dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=219 > counter.bat

:D219
echo 59%% - downloading file: 2014\PIL\pil20140806dmin.min
set errmsg="Unable to download 2014\PIL\pil20140806dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-06&dataDuration=1" "2014\PIL\pil20140806dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=220 > counter.bat

:D220
echo 59%% - downloading file: 2014\PIL\pil20140807dmin.min
set errmsg="Unable to download 2014\PIL\pil20140807dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-07&dataDuration=1" "2014\PIL\pil20140807dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=221 > counter.bat

:D221
echo 60%% - downloading file: 2014\PIL\pil20140808dmin.min
set errmsg="Unable to download 2014\PIL\pil20140808dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-08&dataDuration=1" "2014\PIL\pil20140808dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=222 > counter.bat

:D222
echo 60%% - downloading file: 2014\PIL\pil20140809dmin.min
set errmsg="Unable to download 2014\PIL\pil20140809dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-09&dataDuration=1" "2014\PIL\pil20140809dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=223 > counter.bat

:D223
echo 60%% - downloading file: 2014\PIL\pil20140810dmin.min
set errmsg="Unable to download 2014\PIL\pil20140810dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-10&dataDuration=1" "2014\PIL\pil20140810dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=224 > counter.bat

:D224
echo 60%% - downloading file: 2014\PIL\pil20140811dmin.min
set errmsg="Unable to download 2014\PIL\pil20140811dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-11&dataDuration=1" "2014\PIL\pil20140811dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=225 > counter.bat

:D225
echo 61%% - downloading file: 2014\PIL\pil20140812dmin.min
set errmsg="Unable to download 2014\PIL\pil20140812dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-12&dataDuration=1" "2014\PIL\pil20140812dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=226 > counter.bat

:D226
echo 61%% - downloading file: 2014\PIL\pil20140813dmin.min
set errmsg="Unable to download 2014\PIL\pil20140813dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-13&dataDuration=1" "2014\PIL\pil20140813dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=227 > counter.bat

:D227
echo 61%% - downloading file: 2014\PIL\pil20140814dmin.min
set errmsg="Unable to download 2014\PIL\pil20140814dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-14&dataDuration=1" "2014\PIL\pil20140814dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=228 > counter.bat

:D228
echo 61%% - downloading file: 2014\PIL\pil20140815dmin.min
set errmsg="Unable to download 2014\PIL\pil20140815dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-15&dataDuration=1" "2014\PIL\pil20140815dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=229 > counter.bat

:D229
echo 62%% - downloading file: 2014\PIL\pil20140816dmin.min
set errmsg="Unable to download 2014\PIL\pil20140816dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-16&dataDuration=1" "2014\PIL\pil20140816dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=230 > counter.bat

:D230
echo 62%% - downloading file: 2014\PIL\pil20140817dmin.min
set errmsg="Unable to download 2014\PIL\pil20140817dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-17&dataDuration=1" "2014\PIL\pil20140817dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=231 > counter.bat

:D231
echo 62%% - downloading file: 2014\PIL\pil20140818dmin.min
set errmsg="Unable to download 2014\PIL\pil20140818dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-18&dataDuration=1" "2014\PIL\pil20140818dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=232 > counter.bat

:D232
echo 63%% - downloading file: 2014\PIL\pil20140819dmin.min
set errmsg="Unable to download 2014\PIL\pil20140819dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-19&dataDuration=1" "2014\PIL\pil20140819dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=233 > counter.bat

:D233
echo 63%% - downloading file: 2014\PIL\pil20140820dmin.min
set errmsg="Unable to download 2014\PIL\pil20140820dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-20&dataDuration=1" "2014\PIL\pil20140820dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=234 > counter.bat

:D234
echo 63%% - downloading file: 2014\PIL\pil20140821dmin.min
set errmsg="Unable to download 2014\PIL\pil20140821dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-21&dataDuration=1" "2014\PIL\pil20140821dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=235 > counter.bat

:D235
echo 63%% - downloading file: 2014\PIL\pil20140822dmin.min
set errmsg="Unable to download 2014\PIL\pil20140822dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-22&dataDuration=1" "2014\PIL\pil20140822dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=236 > counter.bat

:D236
echo 64%% - downloading file: 2014\PIL\pil20140823dmin.min
set errmsg="Unable to download 2014\PIL\pil20140823dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-23&dataDuration=1" "2014\PIL\pil20140823dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=237 > counter.bat

:D237
echo 64%% - downloading file: 2014\PIL\pil20140824dmin.min
set errmsg="Unable to download 2014\PIL\pil20140824dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-24&dataDuration=1" "2014\PIL\pil20140824dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=238 > counter.bat

:D238
echo 64%% - downloading file: 2014\PIL\pil20140825dmin.min
set errmsg="Unable to download 2014\PIL\pil20140825dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-25&dataDuration=1" "2014\PIL\pil20140825dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=239 > counter.bat

:D239
echo 64%% - downloading file: 2014\PIL\pil20140826dmin.min
set errmsg="Unable to download 2014\PIL\pil20140826dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-26&dataDuration=1" "2014\PIL\pil20140826dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=240 > counter.bat

:D240
echo 65%% - downloading file: 2014\PIL\pil20140827dmin.min
set errmsg="Unable to download 2014\PIL\pil20140827dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-27&dataDuration=1" "2014\PIL\pil20140827dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=241 > counter.bat

:D241
echo 65%% - downloading file: 2014\PIL\pil20140828dmin.min
set errmsg="Unable to download 2014\PIL\pil20140828dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-28&dataDuration=1" "2014\PIL\pil20140828dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=242 > counter.bat

:D242
echo 65%% - downloading file: 2014\PIL\pil20140829dmin.min
set errmsg="Unable to download 2014\PIL\pil20140829dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-29&dataDuration=1" "2014\PIL\pil20140829dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=243 > counter.bat

:D243
echo 66%% - downloading file: 2014\PIL\pil20140830dmin.min
set errmsg="Unable to download 2014\PIL\pil20140830dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-30&dataDuration=1" "2014\PIL\pil20140830dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=244 > counter.bat

:D244
echo 66%% - downloading file: 2014\PIL\pil20140831dmin.min
set errmsg="Unable to download 2014\PIL\pil20140831dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-08-31&dataDuration=1" "2014\PIL\pil20140831dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=245 > counter.bat

:D245
echo 66%% - downloading file: 2014\PIL\pil20140901dmin.min
set errmsg="Unable to download 2014\PIL\pil20140901dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-01&dataDuration=1" "2014\PIL\pil20140901dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=246 > counter.bat

:D246
echo 66%% - downloading file: 2014\PIL\pil20140902dmin.min
set errmsg="Unable to download 2014\PIL\pil20140902dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-02&dataDuration=1" "2014\PIL\pil20140902dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=247 > counter.bat

:D247
echo 67%% - downloading file: 2014\PIL\pil20140903dmin.min
set errmsg="Unable to download 2014\PIL\pil20140903dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-03&dataDuration=1" "2014\PIL\pil20140903dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=248 > counter.bat

:D248
echo 67%% - downloading file: 2014\PIL\pil20140904dmin.min
set errmsg="Unable to download 2014\PIL\pil20140904dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-04&dataDuration=1" "2014\PIL\pil20140904dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=249 > counter.bat

:D249
echo 67%% - downloading file: 2014\PIL\pil20140905dmin.min
set errmsg="Unable to download 2014\PIL\pil20140905dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-05&dataDuration=1" "2014\PIL\pil20140905dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=250 > counter.bat

:D250
echo 67%% - downloading file: 2014\PIL\pil20140906dmin.min
set errmsg="Unable to download 2014\PIL\pil20140906dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-06&dataDuration=1" "2014\PIL\pil20140906dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=251 > counter.bat

:D251
echo 68%% - downloading file: 2014\PIL\pil20140907dmin.min
set errmsg="Unable to download 2014\PIL\pil20140907dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-07&dataDuration=1" "2014\PIL\pil20140907dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=252 > counter.bat

:D252
echo 68%% - downloading file: 2014\PIL\pil20140908dmin.min
set errmsg="Unable to download 2014\PIL\pil20140908dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-08&dataDuration=1" "2014\PIL\pil20140908dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=253 > counter.bat

:D253
echo 68%% - downloading file: 2014\PIL\pil20140909dmin.min
set errmsg="Unable to download 2014\PIL\pil20140909dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-09&dataDuration=1" "2014\PIL\pil20140909dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=254 > counter.bat

:D254
echo 69%% - downloading file: 2014\PIL\pil20140910dmin.min
set errmsg="Unable to download 2014\PIL\pil20140910dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-10&dataDuration=1" "2014\PIL\pil20140910dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=255 > counter.bat

:D255
echo 69%% - downloading file: 2014\PIL\pil20140911dmin.min
set errmsg="Unable to download 2014\PIL\pil20140911dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-11&dataDuration=1" "2014\PIL\pil20140911dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=256 > counter.bat

:D256
echo 69%% - downloading file: 2014\PIL\pil20140912dmin.min
set errmsg="Unable to download 2014\PIL\pil20140912dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-12&dataDuration=1" "2014\PIL\pil20140912dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=257 > counter.bat

:D257
echo 69%% - downloading file: 2014\PIL\pil20140913dmin.min
set errmsg="Unable to download 2014\PIL\pil20140913dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-13&dataDuration=1" "2014\PIL\pil20140913dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=258 > counter.bat

:D258
echo 70%% - downloading file: 2014\PIL\pil20140914dmin.min
set errmsg="Unable to download 2014\PIL\pil20140914dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-14&dataDuration=1" "2014\PIL\pil20140914dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=259 > counter.bat

:D259
echo 70%% - downloading file: 2014\PIL\pil20140915dmin.min
set errmsg="Unable to download 2014\PIL\pil20140915dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-15&dataDuration=1" "2014\PIL\pil20140915dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=260 > counter.bat

:D260
echo 70%% - downloading file: 2014\PIL\pil20140916dmin.min
set errmsg="Unable to download 2014\PIL\pil20140916dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-16&dataDuration=1" "2014\PIL\pil20140916dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=261 > counter.bat

:D261
echo 70%% - downloading file: 2014\PIL\pil20140917dmin.min
set errmsg="Unable to download 2014\PIL\pil20140917dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-17&dataDuration=1" "2014\PIL\pil20140917dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=262 > counter.bat

:D262
echo 71%% - downloading file: 2014\PIL\pil20140918dmin.min
set errmsg="Unable to download 2014\PIL\pil20140918dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-18&dataDuration=1" "2014\PIL\pil20140918dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=263 > counter.bat

:D263
echo 71%% - downloading file: 2014\PIL\pil20140919dmin.min
set errmsg="Unable to download 2014\PIL\pil20140919dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-19&dataDuration=1" "2014\PIL\pil20140919dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=264 > counter.bat

:D264
echo 71%% - downloading file: 2014\PIL\pil20140920dmin.min
set errmsg="Unable to download 2014\PIL\pil20140920dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-20&dataDuration=1" "2014\PIL\pil20140920dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=265 > counter.bat

:D265
echo 72%% - downloading file: 2014\PIL\pil20140921dmin.min
set errmsg="Unable to download 2014\PIL\pil20140921dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-21&dataDuration=1" "2014\PIL\pil20140921dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=266 > counter.bat

:D266
echo 72%% - downloading file: 2014\PIL\pil20140922dmin.min
set errmsg="Unable to download 2014\PIL\pil20140922dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-22&dataDuration=1" "2014\PIL\pil20140922dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=267 > counter.bat

:D267
echo 72%% - downloading file: 2014\PIL\pil20140923dmin.min
set errmsg="Unable to download 2014\PIL\pil20140923dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-23&dataDuration=1" "2014\PIL\pil20140923dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=268 > counter.bat

:D268
echo 72%% - downloading file: 2014\PIL\pil20140924dmin.min
set errmsg="Unable to download 2014\PIL\pil20140924dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-24&dataDuration=1" "2014\PIL\pil20140924dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=269 > counter.bat

:D269
echo 73%% - downloading file: 2014\PIL\pil20140925dmin.min
set errmsg="Unable to download 2014\PIL\pil20140925dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-25&dataDuration=1" "2014\PIL\pil20140925dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=270 > counter.bat

:D270
echo 73%% - downloading file: 2014\PIL\pil20140926dmin.min
set errmsg="Unable to download 2014\PIL\pil20140926dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-26&dataDuration=1" "2014\PIL\pil20140926dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=271 > counter.bat

:D271
echo 73%% - downloading file: 2014\PIL\pil20140927dmin.min
set errmsg="Unable to download 2014\PIL\pil20140927dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-27&dataDuration=1" "2014\PIL\pil20140927dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=272 > counter.bat

:D272
echo 73%% - downloading file: 2014\PIL\pil20140928dmin.min
set errmsg="Unable to download 2014\PIL\pil20140928dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-28&dataDuration=1" "2014\PIL\pil20140928dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=273 > counter.bat

:D273
echo 74%% - downloading file: 2014\PIL\pil20140929dmin.min
set errmsg="Unable to download 2014\PIL\pil20140929dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-29&dataDuration=1" "2014\PIL\pil20140929dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=274 > counter.bat

:D274
echo 74%% - downloading file: 2014\PIL\pil20140930dmin.min
set errmsg="Unable to download 2014\PIL\pil20140930dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-09-30&dataDuration=1" "2014\PIL\pil20140930dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=275 > counter.bat

:D275
echo 74%% - downloading file: 2014\PIL\pil20141001dmin.min
set errmsg="Unable to download 2014\PIL\pil20141001dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-01&dataDuration=1" "2014\PIL\pil20141001dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=276 > counter.bat

:D276
echo 75%% - downloading file: 2014\PIL\pil20141002dmin.min
set errmsg="Unable to download 2014\PIL\pil20141002dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-02&dataDuration=1" "2014\PIL\pil20141002dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=277 > counter.bat

:D277
echo 75%% - downloading file: 2014\PIL\pil20141003dmin.min
set errmsg="Unable to download 2014\PIL\pil20141003dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-03&dataDuration=1" "2014\PIL\pil20141003dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=278 > counter.bat

:D278
echo 75%% - downloading file: 2014\PIL\pil20141004dmin.min
set errmsg="Unable to download 2014\PIL\pil20141004dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-04&dataDuration=1" "2014\PIL\pil20141004dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=279 > counter.bat

:D279
echo 75%% - downloading file: 2014\PIL\pil20141005dmin.min
set errmsg="Unable to download 2014\PIL\pil20141005dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-05&dataDuration=1" "2014\PIL\pil20141005dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=280 > counter.bat

:D280
echo 76%% - downloading file: 2014\PIL\pil20141006dmin.min
set errmsg="Unable to download 2014\PIL\pil20141006dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-06&dataDuration=1" "2014\PIL\pil20141006dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=281 > counter.bat

:D281
echo 76%% - downloading file: 2014\PIL\pil20141007dmin.min
set errmsg="Unable to download 2014\PIL\pil20141007dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-07&dataDuration=1" "2014\PIL\pil20141007dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=282 > counter.bat

:D282
echo 76%% - downloading file: 2014\PIL\pil20141008dmin.min
set errmsg="Unable to download 2014\PIL\pil20141008dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-08&dataDuration=1" "2014\PIL\pil20141008dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=283 > counter.bat

:D283
echo 76%% - downloading file: 2014\PIL\pil20141009dmin.min
set errmsg="Unable to download 2014\PIL\pil20141009dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-09&dataDuration=1" "2014\PIL\pil20141009dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=284 > counter.bat

:D284
echo 77%% - downloading file: 2014\PIL\pil20141010dmin.min
set errmsg="Unable to download 2014\PIL\pil20141010dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-10&dataDuration=1" "2014\PIL\pil20141010dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=285 > counter.bat

:D285
echo 77%% - downloading file: 2014\PIL\pil20141011dmin.min
set errmsg="Unable to download 2014\PIL\pil20141011dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-11&dataDuration=1" "2014\PIL\pil20141011dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=286 > counter.bat

:D286
echo 77%% - downloading file: 2014\PIL\pil20141012dmin.min
set errmsg="Unable to download 2014\PIL\pil20141012dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-12&dataDuration=1" "2014\PIL\pil20141012dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=287 > counter.bat

:D287
echo 78%% - downloading file: 2014\PIL\pil20141013dmin.min
set errmsg="Unable to download 2014\PIL\pil20141013dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-13&dataDuration=1" "2014\PIL\pil20141013dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=288 > counter.bat

:D288
echo 78%% - downloading file: 2014\PIL\pil20141014dmin.min
set errmsg="Unable to download 2014\PIL\pil20141014dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-14&dataDuration=1" "2014\PIL\pil20141014dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=289 > counter.bat

:D289
echo 78%% - downloading file: 2014\PIL\pil20141015dmin.min
set errmsg="Unable to download 2014\PIL\pil20141015dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-15&dataDuration=1" "2014\PIL\pil20141015dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=290 > counter.bat

:D290
echo 78%% - downloading file: 2014\PIL\pil20141016dmin.min
set errmsg="Unable to download 2014\PIL\pil20141016dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-16&dataDuration=1" "2014\PIL\pil20141016dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=291 > counter.bat

:D291
echo 79%% - downloading file: 2014\PIL\pil20141017dmin.min
set errmsg="Unable to download 2014\PIL\pil20141017dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-17&dataDuration=1" "2014\PIL\pil20141017dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=292 > counter.bat

:D292
echo 79%% - downloading file: 2014\PIL\pil20141018dmin.min
set errmsg="Unable to download 2014\PIL\pil20141018dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-18&dataDuration=1" "2014\PIL\pil20141018dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=293 > counter.bat

:D293
echo 79%% - downloading file: 2014\PIL\pil20141019dmin.min
set errmsg="Unable to download 2014\PIL\pil20141019dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-19&dataDuration=1" "2014\PIL\pil20141019dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=294 > counter.bat

:D294
echo 80%% - downloading file: 2014\PIL\pil20141020dmin.min
set errmsg="Unable to download 2014\PIL\pil20141020dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-20&dataDuration=1" "2014\PIL\pil20141020dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=295 > counter.bat

:D295
echo 80%% - downloading file: 2014\PIL\pil20141021dmin.min
set errmsg="Unable to download 2014\PIL\pil20141021dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-21&dataDuration=1" "2014\PIL\pil20141021dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=296 > counter.bat

:D296
echo 80%% - downloading file: 2014\PIL\pil20141022dmin.min
set errmsg="Unable to download 2014\PIL\pil20141022dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-22&dataDuration=1" "2014\PIL\pil20141022dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=297 > counter.bat

:D297
echo 80%% - downloading file: 2014\PIL\pil20141023dmin.min
set errmsg="Unable to download 2014\PIL\pil20141023dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-23&dataDuration=1" "2014\PIL\pil20141023dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=298 > counter.bat

:D298
echo 81%% - downloading file: 2014\PIL\pil20141024dmin.min
set errmsg="Unable to download 2014\PIL\pil20141024dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-24&dataDuration=1" "2014\PIL\pil20141024dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=299 > counter.bat

:D299
echo 81%% - downloading file: 2014\PIL\pil20141025dmin.min
set errmsg="Unable to download 2014\PIL\pil20141025dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-25&dataDuration=1" "2014\PIL\pil20141025dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=300 > counter.bat

:D300
echo 81%% - downloading file: 2014\PIL\pil20141026dmin.min
set errmsg="Unable to download 2014\PIL\pil20141026dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-26&dataDuration=1" "2014\PIL\pil20141026dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=301 > counter.bat

:D301
echo 81%% - downloading file: 2014\PIL\pil20141027dmin.min
set errmsg="Unable to download 2014\PIL\pil20141027dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-27&dataDuration=1" "2014\PIL\pil20141027dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=302 > counter.bat

:D302
echo 82%% - downloading file: 2014\PIL\pil20141028dmin.min
set errmsg="Unable to download 2014\PIL\pil20141028dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-28&dataDuration=1" "2014\PIL\pil20141028dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=303 > counter.bat

:D303
echo 82%% - downloading file: 2014\PIL\pil20141029dmin.min
set errmsg="Unable to download 2014\PIL\pil20141029dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-29&dataDuration=1" "2014\PIL\pil20141029dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=304 > counter.bat

:D304
echo 82%% - downloading file: 2014\PIL\pil20141030dmin.min
set errmsg="Unable to download 2014\PIL\pil20141030dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-30&dataDuration=1" "2014\PIL\pil20141030dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=305 > counter.bat

:D305
echo 83%% - downloading file: 2014\PIL\pil20141031dmin.min
set errmsg="Unable to download 2014\PIL\pil20141031dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-10-31&dataDuration=1" "2014\PIL\pil20141031dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=306 > counter.bat

:D306
echo 83%% - downloading file: 2014\PIL\pil20141101dmin.min
set errmsg="Unable to download 2014\PIL\pil20141101dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-01&dataDuration=1" "2014\PIL\pil20141101dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=307 > counter.bat

:D307
echo 83%% - downloading file: 2014\PIL\pil20141102dmin.min
set errmsg="Unable to download 2014\PIL\pil20141102dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-02&dataDuration=1" "2014\PIL\pil20141102dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=308 > counter.bat

:D308
echo 83%% - downloading file: 2014\PIL\pil20141103dmin.min
set errmsg="Unable to download 2014\PIL\pil20141103dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-03&dataDuration=1" "2014\PIL\pil20141103dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=309 > counter.bat

:D309
echo 84%% - downloading file: 2014\PIL\pil20141104dmin.min
set errmsg="Unable to download 2014\PIL\pil20141104dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-04&dataDuration=1" "2014\PIL\pil20141104dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=310 > counter.bat

:D310
echo 84%% - downloading file: 2014\PIL\pil20141105dmin.min
set errmsg="Unable to download 2014\PIL\pil20141105dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-05&dataDuration=1" "2014\PIL\pil20141105dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=311 > counter.bat

:D311
echo 84%% - downloading file: 2014\PIL\pil20141106dmin.min
set errmsg="Unable to download 2014\PIL\pil20141106dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-06&dataDuration=1" "2014\PIL\pil20141106dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=312 > counter.bat

:D312
echo 84%% - downloading file: 2014\PIL\pil20141107dmin.min
set errmsg="Unable to download 2014\PIL\pil20141107dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-07&dataDuration=1" "2014\PIL\pil20141107dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=313 > counter.bat

:D313
echo 85%% - downloading file: 2014\PIL\pil20141108dmin.min
set errmsg="Unable to download 2014\PIL\pil20141108dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-08&dataDuration=1" "2014\PIL\pil20141108dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=314 > counter.bat

:D314
echo 85%% - downloading file: 2014\PIL\pil20141109dmin.min
set errmsg="Unable to download 2014\PIL\pil20141109dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-09&dataDuration=1" "2014\PIL\pil20141109dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=315 > counter.bat

:D315
echo 85%% - downloading file: 2014\PIL\pil20141110dmin.min
set errmsg="Unable to download 2014\PIL\pil20141110dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-10&dataDuration=1" "2014\PIL\pil20141110dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=316 > counter.bat

:D316
echo 86%% - downloading file: 2014\PIL\pil20141111dmin.min
set errmsg="Unable to download 2014\PIL\pil20141111dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-11&dataDuration=1" "2014\PIL\pil20141111dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=317 > counter.bat

:D317
echo 86%% - downloading file: 2014\PIL\pil20141112dmin.min
set errmsg="Unable to download 2014\PIL\pil20141112dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-12&dataDuration=1" "2014\PIL\pil20141112dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=318 > counter.bat

:D318
echo 86%% - downloading file: 2014\PIL\pil20141113dmin.min
set errmsg="Unable to download 2014\PIL\pil20141113dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-13&dataDuration=1" "2014\PIL\pil20141113dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=319 > counter.bat

:D319
echo 86%% - downloading file: 2014\PIL\pil20141114dmin.min
set errmsg="Unable to download 2014\PIL\pil20141114dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-14&dataDuration=1" "2014\PIL\pil20141114dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=320 > counter.bat

:D320
echo 87%% - downloading file: 2014\PIL\pil20141115dmin.min
set errmsg="Unable to download 2014\PIL\pil20141115dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-15&dataDuration=1" "2014\PIL\pil20141115dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=321 > counter.bat

:D321
echo 87%% - downloading file: 2014\PIL\pil20141116dmin.min
set errmsg="Unable to download 2014\PIL\pil20141116dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-16&dataDuration=1" "2014\PIL\pil20141116dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=322 > counter.bat

:D322
echo 87%% - downloading file: 2014\PIL\pil20141117dmin.min
set errmsg="Unable to download 2014\PIL\pil20141117dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-17&dataDuration=1" "2014\PIL\pil20141117dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=323 > counter.bat

:D323
echo 87%% - downloading file: 2014\PIL\pil20141118dmin.min
set errmsg="Unable to download 2014\PIL\pil20141118dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-18&dataDuration=1" "2014\PIL\pil20141118dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=324 > counter.bat

:D324
echo 88%% - downloading file: 2014\PIL\pil20141119dmin.min
set errmsg="Unable to download 2014\PIL\pil20141119dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-19&dataDuration=1" "2014\PIL\pil20141119dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=325 > counter.bat

:D325
echo 88%% - downloading file: 2014\PIL\pil20141120dmin.min
set errmsg="Unable to download 2014\PIL\pil20141120dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-20&dataDuration=1" "2014\PIL\pil20141120dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=326 > counter.bat

:D326
echo 88%% - downloading file: 2014\PIL\pil20141121dmin.min
set errmsg="Unable to download 2014\PIL\pil20141121dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-21&dataDuration=1" "2014\PIL\pil20141121dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=327 > counter.bat

:D327
echo 89%% - downloading file: 2014\PIL\pil20141122dmin.min
set errmsg="Unable to download 2014\PIL\pil20141122dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-22&dataDuration=1" "2014\PIL\pil20141122dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=328 > counter.bat

:D328
echo 89%% - downloading file: 2014\PIL\pil20141123dmin.min
set errmsg="Unable to download 2014\PIL\pil20141123dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-23&dataDuration=1" "2014\PIL\pil20141123dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=329 > counter.bat

:D329
echo 89%% - downloading file: 2014\PIL\pil20141124dmin.min
set errmsg="Unable to download 2014\PIL\pil20141124dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-24&dataDuration=1" "2014\PIL\pil20141124dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=330 > counter.bat

:D330
echo 89%% - downloading file: 2014\PIL\pil20141125dmin.min
set errmsg="Unable to download 2014\PIL\pil20141125dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-25&dataDuration=1" "2014\PIL\pil20141125dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=331 > counter.bat

:D331
echo 90%% - downloading file: 2014\PIL\pil20141126dmin.min
set errmsg="Unable to download 2014\PIL\pil20141126dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-26&dataDuration=1" "2014\PIL\pil20141126dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=332 > counter.bat

:D332
echo 90%% - downloading file: 2014\PIL\pil20141127dmin.min
set errmsg="Unable to download 2014\PIL\pil20141127dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-27&dataDuration=1" "2014\PIL\pil20141127dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=333 > counter.bat

:D333
echo 90%% - downloading file: 2014\PIL\pil20141128dmin.min
set errmsg="Unable to download 2014\PIL\pil20141128dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-28&dataDuration=1" "2014\PIL\pil20141128dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=334 > counter.bat

:D334
echo 90%% - downloading file: 2014\PIL\pil20141129dmin.min
set errmsg="Unable to download 2014\PIL\pil20141129dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-29&dataDuration=1" "2014\PIL\pil20141129dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=335 > counter.bat

:D335
echo 91%% - downloading file: 2014\PIL\pil20141130dmin.min
set errmsg="Unable to download 2014\PIL\pil20141130dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-11-30&dataDuration=1" "2014\PIL\pil20141130dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=336 > counter.bat

:D336
echo 91%% - downloading file: 2014\PIL\pil20141201dmin.min
set errmsg="Unable to download 2014\PIL\pil20141201dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-01&dataDuration=1" "2014\PIL\pil20141201dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=337 > counter.bat

:D337
echo 91%% - downloading file: 2014\PIL\pil20141202dmin.min
set errmsg="Unable to download 2014\PIL\pil20141202dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-02&dataDuration=1" "2014\PIL\pil20141202dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=338 > counter.bat

:D338
echo 92%% - downloading file: 2014\PIL\pil20141203dmin.min
set errmsg="Unable to download 2014\PIL\pil20141203dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-03&dataDuration=1" "2014\PIL\pil20141203dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=339 > counter.bat

:D339
echo 92%% - downloading file: 2014\PIL\pil20141204dmin.min
set errmsg="Unable to download 2014\PIL\pil20141204dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-04&dataDuration=1" "2014\PIL\pil20141204dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=340 > counter.bat

:D340
echo 92%% - downloading file: 2014\PIL\pil20141205dmin.min
set errmsg="Unable to download 2014\PIL\pil20141205dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-05&dataDuration=1" "2014\PIL\pil20141205dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=341 > counter.bat

:D341
echo 92%% - downloading file: 2014\PIL\pil20141206dmin.min
set errmsg="Unable to download 2014\PIL\pil20141206dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-06&dataDuration=1" "2014\PIL\pil20141206dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=342 > counter.bat

:D342
echo 93%% - downloading file: 2014\PIL\pil20141207dmin.min
set errmsg="Unable to download 2014\PIL\pil20141207dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-07&dataDuration=1" "2014\PIL\pil20141207dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=343 > counter.bat

:D343
echo 93%% - downloading file: 2014\PIL\pil20141208dmin.min
set errmsg="Unable to download 2014\PIL\pil20141208dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-08&dataDuration=1" "2014\PIL\pil20141208dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=344 > counter.bat

:D344
echo 93%% - downloading file: 2014\PIL\pil20141209dmin.min
set errmsg="Unable to download 2014\PIL\pil20141209dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-09&dataDuration=1" "2014\PIL\pil20141209dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=345 > counter.bat

:D345
echo 93%% - downloading file: 2014\PIL\pil20141210dmin.min
set errmsg="Unable to download 2014\PIL\pil20141210dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-10&dataDuration=1" "2014\PIL\pil20141210dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=346 > counter.bat

:D346
echo 94%% - downloading file: 2014\PIL\pil20141211dmin.min
set errmsg="Unable to download 2014\PIL\pil20141211dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-11&dataDuration=1" "2014\PIL\pil20141211dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=347 > counter.bat

:D347
echo 94%% - downloading file: 2014\PIL\pil20141212dmin.min
set errmsg="Unable to download 2014\PIL\pil20141212dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-12&dataDuration=1" "2014\PIL\pil20141212dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=348 > counter.bat

:D348
echo 94%% - downloading file: 2014\PIL\pil20141213dmin.min
set errmsg="Unable to download 2014\PIL\pil20141213dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-13&dataDuration=1" "2014\PIL\pil20141213dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=349 > counter.bat

:D349
echo 95%% - downloading file: 2014\PIL\pil20141214dmin.min
set errmsg="Unable to download 2014\PIL\pil20141214dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-14&dataDuration=1" "2014\PIL\pil20141214dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=350 > counter.bat

:D350
echo 95%% - downloading file: 2014\PIL\pil20141215dmin.min
set errmsg="Unable to download 2014\PIL\pil20141215dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-15&dataDuration=1" "2014\PIL\pil20141215dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=351 > counter.bat

:D351
echo 95%% - downloading file: 2014\PIL\pil20141216dmin.min
set errmsg="Unable to download 2014\PIL\pil20141216dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-16&dataDuration=1" "2014\PIL\pil20141216dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=352 > counter.bat

:D352
echo 95%% - downloading file: 2014\PIL\pil20141217dmin.min
set errmsg="Unable to download 2014\PIL\pil20141217dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-17&dataDuration=1" "2014\PIL\pil20141217dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=353 > counter.bat

:D353
echo 96%% - downloading file: 2014\PIL\pil20141218dmin.min
set errmsg="Unable to download 2014\PIL\pil20141218dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-18&dataDuration=1" "2014\PIL\pil20141218dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=354 > counter.bat

:D354
echo 96%% - downloading file: 2014\PIL\pil20141219dmin.min
set errmsg="Unable to download 2014\PIL\pil20141219dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-19&dataDuration=1" "2014\PIL\pil20141219dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=355 > counter.bat

:D355
echo 96%% - downloading file: 2014\PIL\pil20141220dmin.min
set errmsg="Unable to download 2014\PIL\pil20141220dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-20&dataDuration=1" "2014\PIL\pil20141220dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=356 > counter.bat

:D356
echo 96%% - downloading file: 2014\PIL\pil20141221dmin.min
set errmsg="Unable to download 2014\PIL\pil20141221dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-21&dataDuration=1" "2014\PIL\pil20141221dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=357 > counter.bat

:D357
echo 97%% - downloading file: 2014\PIL\pil20141222dmin.min
set errmsg="Unable to download 2014\PIL\pil20141222dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-22&dataDuration=1" "2014\PIL\pil20141222dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=358 > counter.bat

:D358
echo 97%% - downloading file: 2014\PIL\pil20141223dmin.min
set errmsg="Unable to download 2014\PIL\pil20141223dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-23&dataDuration=1" "2014\PIL\pil20141223dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=359 > counter.bat

:D359
echo 97%% - downloading file: 2014\PIL\pil20141224dmin.min
set errmsg="Unable to download 2014\PIL\pil20141224dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-24&dataDuration=1" "2014\PIL\pil20141224dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=360 > counter.bat

:D360
echo 98%% - downloading file: 2014\PIL\pil20141225dmin.min
set errmsg="Unable to download 2014\PIL\pil20141225dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-25&dataDuration=1" "2014\PIL\pil20141225dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=361 > counter.bat

:D361
echo 98%% - downloading file: 2014\PIL\pil20141226dmin.min
set errmsg="Unable to download 2014\PIL\pil20141226dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-26&dataDuration=1" "2014\PIL\pil20141226dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=362 > counter.bat

:D362
echo 98%% - downloading file: 2014\PIL\pil20141227dmin.min
set errmsg="Unable to download 2014\PIL\pil20141227dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-27&dataDuration=1" "2014\PIL\pil20141227dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=363 > counter.bat

:D363
echo 98%% - downloading file: 2014\PIL\pil20141228dmin.min
set errmsg="Unable to download 2014\PIL\pil20141228dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-28&dataDuration=1" "2014\PIL\pil20141228dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=364 > counter.bat

:D364
echo 99%% - downloading file: 2014\PIL\pil20141229dmin.min
set errmsg="Unable to download 2014\PIL\pil20141229dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-29&dataDuration=1" "2014\PIL\pil20141229dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=365 > counter.bat

:D365
echo 99%% - downloading file: 2014\PIL\pil20141230dmin.min
set errmsg="Unable to download 2014\PIL\pil20141230dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-30&dataDuration=1" "2014\PIL\pil20141230dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=366 > counter.bat

:D366
echo 99%% - downloading file: 2014\PIL\pil20141231dmin.min
set errmsg="Unable to download 2014\PIL\pil20141231dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=PIL&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2014-12-31&dataDuration=1" "2014\PIL\pil20141231dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=367 > counter.bat

:D367
rem normal completion point
echo 100%% - data download complete
del counter.bat
goto endscript

:errhand
echo Error: %errmsg%
goto endscript

:endscript
rem tidy up
set gmstatus=
set gmcount=
set errmsg=
