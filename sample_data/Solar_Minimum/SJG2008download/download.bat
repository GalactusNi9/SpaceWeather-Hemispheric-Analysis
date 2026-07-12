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
call safemd "2008"
call safemd "2008\SJG"
set errmsg="Unable to create directory: 2008\SJG"
if %gmstatus%==1 goto errhand
echo set gmcount=1 > counter.bat

:D1
echo 0%% - downloading file: 2008\SJG\sjg20080101dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080101dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-01&dataDuration=1" "2008\SJG\sjg20080101dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=2 > counter.bat

:D2
echo 0%% - downloading file: 2008\SJG\sjg20080102dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080102dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-02&dataDuration=1" "2008\SJG\sjg20080102dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=3 > counter.bat

:D3
echo 0%% - downloading file: 2008\SJG\sjg20080103dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080103dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-03&dataDuration=1" "2008\SJG\sjg20080103dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=4 > counter.bat

:D4
echo 0%% - downloading file: 2008\SJG\sjg20080104dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080104dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-04&dataDuration=1" "2008\SJG\sjg20080104dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=5 > counter.bat

:D5
echo 1%% - downloading file: 2008\SJG\sjg20080105dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080105dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-05&dataDuration=1" "2008\SJG\sjg20080105dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=6 > counter.bat

:D6
echo 1%% - downloading file: 2008\SJG\sjg20080106dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080106dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-06&dataDuration=1" "2008\SJG\sjg20080106dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=7 > counter.bat

:D7
echo 1%% - downloading file: 2008\SJG\sjg20080107dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080107dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-07&dataDuration=1" "2008\SJG\sjg20080107dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=8 > counter.bat

:D8
echo 1%% - downloading file: 2008\SJG\sjg20080108dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080108dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-08&dataDuration=1" "2008\SJG\sjg20080108dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=9 > counter.bat

:D9
echo 2%% - downloading file: 2008\SJG\sjg20080109dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080109dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-09&dataDuration=1" "2008\SJG\sjg20080109dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=10 > counter.bat

:D10
echo 2%% - downloading file: 2008\SJG\sjg20080110dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080110dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-10&dataDuration=1" "2008\SJG\sjg20080110dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=11 > counter.bat

:D11
echo 2%% - downloading file: 2008\SJG\sjg20080111dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080111dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-11&dataDuration=1" "2008\SJG\sjg20080111dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=12 > counter.bat

:D12
echo 3%% - downloading file: 2008\SJG\sjg20080112dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080112dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-12&dataDuration=1" "2008\SJG\sjg20080112dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=13 > counter.bat

:D13
echo 3%% - downloading file: 2008\SJG\sjg20080113dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080113dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-13&dataDuration=1" "2008\SJG\sjg20080113dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=14 > counter.bat

:D14
echo 3%% - downloading file: 2008\SJG\sjg20080114dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080114dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-14&dataDuration=1" "2008\SJG\sjg20080114dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=15 > counter.bat

:D15
echo 3%% - downloading file: 2008\SJG\sjg20080115dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080115dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-15&dataDuration=1" "2008\SJG\sjg20080115dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=16 > counter.bat

:D16
echo 4%% - downloading file: 2008\SJG\sjg20080116dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080116dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-16&dataDuration=1" "2008\SJG\sjg20080116dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=17 > counter.bat

:D17
echo 4%% - downloading file: 2008\SJG\sjg20080117dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080117dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-17&dataDuration=1" "2008\SJG\sjg20080117dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=18 > counter.bat

:D18
echo 4%% - downloading file: 2008\SJG\sjg20080118dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080118dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-18&dataDuration=1" "2008\SJG\sjg20080118dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=19 > counter.bat

:D19
echo 4%% - downloading file: 2008\SJG\sjg20080119dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080119dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-19&dataDuration=1" "2008\SJG\sjg20080119dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=20 > counter.bat

:D20
echo 5%% - downloading file: 2008\SJG\sjg20080120dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080120dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-20&dataDuration=1" "2008\SJG\sjg20080120dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=21 > counter.bat

:D21
echo 5%% - downloading file: 2008\SJG\sjg20080121dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080121dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-21&dataDuration=1" "2008\SJG\sjg20080121dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=22 > counter.bat

:D22
echo 5%% - downloading file: 2008\SJG\sjg20080122dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080122dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-22&dataDuration=1" "2008\SJG\sjg20080122dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=23 > counter.bat

:D23
echo 6%% - downloading file: 2008\SJG\sjg20080123dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080123dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-23&dataDuration=1" "2008\SJG\sjg20080123dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=24 > counter.bat

:D24
echo 6%% - downloading file: 2008\SJG\sjg20080124dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080124dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-24&dataDuration=1" "2008\SJG\sjg20080124dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=25 > counter.bat

:D25
echo 6%% - downloading file: 2008\SJG\sjg20080125dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080125dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-25&dataDuration=1" "2008\SJG\sjg20080125dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=26 > counter.bat

:D26
echo 6%% - downloading file: 2008\SJG\sjg20080126dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080126dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-26&dataDuration=1" "2008\SJG\sjg20080126dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=27 > counter.bat

:D27
echo 7%% - downloading file: 2008\SJG\sjg20080127dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080127dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-27&dataDuration=1" "2008\SJG\sjg20080127dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=28 > counter.bat

:D28
echo 7%% - downloading file: 2008\SJG\sjg20080128dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080128dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-28&dataDuration=1" "2008\SJG\sjg20080128dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=29 > counter.bat

:D29
echo 7%% - downloading file: 2008\SJG\sjg20080129dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080129dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-29&dataDuration=1" "2008\SJG\sjg20080129dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=30 > counter.bat

:D30
echo 7%% - downloading file: 2008\SJG\sjg20080130dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080130dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-30&dataDuration=1" "2008\SJG\sjg20080130dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=31 > counter.bat

:D31
echo 8%% - downloading file: 2008\SJG\sjg20080131dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080131dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-01-31&dataDuration=1" "2008\SJG\sjg20080131dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=32 > counter.bat

:D32
echo 8%% - downloading file: 2008\SJG\sjg20080201dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080201dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-01&dataDuration=1" "2008\SJG\sjg20080201dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=33 > counter.bat

:D33
echo 8%% - downloading file: 2008\SJG\sjg20080202dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080202dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-02&dataDuration=1" "2008\SJG\sjg20080202dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=34 > counter.bat

:D34
echo 9%% - downloading file: 2008\SJG\sjg20080203dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080203dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-03&dataDuration=1" "2008\SJG\sjg20080203dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=35 > counter.bat

:D35
echo 9%% - downloading file: 2008\SJG\sjg20080204dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080204dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-04&dataDuration=1" "2008\SJG\sjg20080204dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=36 > counter.bat

:D36
echo 9%% - downloading file: 2008\SJG\sjg20080205dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080205dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-05&dataDuration=1" "2008\SJG\sjg20080205dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=37 > counter.bat

:D37
echo 9%% - downloading file: 2008\SJG\sjg20080206dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080206dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-06&dataDuration=1" "2008\SJG\sjg20080206dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=38 > counter.bat

:D38
echo 10%% - downloading file: 2008\SJG\sjg20080207dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080207dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-07&dataDuration=1" "2008\SJG\sjg20080207dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=39 > counter.bat

:D39
echo 10%% - downloading file: 2008\SJG\sjg20080208dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080208dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-08&dataDuration=1" "2008\SJG\sjg20080208dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=40 > counter.bat

:D40
echo 10%% - downloading file: 2008\SJG\sjg20080209dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080209dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-09&dataDuration=1" "2008\SJG\sjg20080209dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=41 > counter.bat

:D41
echo 10%% - downloading file: 2008\SJG\sjg20080210dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080210dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-10&dataDuration=1" "2008\SJG\sjg20080210dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=42 > counter.bat

:D42
echo 11%% - downloading file: 2008\SJG\sjg20080211dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080211dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-11&dataDuration=1" "2008\SJG\sjg20080211dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=43 > counter.bat

:D43
echo 11%% - downloading file: 2008\SJG\sjg20080212dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080212dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-12&dataDuration=1" "2008\SJG\sjg20080212dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=44 > counter.bat

:D44
echo 11%% - downloading file: 2008\SJG\sjg20080213dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080213dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-13&dataDuration=1" "2008\SJG\sjg20080213dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=45 > counter.bat

:D45
echo 12%% - downloading file: 2008\SJG\sjg20080214dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080214dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-14&dataDuration=1" "2008\SJG\sjg20080214dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=46 > counter.bat

:D46
echo 12%% - downloading file: 2008\SJG\sjg20080215dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080215dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-15&dataDuration=1" "2008\SJG\sjg20080215dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=47 > counter.bat

:D47
echo 12%% - downloading file: 2008\SJG\sjg20080216dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080216dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-16&dataDuration=1" "2008\SJG\sjg20080216dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=48 > counter.bat

:D48
echo 12%% - downloading file: 2008\SJG\sjg20080217dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080217dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-17&dataDuration=1" "2008\SJG\sjg20080217dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=49 > counter.bat

:D49
echo 13%% - downloading file: 2008\SJG\sjg20080218dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080218dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-18&dataDuration=1" "2008\SJG\sjg20080218dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=50 > counter.bat

:D50
echo 13%% - downloading file: 2008\SJG\sjg20080219dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080219dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-19&dataDuration=1" "2008\SJG\sjg20080219dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=51 > counter.bat

:D51
echo 13%% - downloading file: 2008\SJG\sjg20080220dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080220dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-20&dataDuration=1" "2008\SJG\sjg20080220dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=52 > counter.bat

:D52
echo 13%% - downloading file: 2008\SJG\sjg20080221dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080221dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-21&dataDuration=1" "2008\SJG\sjg20080221dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=53 > counter.bat

:D53
echo 14%% - downloading file: 2008\SJG\sjg20080222dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080222dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-22&dataDuration=1" "2008\SJG\sjg20080222dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=54 > counter.bat

:D54
echo 14%% - downloading file: 2008\SJG\sjg20080223dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080223dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-23&dataDuration=1" "2008\SJG\sjg20080223dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=55 > counter.bat

:D55
echo 14%% - downloading file: 2008\SJG\sjg20080224dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080224dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-24&dataDuration=1" "2008\SJG\sjg20080224dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=56 > counter.bat

:D56
echo 15%% - downloading file: 2008\SJG\sjg20080225dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080225dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-25&dataDuration=1" "2008\SJG\sjg20080225dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=57 > counter.bat

:D57
echo 15%% - downloading file: 2008\SJG\sjg20080226dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080226dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-26&dataDuration=1" "2008\SJG\sjg20080226dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=58 > counter.bat

:D58
echo 15%% - downloading file: 2008\SJG\sjg20080227dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080227dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-27&dataDuration=1" "2008\SJG\sjg20080227dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=59 > counter.bat

:D59
echo 15%% - downloading file: 2008\SJG\sjg20080228dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080228dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-28&dataDuration=1" "2008\SJG\sjg20080228dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=60 > counter.bat

:D60
echo 16%% - downloading file: 2008\SJG\sjg20080229dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080229dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-02-29&dataDuration=1" "2008\SJG\sjg20080229dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=61 > counter.bat

:D61
echo 16%% - downloading file: 2008\SJG\sjg20080301dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080301dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-01&dataDuration=1" "2008\SJG\sjg20080301dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=62 > counter.bat

:D62
echo 16%% - downloading file: 2008\SJG\sjg20080302dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080302dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-02&dataDuration=1" "2008\SJG\sjg20080302dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=63 > counter.bat

:D63
echo 16%% - downloading file: 2008\SJG\sjg20080303dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080303dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-03&dataDuration=1" "2008\SJG\sjg20080303dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=64 > counter.bat

:D64
echo 17%% - downloading file: 2008\SJG\sjg20080304dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080304dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-04&dataDuration=1" "2008\SJG\sjg20080304dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=65 > counter.bat

:D65
echo 17%% - downloading file: 2008\SJG\sjg20080305dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080305dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-05&dataDuration=1" "2008\SJG\sjg20080305dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=66 > counter.bat

:D66
echo 17%% - downloading file: 2008\SJG\sjg20080306dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080306dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-06&dataDuration=1" "2008\SJG\sjg20080306dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=67 > counter.bat

:D67
echo 18%% - downloading file: 2008\SJG\sjg20080307dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080307dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-07&dataDuration=1" "2008\SJG\sjg20080307dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=68 > counter.bat

:D68
echo 18%% - downloading file: 2008\SJG\sjg20080308dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080308dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-08&dataDuration=1" "2008\SJG\sjg20080308dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=69 > counter.bat

:D69
echo 18%% - downloading file: 2008\SJG\sjg20080309dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080309dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-09&dataDuration=1" "2008\SJG\sjg20080309dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=70 > counter.bat

:D70
echo 18%% - downloading file: 2008\SJG\sjg20080310dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080310dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-10&dataDuration=1" "2008\SJG\sjg20080310dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=71 > counter.bat

:D71
echo 19%% - downloading file: 2008\SJG\sjg20080311dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080311dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-11&dataDuration=1" "2008\SJG\sjg20080311dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=72 > counter.bat

:D72
echo 19%% - downloading file: 2008\SJG\sjg20080312dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080312dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-12&dataDuration=1" "2008\SJG\sjg20080312dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=73 > counter.bat

:D73
echo 19%% - downloading file: 2008\SJG\sjg20080313dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080313dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-13&dataDuration=1" "2008\SJG\sjg20080313dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=74 > counter.bat

:D74
echo 20%% - downloading file: 2008\SJG\sjg20080314dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080314dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-14&dataDuration=1" "2008\SJG\sjg20080314dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=75 > counter.bat

:D75
echo 20%% - downloading file: 2008\SJG\sjg20080315dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080315dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-15&dataDuration=1" "2008\SJG\sjg20080315dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=76 > counter.bat

:D76
echo 20%% - downloading file: 2008\SJG\sjg20080316dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080316dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-16&dataDuration=1" "2008\SJG\sjg20080316dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=77 > counter.bat

:D77
echo 20%% - downloading file: 2008\SJG\sjg20080317dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080317dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-17&dataDuration=1" "2008\SJG\sjg20080317dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=78 > counter.bat

:D78
echo 21%% - downloading file: 2008\SJG\sjg20080318dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080318dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-18&dataDuration=1" "2008\SJG\sjg20080318dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=79 > counter.bat

:D79
echo 21%% - downloading file: 2008\SJG\sjg20080319dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080319dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-19&dataDuration=1" "2008\SJG\sjg20080319dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=80 > counter.bat

:D80
echo 21%% - downloading file: 2008\SJG\sjg20080320dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080320dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-20&dataDuration=1" "2008\SJG\sjg20080320dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=81 > counter.bat

:D81
echo 21%% - downloading file: 2008\SJG\sjg20080321dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080321dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-21&dataDuration=1" "2008\SJG\sjg20080321dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=82 > counter.bat

:D82
echo 22%% - downloading file: 2008\SJG\sjg20080322dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080322dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-22&dataDuration=1" "2008\SJG\sjg20080322dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=83 > counter.bat

:D83
echo 22%% - downloading file: 2008\SJG\sjg20080323dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080323dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-23&dataDuration=1" "2008\SJG\sjg20080323dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=84 > counter.bat

:D84
echo 22%% - downloading file: 2008\SJG\sjg20080324dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080324dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-24&dataDuration=1" "2008\SJG\sjg20080324dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=85 > counter.bat

:D85
echo 23%% - downloading file: 2008\SJG\sjg20080325dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080325dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-25&dataDuration=1" "2008\SJG\sjg20080325dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=86 > counter.bat

:D86
echo 23%% - downloading file: 2008\SJG\sjg20080326dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080326dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-26&dataDuration=1" "2008\SJG\sjg20080326dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=87 > counter.bat

:D87
echo 23%% - downloading file: 2008\SJG\sjg20080327dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080327dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-27&dataDuration=1" "2008\SJG\sjg20080327dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=88 > counter.bat

:D88
echo 23%% - downloading file: 2008\SJG\sjg20080328dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080328dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-28&dataDuration=1" "2008\SJG\sjg20080328dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=89 > counter.bat

:D89
echo 24%% - downloading file: 2008\SJG\sjg20080329dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080329dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-29&dataDuration=1" "2008\SJG\sjg20080329dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=90 > counter.bat

:D90
echo 24%% - downloading file: 2008\SJG\sjg20080330dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080330dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-30&dataDuration=1" "2008\SJG\sjg20080330dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=91 > counter.bat

:D91
echo 24%% - downloading file: 2008\SJG\sjg20080331dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080331dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-03-31&dataDuration=1" "2008\SJG\sjg20080331dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=92 > counter.bat

:D92
echo 24%% - downloading file: 2008\SJG\sjg20080401dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080401dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-01&dataDuration=1" "2008\SJG\sjg20080401dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=93 > counter.bat

:D93
echo 25%% - downloading file: 2008\SJG\sjg20080402dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080402dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-02&dataDuration=1" "2008\SJG\sjg20080402dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=94 > counter.bat

:D94
echo 25%% - downloading file: 2008\SJG\sjg20080403dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080403dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-03&dataDuration=1" "2008\SJG\sjg20080403dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=95 > counter.bat

:D95
echo 25%% - downloading file: 2008\SJG\sjg20080404dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080404dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-04&dataDuration=1" "2008\SJG\sjg20080404dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=96 > counter.bat

:D96
echo 26%% - downloading file: 2008\SJG\sjg20080405dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080405dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-05&dataDuration=1" "2008\SJG\sjg20080405dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=97 > counter.bat

:D97
echo 26%% - downloading file: 2008\SJG\sjg20080406dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080406dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-06&dataDuration=1" "2008\SJG\sjg20080406dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=98 > counter.bat

:D98
echo 26%% - downloading file: 2008\SJG\sjg20080407dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080407dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-07&dataDuration=1" "2008\SJG\sjg20080407dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=99 > counter.bat

:D99
echo 26%% - downloading file: 2008\SJG\sjg20080408dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080408dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-08&dataDuration=1" "2008\SJG\sjg20080408dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=100 > counter.bat

:D100
echo 27%% - downloading file: 2008\SJG\sjg20080409dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080409dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-09&dataDuration=1" "2008\SJG\sjg20080409dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=101 > counter.bat

:D101
echo 27%% - downloading file: 2008\SJG\sjg20080410dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080410dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-10&dataDuration=1" "2008\SJG\sjg20080410dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=102 > counter.bat

:D102
echo 27%% - downloading file: 2008\SJG\sjg20080411dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080411dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-11&dataDuration=1" "2008\SJG\sjg20080411dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=103 > counter.bat

:D103
echo 27%% - downloading file: 2008\SJG\sjg20080412dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080412dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-12&dataDuration=1" "2008\SJG\sjg20080412dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=104 > counter.bat

:D104
echo 28%% - downloading file: 2008\SJG\sjg20080413dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080413dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-13&dataDuration=1" "2008\SJG\sjg20080413dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=105 > counter.bat

:D105
echo 28%% - downloading file: 2008\SJG\sjg20080414dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080414dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-14&dataDuration=1" "2008\SJG\sjg20080414dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=106 > counter.bat

:D106
echo 28%% - downloading file: 2008\SJG\sjg20080415dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080415dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-15&dataDuration=1" "2008\SJG\sjg20080415dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=107 > counter.bat

:D107
echo 29%% - downloading file: 2008\SJG\sjg20080416dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080416dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-16&dataDuration=1" "2008\SJG\sjg20080416dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=108 > counter.bat

:D108
echo 29%% - downloading file: 2008\SJG\sjg20080417dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080417dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-17&dataDuration=1" "2008\SJG\sjg20080417dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=109 > counter.bat

:D109
echo 29%% - downloading file: 2008\SJG\sjg20080418dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080418dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-18&dataDuration=1" "2008\SJG\sjg20080418dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=110 > counter.bat

:D110
echo 29%% - downloading file: 2008\SJG\sjg20080419dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080419dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-19&dataDuration=1" "2008\SJG\sjg20080419dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=111 > counter.bat

:D111
echo 30%% - downloading file: 2008\SJG\sjg20080420dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080420dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-20&dataDuration=1" "2008\SJG\sjg20080420dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=112 > counter.bat

:D112
echo 30%% - downloading file: 2008\SJG\sjg20080421dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080421dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-21&dataDuration=1" "2008\SJG\sjg20080421dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=113 > counter.bat

:D113
echo 30%% - downloading file: 2008\SJG\sjg20080422dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080422dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-22&dataDuration=1" "2008\SJG\sjg20080422dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=114 > counter.bat

:D114
echo 30%% - downloading file: 2008\SJG\sjg20080423dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080423dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-23&dataDuration=1" "2008\SJG\sjg20080423dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=115 > counter.bat

:D115
echo 31%% - downloading file: 2008\SJG\sjg20080424dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080424dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-24&dataDuration=1" "2008\SJG\sjg20080424dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=116 > counter.bat

:D116
echo 31%% - downloading file: 2008\SJG\sjg20080425dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080425dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-25&dataDuration=1" "2008\SJG\sjg20080425dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=117 > counter.bat

:D117
echo 31%% - downloading file: 2008\SJG\sjg20080426dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080426dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-26&dataDuration=1" "2008\SJG\sjg20080426dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=118 > counter.bat

:D118
echo 32%% - downloading file: 2008\SJG\sjg20080427dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080427dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-27&dataDuration=1" "2008\SJG\sjg20080427dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=119 > counter.bat

:D119
echo 32%% - downloading file: 2008\SJG\sjg20080428dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080428dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-28&dataDuration=1" "2008\SJG\sjg20080428dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=120 > counter.bat

:D120
echo 32%% - downloading file: 2008\SJG\sjg20080429dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080429dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-29&dataDuration=1" "2008\SJG\sjg20080429dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=121 > counter.bat

:D121
echo 32%% - downloading file: 2008\SJG\sjg20080430dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080430dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-04-30&dataDuration=1" "2008\SJG\sjg20080430dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=122 > counter.bat

:D122
echo 33%% - downloading file: 2008\SJG\sjg20080501dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080501dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-01&dataDuration=1" "2008\SJG\sjg20080501dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=123 > counter.bat

:D123
echo 33%% - downloading file: 2008\SJG\sjg20080502dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080502dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-02&dataDuration=1" "2008\SJG\sjg20080502dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=124 > counter.bat

:D124
echo 33%% - downloading file: 2008\SJG\sjg20080503dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080503dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-03&dataDuration=1" "2008\SJG\sjg20080503dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=125 > counter.bat

:D125
echo 33%% - downloading file: 2008\SJG\sjg20080504dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080504dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-04&dataDuration=1" "2008\SJG\sjg20080504dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=126 > counter.bat

:D126
echo 34%% - downloading file: 2008\SJG\sjg20080505dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080505dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-05&dataDuration=1" "2008\SJG\sjg20080505dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=127 > counter.bat

:D127
echo 34%% - downloading file: 2008\SJG\sjg20080506dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080506dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-06&dataDuration=1" "2008\SJG\sjg20080506dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=128 > counter.bat

:D128
echo 34%% - downloading file: 2008\SJG\sjg20080507dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080507dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-07&dataDuration=1" "2008\SJG\sjg20080507dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=129 > counter.bat

:D129
echo 35%% - downloading file: 2008\SJG\sjg20080508dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080508dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-08&dataDuration=1" "2008\SJG\sjg20080508dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=130 > counter.bat

:D130
echo 35%% - downloading file: 2008\SJG\sjg20080509dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080509dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-09&dataDuration=1" "2008\SJG\sjg20080509dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=131 > counter.bat

:D131
echo 35%% - downloading file: 2008\SJG\sjg20080510dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080510dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-10&dataDuration=1" "2008\SJG\sjg20080510dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=132 > counter.bat

:D132
echo 35%% - downloading file: 2008\SJG\sjg20080511dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080511dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-11&dataDuration=1" "2008\SJG\sjg20080511dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=133 > counter.bat

:D133
echo 36%% - downloading file: 2008\SJG\sjg20080512dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080512dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-12&dataDuration=1" "2008\SJG\sjg20080512dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=134 > counter.bat

:D134
echo 36%% - downloading file: 2008\SJG\sjg20080513dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080513dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-13&dataDuration=1" "2008\SJG\sjg20080513dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=135 > counter.bat

:D135
echo 36%% - downloading file: 2008\SJG\sjg20080514dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080514dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-14&dataDuration=1" "2008\SJG\sjg20080514dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=136 > counter.bat

:D136
echo 36%% - downloading file: 2008\SJG\sjg20080515dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080515dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-15&dataDuration=1" "2008\SJG\sjg20080515dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=137 > counter.bat

:D137
echo 37%% - downloading file: 2008\SJG\sjg20080516dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080516dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-16&dataDuration=1" "2008\SJG\sjg20080516dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=138 > counter.bat

:D138
echo 37%% - downloading file: 2008\SJG\sjg20080517dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080517dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-17&dataDuration=1" "2008\SJG\sjg20080517dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=139 > counter.bat

:D139
echo 37%% - downloading file: 2008\SJG\sjg20080518dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080518dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-18&dataDuration=1" "2008\SJG\sjg20080518dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=140 > counter.bat

:D140
echo 38%% - downloading file: 2008\SJG\sjg20080519dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080519dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-19&dataDuration=1" "2008\SJG\sjg20080519dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=141 > counter.bat

:D141
echo 38%% - downloading file: 2008\SJG\sjg20080520dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080520dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-20&dataDuration=1" "2008\SJG\sjg20080520dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=142 > counter.bat

:D142
echo 38%% - downloading file: 2008\SJG\sjg20080521dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080521dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-21&dataDuration=1" "2008\SJG\sjg20080521dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=143 > counter.bat

:D143
echo 38%% - downloading file: 2008\SJG\sjg20080522dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080522dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-22&dataDuration=1" "2008\SJG\sjg20080522dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=144 > counter.bat

:D144
echo 39%% - downloading file: 2008\SJG\sjg20080523dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080523dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-23&dataDuration=1" "2008\SJG\sjg20080523dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=145 > counter.bat

:D145
echo 39%% - downloading file: 2008\SJG\sjg20080524dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080524dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-24&dataDuration=1" "2008\SJG\sjg20080524dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=146 > counter.bat

:D146
echo 39%% - downloading file: 2008\SJG\sjg20080525dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080525dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-25&dataDuration=1" "2008\SJG\sjg20080525dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=147 > counter.bat

:D147
echo 40%% - downloading file: 2008\SJG\sjg20080526dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080526dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-26&dataDuration=1" "2008\SJG\sjg20080526dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=148 > counter.bat

:D148
echo 40%% - downloading file: 2008\SJG\sjg20080527dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080527dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-27&dataDuration=1" "2008\SJG\sjg20080527dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=149 > counter.bat

:D149
echo 40%% - downloading file: 2008\SJG\sjg20080528dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080528dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-28&dataDuration=1" "2008\SJG\sjg20080528dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=150 > counter.bat

:D150
echo 40%% - downloading file: 2008\SJG\sjg20080529dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080529dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-29&dataDuration=1" "2008\SJG\sjg20080529dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=151 > counter.bat

:D151
echo 41%% - downloading file: 2008\SJG\sjg20080530dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080530dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-30&dataDuration=1" "2008\SJG\sjg20080530dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=152 > counter.bat

:D152
echo 41%% - downloading file: 2008\SJG\sjg20080531dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080531dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-05-31&dataDuration=1" "2008\SJG\sjg20080531dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=153 > counter.bat

:D153
echo 41%% - downloading file: 2008\SJG\sjg20080601dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080601dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-01&dataDuration=1" "2008\SJG\sjg20080601dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=154 > counter.bat

:D154
echo 41%% - downloading file: 2008\SJG\sjg20080602dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080602dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-02&dataDuration=1" "2008\SJG\sjg20080602dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=155 > counter.bat

:D155
echo 42%% - downloading file: 2008\SJG\sjg20080603dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080603dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-03&dataDuration=1" "2008\SJG\sjg20080603dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=156 > counter.bat

:D156
echo 42%% - downloading file: 2008\SJG\sjg20080604dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080604dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-04&dataDuration=1" "2008\SJG\sjg20080604dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=157 > counter.bat

:D157
echo 42%% - downloading file: 2008\SJG\sjg20080605dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080605dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-05&dataDuration=1" "2008\SJG\sjg20080605dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=158 > counter.bat

:D158
echo 43%% - downloading file: 2008\SJG\sjg20080606dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080606dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-06&dataDuration=1" "2008\SJG\sjg20080606dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=159 > counter.bat

:D159
echo 43%% - downloading file: 2008\SJG\sjg20080607dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080607dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-07&dataDuration=1" "2008\SJG\sjg20080607dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=160 > counter.bat

:D160
echo 43%% - downloading file: 2008\SJG\sjg20080608dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080608dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-08&dataDuration=1" "2008\SJG\sjg20080608dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=161 > counter.bat

:D161
echo 43%% - downloading file: 2008\SJG\sjg20080609dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080609dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-09&dataDuration=1" "2008\SJG\sjg20080609dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=162 > counter.bat

:D162
echo 44%% - downloading file: 2008\SJG\sjg20080610dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080610dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-10&dataDuration=1" "2008\SJG\sjg20080610dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=163 > counter.bat

:D163
echo 44%% - downloading file: 2008\SJG\sjg20080611dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080611dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-11&dataDuration=1" "2008\SJG\sjg20080611dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=164 > counter.bat

:D164
echo 44%% - downloading file: 2008\SJG\sjg20080612dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080612dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-12&dataDuration=1" "2008\SJG\sjg20080612dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=165 > counter.bat

:D165
echo 44%% - downloading file: 2008\SJG\sjg20080613dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080613dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-13&dataDuration=1" "2008\SJG\sjg20080613dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=166 > counter.bat

:D166
echo 45%% - downloading file: 2008\SJG\sjg20080614dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080614dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-14&dataDuration=1" "2008\SJG\sjg20080614dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=167 > counter.bat

:D167
echo 45%% - downloading file: 2008\SJG\sjg20080615dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080615dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-15&dataDuration=1" "2008\SJG\sjg20080615dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=168 > counter.bat

:D168
echo 45%% - downloading file: 2008\SJG\sjg20080616dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080616dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-16&dataDuration=1" "2008\SJG\sjg20080616dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=169 > counter.bat

:D169
echo 46%% - downloading file: 2008\SJG\sjg20080617dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080617dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-17&dataDuration=1" "2008\SJG\sjg20080617dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=170 > counter.bat

:D170
echo 46%% - downloading file: 2008\SJG\sjg20080618dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080618dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-18&dataDuration=1" "2008\SJG\sjg20080618dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=171 > counter.bat

:D171
echo 46%% - downloading file: 2008\SJG\sjg20080619dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080619dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-19&dataDuration=1" "2008\SJG\sjg20080619dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=172 > counter.bat

:D172
echo 46%% - downloading file: 2008\SJG\sjg20080620dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080620dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-20&dataDuration=1" "2008\SJG\sjg20080620dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=173 > counter.bat

:D173
echo 47%% - downloading file: 2008\SJG\sjg20080621dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080621dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-21&dataDuration=1" "2008\SJG\sjg20080621dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=174 > counter.bat

:D174
echo 47%% - downloading file: 2008\SJG\sjg20080622dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080622dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-22&dataDuration=1" "2008\SJG\sjg20080622dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=175 > counter.bat

:D175
echo 47%% - downloading file: 2008\SJG\sjg20080623dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080623dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-23&dataDuration=1" "2008\SJG\sjg20080623dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=176 > counter.bat

:D176
echo 47%% - downloading file: 2008\SJG\sjg20080624dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080624dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-24&dataDuration=1" "2008\SJG\sjg20080624dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=177 > counter.bat

:D177
echo 48%% - downloading file: 2008\SJG\sjg20080625dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080625dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-25&dataDuration=1" "2008\SJG\sjg20080625dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=178 > counter.bat

:D178
echo 48%% - downloading file: 2008\SJG\sjg20080626dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080626dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-26&dataDuration=1" "2008\SJG\sjg20080626dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=179 > counter.bat

:D179
echo 48%% - downloading file: 2008\SJG\sjg20080627dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080627dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-27&dataDuration=1" "2008\SJG\sjg20080627dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=180 > counter.bat

:D180
echo 49%% - downloading file: 2008\SJG\sjg20080628dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080628dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-28&dataDuration=1" "2008\SJG\sjg20080628dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=181 > counter.bat

:D181
echo 49%% - downloading file: 2008\SJG\sjg20080629dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080629dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-29&dataDuration=1" "2008\SJG\sjg20080629dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=182 > counter.bat

:D182
echo 49%% - downloading file: 2008\SJG\sjg20080630dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080630dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-06-30&dataDuration=1" "2008\SJG\sjg20080630dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=183 > counter.bat

:D183
echo 49%% - downloading file: 2008\SJG\sjg20080701dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080701dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-01&dataDuration=1" "2008\SJG\sjg20080701dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=184 > counter.bat

:D184
echo 50%% - downloading file: 2008\SJG\sjg20080702dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080702dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-02&dataDuration=1" "2008\SJG\sjg20080702dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=185 > counter.bat

:D185
echo 50%% - downloading file: 2008\SJG\sjg20080703dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080703dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-03&dataDuration=1" "2008\SJG\sjg20080703dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=186 > counter.bat

:D186
echo 50%% - downloading file: 2008\SJG\sjg20080704dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080704dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-04&dataDuration=1" "2008\SJG\sjg20080704dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=187 > counter.bat

:D187
echo 50%% - downloading file: 2008\SJG\sjg20080705dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080705dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-05&dataDuration=1" "2008\SJG\sjg20080705dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=188 > counter.bat

:D188
echo 51%% - downloading file: 2008\SJG\sjg20080706dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080706dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-06&dataDuration=1" "2008\SJG\sjg20080706dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=189 > counter.bat

:D189
echo 51%% - downloading file: 2008\SJG\sjg20080707dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080707dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-07&dataDuration=1" "2008\SJG\sjg20080707dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=190 > counter.bat

:D190
echo 51%% - downloading file: 2008\SJG\sjg20080708dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080708dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-08&dataDuration=1" "2008\SJG\sjg20080708dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=191 > counter.bat

:D191
echo 52%% - downloading file: 2008\SJG\sjg20080709dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080709dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-09&dataDuration=1" "2008\SJG\sjg20080709dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=192 > counter.bat

:D192
echo 52%% - downloading file: 2008\SJG\sjg20080710dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080710dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-10&dataDuration=1" "2008\SJG\sjg20080710dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=193 > counter.bat

:D193
echo 52%% - downloading file: 2008\SJG\sjg20080711dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080711dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-11&dataDuration=1" "2008\SJG\sjg20080711dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=194 > counter.bat

:D194
echo 52%% - downloading file: 2008\SJG\sjg20080712dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080712dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-12&dataDuration=1" "2008\SJG\sjg20080712dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=195 > counter.bat

:D195
echo 53%% - downloading file: 2008\SJG\sjg20080713dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080713dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-13&dataDuration=1" "2008\SJG\sjg20080713dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=196 > counter.bat

:D196
echo 53%% - downloading file: 2008\SJG\sjg20080714dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080714dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-14&dataDuration=1" "2008\SJG\sjg20080714dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=197 > counter.bat

:D197
echo 53%% - downloading file: 2008\SJG\sjg20080715dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080715dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-15&dataDuration=1" "2008\SJG\sjg20080715dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=198 > counter.bat

:D198
echo 53%% - downloading file: 2008\SJG\sjg20080716dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080716dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-16&dataDuration=1" "2008\SJG\sjg20080716dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=199 > counter.bat

:D199
echo 54%% - downloading file: 2008\SJG\sjg20080717dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080717dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-17&dataDuration=1" "2008\SJG\sjg20080717dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=200 > counter.bat

:D200
echo 54%% - downloading file: 2008\SJG\sjg20080718dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080718dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-18&dataDuration=1" "2008\SJG\sjg20080718dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=201 > counter.bat

:D201
echo 54%% - downloading file: 2008\SJG\sjg20080719dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080719dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-19&dataDuration=1" "2008\SJG\sjg20080719dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=202 > counter.bat

:D202
echo 55%% - downloading file: 2008\SJG\sjg20080720dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080720dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-20&dataDuration=1" "2008\SJG\sjg20080720dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=203 > counter.bat

:D203
echo 55%% - downloading file: 2008\SJG\sjg20080721dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080721dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-21&dataDuration=1" "2008\SJG\sjg20080721dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=204 > counter.bat

:D204
echo 55%% - downloading file: 2008\SJG\sjg20080722dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080722dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-22&dataDuration=1" "2008\SJG\sjg20080722dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=205 > counter.bat

:D205
echo 55%% - downloading file: 2008\SJG\sjg20080723dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080723dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-23&dataDuration=1" "2008\SJG\sjg20080723dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=206 > counter.bat

:D206
echo 56%% - downloading file: 2008\SJG\sjg20080724dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080724dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-24&dataDuration=1" "2008\SJG\sjg20080724dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=207 > counter.bat

:D207
echo 56%% - downloading file: 2008\SJG\sjg20080725dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080725dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-25&dataDuration=1" "2008\SJG\sjg20080725dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=208 > counter.bat

:D208
echo 56%% - downloading file: 2008\SJG\sjg20080726dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080726dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-26&dataDuration=1" "2008\SJG\sjg20080726dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=209 > counter.bat

:D209
echo 56%% - downloading file: 2008\SJG\sjg20080727dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080727dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-27&dataDuration=1" "2008\SJG\sjg20080727dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=210 > counter.bat

:D210
echo 57%% - downloading file: 2008\SJG\sjg20080728dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080728dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-28&dataDuration=1" "2008\SJG\sjg20080728dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=211 > counter.bat

:D211
echo 57%% - downloading file: 2008\SJG\sjg20080729dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080729dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-29&dataDuration=1" "2008\SJG\sjg20080729dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=212 > counter.bat

:D212
echo 57%% - downloading file: 2008\SJG\sjg20080730dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080730dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-30&dataDuration=1" "2008\SJG\sjg20080730dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=213 > counter.bat

:D213
echo 58%% - downloading file: 2008\SJG\sjg20080731dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080731dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-07-31&dataDuration=1" "2008\SJG\sjg20080731dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=214 > counter.bat

:D214
echo 58%% - downloading file: 2008\SJG\sjg20080801dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080801dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-01&dataDuration=1" "2008\SJG\sjg20080801dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=215 > counter.bat

:D215
echo 58%% - downloading file: 2008\SJG\sjg20080802dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080802dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-02&dataDuration=1" "2008\SJG\sjg20080802dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=216 > counter.bat

:D216
echo 58%% - downloading file: 2008\SJG\sjg20080803dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080803dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-03&dataDuration=1" "2008\SJG\sjg20080803dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=217 > counter.bat

:D217
echo 59%% - downloading file: 2008\SJG\sjg20080804dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080804dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-04&dataDuration=1" "2008\SJG\sjg20080804dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=218 > counter.bat

:D218
echo 59%% - downloading file: 2008\SJG\sjg20080805dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080805dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-05&dataDuration=1" "2008\SJG\sjg20080805dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=219 > counter.bat

:D219
echo 59%% - downloading file: 2008\SJG\sjg20080806dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080806dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-06&dataDuration=1" "2008\SJG\sjg20080806dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=220 > counter.bat

:D220
echo 60%% - downloading file: 2008\SJG\sjg20080807dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080807dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-07&dataDuration=1" "2008\SJG\sjg20080807dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=221 > counter.bat

:D221
echo 60%% - downloading file: 2008\SJG\sjg20080808dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080808dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-08&dataDuration=1" "2008\SJG\sjg20080808dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=222 > counter.bat

:D222
echo 60%% - downloading file: 2008\SJG\sjg20080809dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080809dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-09&dataDuration=1" "2008\SJG\sjg20080809dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=223 > counter.bat

:D223
echo 60%% - downloading file: 2008\SJG\sjg20080810dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080810dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-10&dataDuration=1" "2008\SJG\sjg20080810dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=224 > counter.bat

:D224
echo 61%% - downloading file: 2008\SJG\sjg20080811dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080811dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-11&dataDuration=1" "2008\SJG\sjg20080811dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=225 > counter.bat

:D225
echo 61%% - downloading file: 2008\SJG\sjg20080812dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080812dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-12&dataDuration=1" "2008\SJG\sjg20080812dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=226 > counter.bat

:D226
echo 61%% - downloading file: 2008\SJG\sjg20080813dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080813dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-13&dataDuration=1" "2008\SJG\sjg20080813dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=227 > counter.bat

:D227
echo 61%% - downloading file: 2008\SJG\sjg20080814dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080814dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-14&dataDuration=1" "2008\SJG\sjg20080814dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=228 > counter.bat

:D228
echo 62%% - downloading file: 2008\SJG\sjg20080815dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080815dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-15&dataDuration=1" "2008\SJG\sjg20080815dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=229 > counter.bat

:D229
echo 62%% - downloading file: 2008\SJG\sjg20080816dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080816dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-16&dataDuration=1" "2008\SJG\sjg20080816dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=230 > counter.bat

:D230
echo 62%% - downloading file: 2008\SJG\sjg20080817dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080817dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-17&dataDuration=1" "2008\SJG\sjg20080817dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=231 > counter.bat

:D231
echo 63%% - downloading file: 2008\SJG\sjg20080818dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080818dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-18&dataDuration=1" "2008\SJG\sjg20080818dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=232 > counter.bat

:D232
echo 63%% - downloading file: 2008\SJG\sjg20080819dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080819dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-19&dataDuration=1" "2008\SJG\sjg20080819dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=233 > counter.bat

:D233
echo 63%% - downloading file: 2008\SJG\sjg20080820dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080820dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-20&dataDuration=1" "2008\SJG\sjg20080820dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=234 > counter.bat

:D234
echo 63%% - downloading file: 2008\SJG\sjg20080821dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080821dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-21&dataDuration=1" "2008\SJG\sjg20080821dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=235 > counter.bat

:D235
echo 64%% - downloading file: 2008\SJG\sjg20080822dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080822dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-22&dataDuration=1" "2008\SJG\sjg20080822dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=236 > counter.bat

:D236
echo 64%% - downloading file: 2008\SJG\sjg20080823dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080823dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-23&dataDuration=1" "2008\SJG\sjg20080823dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=237 > counter.bat

:D237
echo 64%% - downloading file: 2008\SJG\sjg20080824dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080824dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-24&dataDuration=1" "2008\SJG\sjg20080824dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=238 > counter.bat

:D238
echo 64%% - downloading file: 2008\SJG\sjg20080825dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080825dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-25&dataDuration=1" "2008\SJG\sjg20080825dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=239 > counter.bat

:D239
echo 65%% - downloading file: 2008\SJG\sjg20080826dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080826dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-26&dataDuration=1" "2008\SJG\sjg20080826dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=240 > counter.bat

:D240
echo 65%% - downloading file: 2008\SJG\sjg20080827dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080827dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-27&dataDuration=1" "2008\SJG\sjg20080827dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=241 > counter.bat

:D241
echo 65%% - downloading file: 2008\SJG\sjg20080828dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080828dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-28&dataDuration=1" "2008\SJG\sjg20080828dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=242 > counter.bat

:D242
echo 66%% - downloading file: 2008\SJG\sjg20080829dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080829dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-29&dataDuration=1" "2008\SJG\sjg20080829dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=243 > counter.bat

:D243
echo 66%% - downloading file: 2008\SJG\sjg20080830dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080830dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-30&dataDuration=1" "2008\SJG\sjg20080830dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=244 > counter.bat

:D244
echo 66%% - downloading file: 2008\SJG\sjg20080831dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080831dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-08-31&dataDuration=1" "2008\SJG\sjg20080831dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=245 > counter.bat

:D245
echo 66%% - downloading file: 2008\SJG\sjg20080901dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080901dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-01&dataDuration=1" "2008\SJG\sjg20080901dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=246 > counter.bat

:D246
echo 67%% - downloading file: 2008\SJG\sjg20080902dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080902dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-02&dataDuration=1" "2008\SJG\sjg20080902dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=247 > counter.bat

:D247
echo 67%% - downloading file: 2008\SJG\sjg20080903dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080903dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-03&dataDuration=1" "2008\SJG\sjg20080903dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=248 > counter.bat

:D248
echo 67%% - downloading file: 2008\SJG\sjg20080904dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080904dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-04&dataDuration=1" "2008\SJG\sjg20080904dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=249 > counter.bat

:D249
echo 67%% - downloading file: 2008\SJG\sjg20080905dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080905dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-05&dataDuration=1" "2008\SJG\sjg20080905dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=250 > counter.bat

:D250
echo 68%% - downloading file: 2008\SJG\sjg20080906dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080906dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-06&dataDuration=1" "2008\SJG\sjg20080906dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=251 > counter.bat

:D251
echo 68%% - downloading file: 2008\SJG\sjg20080907dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080907dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-07&dataDuration=1" "2008\SJG\sjg20080907dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=252 > counter.bat

:D252
echo 68%% - downloading file: 2008\SJG\sjg20080908dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080908dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-08&dataDuration=1" "2008\SJG\sjg20080908dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=253 > counter.bat

:D253
echo 69%% - downloading file: 2008\SJG\sjg20080909dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080909dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-09&dataDuration=1" "2008\SJG\sjg20080909dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=254 > counter.bat

:D254
echo 69%% - downloading file: 2008\SJG\sjg20080910dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080910dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-10&dataDuration=1" "2008\SJG\sjg20080910dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=255 > counter.bat

:D255
echo 69%% - downloading file: 2008\SJG\sjg20080911dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080911dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-11&dataDuration=1" "2008\SJG\sjg20080911dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=256 > counter.bat

:D256
echo 69%% - downloading file: 2008\SJG\sjg20080912dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080912dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-12&dataDuration=1" "2008\SJG\sjg20080912dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=257 > counter.bat

:D257
echo 70%% - downloading file: 2008\SJG\sjg20080913dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080913dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-13&dataDuration=1" "2008\SJG\sjg20080913dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=258 > counter.bat

:D258
echo 70%% - downloading file: 2008\SJG\sjg20080914dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080914dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-14&dataDuration=1" "2008\SJG\sjg20080914dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=259 > counter.bat

:D259
echo 70%% - downloading file: 2008\SJG\sjg20080915dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080915dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-15&dataDuration=1" "2008\SJG\sjg20080915dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=260 > counter.bat

:D260
echo 70%% - downloading file: 2008\SJG\sjg20080916dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080916dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-16&dataDuration=1" "2008\SJG\sjg20080916dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=261 > counter.bat

:D261
echo 71%% - downloading file: 2008\SJG\sjg20080917dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080917dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-17&dataDuration=1" "2008\SJG\sjg20080917dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=262 > counter.bat

:D262
echo 71%% - downloading file: 2008\SJG\sjg20080918dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080918dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-18&dataDuration=1" "2008\SJG\sjg20080918dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=263 > counter.bat

:D263
echo 71%% - downloading file: 2008\SJG\sjg20080919dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080919dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-19&dataDuration=1" "2008\SJG\sjg20080919dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=264 > counter.bat

:D264
echo 72%% - downloading file: 2008\SJG\sjg20080920dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080920dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-20&dataDuration=1" "2008\SJG\sjg20080920dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=265 > counter.bat

:D265
echo 72%% - downloading file: 2008\SJG\sjg20080921dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080921dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-21&dataDuration=1" "2008\SJG\sjg20080921dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=266 > counter.bat

:D266
echo 72%% - downloading file: 2008\SJG\sjg20080922dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080922dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-22&dataDuration=1" "2008\SJG\sjg20080922dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=267 > counter.bat

:D267
echo 72%% - downloading file: 2008\SJG\sjg20080923dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080923dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-23&dataDuration=1" "2008\SJG\sjg20080923dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=268 > counter.bat

:D268
echo 73%% - downloading file: 2008\SJG\sjg20080924dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080924dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-24&dataDuration=1" "2008\SJG\sjg20080924dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=269 > counter.bat

:D269
echo 73%% - downloading file: 2008\SJG\sjg20080925dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080925dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-25&dataDuration=1" "2008\SJG\sjg20080925dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=270 > counter.bat

:D270
echo 73%% - downloading file: 2008\SJG\sjg20080926dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080926dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-26&dataDuration=1" "2008\SJG\sjg20080926dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=271 > counter.bat

:D271
echo 73%% - downloading file: 2008\SJG\sjg20080927dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080927dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-27&dataDuration=1" "2008\SJG\sjg20080927dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=272 > counter.bat

:D272
echo 74%% - downloading file: 2008\SJG\sjg20080928dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080928dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-28&dataDuration=1" "2008\SJG\sjg20080928dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=273 > counter.bat

:D273
echo 74%% - downloading file: 2008\SJG\sjg20080929dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080929dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-29&dataDuration=1" "2008\SJG\sjg20080929dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=274 > counter.bat

:D274
echo 74%% - downloading file: 2008\SJG\sjg20080930dmin.min
set errmsg="Unable to download 2008\SJG\sjg20080930dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-09-30&dataDuration=1" "2008\SJG\sjg20080930dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=275 > counter.bat

:D275
echo 75%% - downloading file: 2008\SJG\sjg20081001dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081001dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-01&dataDuration=1" "2008\SJG\sjg20081001dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=276 > counter.bat

:D276
echo 75%% - downloading file: 2008\SJG\sjg20081002dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081002dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-02&dataDuration=1" "2008\SJG\sjg20081002dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=277 > counter.bat

:D277
echo 75%% - downloading file: 2008\SJG\sjg20081003dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081003dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-03&dataDuration=1" "2008\SJG\sjg20081003dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=278 > counter.bat

:D278
echo 75%% - downloading file: 2008\SJG\sjg20081004dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081004dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-04&dataDuration=1" "2008\SJG\sjg20081004dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=279 > counter.bat

:D279
echo 76%% - downloading file: 2008\SJG\sjg20081005dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081005dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-05&dataDuration=1" "2008\SJG\sjg20081005dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=280 > counter.bat

:D280
echo 76%% - downloading file: 2008\SJG\sjg20081006dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081006dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-06&dataDuration=1" "2008\SJG\sjg20081006dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=281 > counter.bat

:D281
echo 76%% - downloading file: 2008\SJG\sjg20081007dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081007dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-07&dataDuration=1" "2008\SJG\sjg20081007dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=282 > counter.bat

:D282
echo 76%% - downloading file: 2008\SJG\sjg20081008dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081008dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-08&dataDuration=1" "2008\SJG\sjg20081008dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=283 > counter.bat

:D283
echo 77%% - downloading file: 2008\SJG\sjg20081009dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081009dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-09&dataDuration=1" "2008\SJG\sjg20081009dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=284 > counter.bat

:D284
echo 77%% - downloading file: 2008\SJG\sjg20081010dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081010dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-10&dataDuration=1" "2008\SJG\sjg20081010dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=285 > counter.bat

:D285
echo 77%% - downloading file: 2008\SJG\sjg20081011dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081011dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-11&dataDuration=1" "2008\SJG\sjg20081011dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=286 > counter.bat

:D286
echo 78%% - downloading file: 2008\SJG\sjg20081012dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081012dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-12&dataDuration=1" "2008\SJG\sjg20081012dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=287 > counter.bat

:D287
echo 78%% - downloading file: 2008\SJG\sjg20081013dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081013dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-13&dataDuration=1" "2008\SJG\sjg20081013dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=288 > counter.bat

:D288
echo 78%% - downloading file: 2008\SJG\sjg20081014dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081014dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-14&dataDuration=1" "2008\SJG\sjg20081014dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=289 > counter.bat

:D289
echo 78%% - downloading file: 2008\SJG\sjg20081015dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081015dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-15&dataDuration=1" "2008\SJG\sjg20081015dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=290 > counter.bat

:D290
echo 79%% - downloading file: 2008\SJG\sjg20081016dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081016dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-16&dataDuration=1" "2008\SJG\sjg20081016dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=291 > counter.bat

:D291
echo 79%% - downloading file: 2008\SJG\sjg20081017dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081017dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-17&dataDuration=1" "2008\SJG\sjg20081017dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=292 > counter.bat

:D292
echo 79%% - downloading file: 2008\SJG\sjg20081018dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081018dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-18&dataDuration=1" "2008\SJG\sjg20081018dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=293 > counter.bat

:D293
echo 80%% - downloading file: 2008\SJG\sjg20081019dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081019dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-19&dataDuration=1" "2008\SJG\sjg20081019dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=294 > counter.bat

:D294
echo 80%% - downloading file: 2008\SJG\sjg20081020dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081020dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-20&dataDuration=1" "2008\SJG\sjg20081020dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=295 > counter.bat

:D295
echo 80%% - downloading file: 2008\SJG\sjg20081021dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081021dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-21&dataDuration=1" "2008\SJG\sjg20081021dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=296 > counter.bat

:D296
echo 80%% - downloading file: 2008\SJG\sjg20081022dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081022dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-22&dataDuration=1" "2008\SJG\sjg20081022dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=297 > counter.bat

:D297
echo 81%% - downloading file: 2008\SJG\sjg20081023dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081023dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-23&dataDuration=1" "2008\SJG\sjg20081023dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=298 > counter.bat

:D298
echo 81%% - downloading file: 2008\SJG\sjg20081024dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081024dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-24&dataDuration=1" "2008\SJG\sjg20081024dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=299 > counter.bat

:D299
echo 81%% - downloading file: 2008\SJG\sjg20081025dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081025dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-25&dataDuration=1" "2008\SJG\sjg20081025dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=300 > counter.bat

:D300
echo 81%% - downloading file: 2008\SJG\sjg20081026dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081026dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-26&dataDuration=1" "2008\SJG\sjg20081026dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=301 > counter.bat

:D301
echo 82%% - downloading file: 2008\SJG\sjg20081027dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081027dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-27&dataDuration=1" "2008\SJG\sjg20081027dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=302 > counter.bat

:D302
echo 82%% - downloading file: 2008\SJG\sjg20081028dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081028dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-28&dataDuration=1" "2008\SJG\sjg20081028dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=303 > counter.bat

:D303
echo 82%% - downloading file: 2008\SJG\sjg20081029dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081029dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-29&dataDuration=1" "2008\SJG\sjg20081029dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=304 > counter.bat

:D304
echo 83%% - downloading file: 2008\SJG\sjg20081030dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081030dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-30&dataDuration=1" "2008\SJG\sjg20081030dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=305 > counter.bat

:D305
echo 83%% - downloading file: 2008\SJG\sjg20081031dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081031dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-10-31&dataDuration=1" "2008\SJG\sjg20081031dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=306 > counter.bat

:D306
echo 83%% - downloading file: 2008\SJG\sjg20081101dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081101dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-01&dataDuration=1" "2008\SJG\sjg20081101dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=307 > counter.bat

:D307
echo 83%% - downloading file: 2008\SJG\sjg20081102dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081102dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-02&dataDuration=1" "2008\SJG\sjg20081102dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=308 > counter.bat

:D308
echo 84%% - downloading file: 2008\SJG\sjg20081103dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081103dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-03&dataDuration=1" "2008\SJG\sjg20081103dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=309 > counter.bat

:D309
echo 84%% - downloading file: 2008\SJG\sjg20081104dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081104dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-04&dataDuration=1" "2008\SJG\sjg20081104dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=310 > counter.bat

:D310
echo 84%% - downloading file: 2008\SJG\sjg20081105dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081105dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-05&dataDuration=1" "2008\SJG\sjg20081105dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=311 > counter.bat

:D311
echo 84%% - downloading file: 2008\SJG\sjg20081106dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081106dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-06&dataDuration=1" "2008\SJG\sjg20081106dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=312 > counter.bat

:D312
echo 85%% - downloading file: 2008\SJG\sjg20081107dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081107dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-07&dataDuration=1" "2008\SJG\sjg20081107dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=313 > counter.bat

:D313
echo 85%% - downloading file: 2008\SJG\sjg20081108dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081108dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-08&dataDuration=1" "2008\SJG\sjg20081108dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=314 > counter.bat

:D314
echo 85%% - downloading file: 2008\SJG\sjg20081109dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081109dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-09&dataDuration=1" "2008\SJG\sjg20081109dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=315 > counter.bat

:D315
echo 86%% - downloading file: 2008\SJG\sjg20081110dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081110dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-10&dataDuration=1" "2008\SJG\sjg20081110dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=316 > counter.bat

:D316
echo 86%% - downloading file: 2008\SJG\sjg20081111dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081111dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-11&dataDuration=1" "2008\SJG\sjg20081111dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=317 > counter.bat

:D317
echo 86%% - downloading file: 2008\SJG\sjg20081112dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081112dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-12&dataDuration=1" "2008\SJG\sjg20081112dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=318 > counter.bat

:D318
echo 86%% - downloading file: 2008\SJG\sjg20081113dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081113dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-13&dataDuration=1" "2008\SJG\sjg20081113dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=319 > counter.bat

:D319
echo 87%% - downloading file: 2008\SJG\sjg20081114dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081114dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-14&dataDuration=1" "2008\SJG\sjg20081114dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=320 > counter.bat

:D320
echo 87%% - downloading file: 2008\SJG\sjg20081115dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081115dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-15&dataDuration=1" "2008\SJG\sjg20081115dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=321 > counter.bat

:D321
echo 87%% - downloading file: 2008\SJG\sjg20081116dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081116dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-16&dataDuration=1" "2008\SJG\sjg20081116dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=322 > counter.bat

:D322
echo 87%% - downloading file: 2008\SJG\sjg20081117dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081117dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-17&dataDuration=1" "2008\SJG\sjg20081117dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=323 > counter.bat

:D323
echo 88%% - downloading file: 2008\SJG\sjg20081118dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081118dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-18&dataDuration=1" "2008\SJG\sjg20081118dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=324 > counter.bat

:D324
echo 88%% - downloading file: 2008\SJG\sjg20081119dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081119dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-19&dataDuration=1" "2008\SJG\sjg20081119dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=325 > counter.bat

:D325
echo 88%% - downloading file: 2008\SJG\sjg20081120dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081120dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-20&dataDuration=1" "2008\SJG\sjg20081120dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=326 > counter.bat

:D326
echo 89%% - downloading file: 2008\SJG\sjg20081121dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081121dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-21&dataDuration=1" "2008\SJG\sjg20081121dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=327 > counter.bat

:D327
echo 89%% - downloading file: 2008\SJG\sjg20081122dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081122dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-22&dataDuration=1" "2008\SJG\sjg20081122dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=328 > counter.bat

:D328
echo 89%% - downloading file: 2008\SJG\sjg20081123dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081123dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-23&dataDuration=1" "2008\SJG\sjg20081123dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=329 > counter.bat

:D329
echo 89%% - downloading file: 2008\SJG\sjg20081124dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081124dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-24&dataDuration=1" "2008\SJG\sjg20081124dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=330 > counter.bat

:D330
echo 90%% - downloading file: 2008\SJG\sjg20081125dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081125dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-25&dataDuration=1" "2008\SJG\sjg20081125dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=331 > counter.bat

:D331
echo 90%% - downloading file: 2008\SJG\sjg20081126dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081126dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-26&dataDuration=1" "2008\SJG\sjg20081126dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=332 > counter.bat

:D332
echo 90%% - downloading file: 2008\SJG\sjg20081127dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081127dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-27&dataDuration=1" "2008\SJG\sjg20081127dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=333 > counter.bat

:D333
echo 90%% - downloading file: 2008\SJG\sjg20081128dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081128dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-28&dataDuration=1" "2008\SJG\sjg20081128dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=334 > counter.bat

:D334
echo 91%% - downloading file: 2008\SJG\sjg20081129dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081129dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-29&dataDuration=1" "2008\SJG\sjg20081129dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=335 > counter.bat

:D335
echo 91%% - downloading file: 2008\SJG\sjg20081130dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081130dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-11-30&dataDuration=1" "2008\SJG\sjg20081130dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=336 > counter.bat

:D336
echo 91%% - downloading file: 2008\SJG\sjg20081201dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081201dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-01&dataDuration=1" "2008\SJG\sjg20081201dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=337 > counter.bat

:D337
echo 92%% - downloading file: 2008\SJG\sjg20081202dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081202dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-02&dataDuration=1" "2008\SJG\sjg20081202dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=338 > counter.bat

:D338
echo 92%% - downloading file: 2008\SJG\sjg20081203dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081203dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-03&dataDuration=1" "2008\SJG\sjg20081203dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=339 > counter.bat

:D339
echo 92%% - downloading file: 2008\SJG\sjg20081204dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081204dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-04&dataDuration=1" "2008\SJG\sjg20081204dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=340 > counter.bat

:D340
echo 92%% - downloading file: 2008\SJG\sjg20081205dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081205dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-05&dataDuration=1" "2008\SJG\sjg20081205dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=341 > counter.bat

:D341
echo 93%% - downloading file: 2008\SJG\sjg20081206dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081206dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-06&dataDuration=1" "2008\SJG\sjg20081206dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=342 > counter.bat

:D342
echo 93%% - downloading file: 2008\SJG\sjg20081207dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081207dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-07&dataDuration=1" "2008\SJG\sjg20081207dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=343 > counter.bat

:D343
echo 93%% - downloading file: 2008\SJG\sjg20081208dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081208dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-08&dataDuration=1" "2008\SJG\sjg20081208dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=344 > counter.bat

:D344
echo 93%% - downloading file: 2008\SJG\sjg20081209dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081209dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-09&dataDuration=1" "2008\SJG\sjg20081209dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=345 > counter.bat

:D345
echo 94%% - downloading file: 2008\SJG\sjg20081210dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081210dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-10&dataDuration=1" "2008\SJG\sjg20081210dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=346 > counter.bat

:D346
echo 94%% - downloading file: 2008\SJG\sjg20081211dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081211dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-11&dataDuration=1" "2008\SJG\sjg20081211dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=347 > counter.bat

:D347
echo 94%% - downloading file: 2008\SJG\sjg20081212dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081212dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-12&dataDuration=1" "2008\SJG\sjg20081212dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=348 > counter.bat

:D348
echo 95%% - downloading file: 2008\SJG\sjg20081213dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081213dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-13&dataDuration=1" "2008\SJG\sjg20081213dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=349 > counter.bat

:D349
echo 95%% - downloading file: 2008\SJG\sjg20081214dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081214dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-14&dataDuration=1" "2008\SJG\sjg20081214dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=350 > counter.bat

:D350
echo 95%% - downloading file: 2008\SJG\sjg20081215dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081215dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-15&dataDuration=1" "2008\SJG\sjg20081215dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=351 > counter.bat

:D351
echo 95%% - downloading file: 2008\SJG\sjg20081216dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081216dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-16&dataDuration=1" "2008\SJG\sjg20081216dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=352 > counter.bat

:D352
echo 96%% - downloading file: 2008\SJG\sjg20081217dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081217dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-17&dataDuration=1" "2008\SJG\sjg20081217dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=353 > counter.bat

:D353
echo 96%% - downloading file: 2008\SJG\sjg20081218dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081218dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-18&dataDuration=1" "2008\SJG\sjg20081218dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=354 > counter.bat

:D354
echo 96%% - downloading file: 2008\SJG\sjg20081219dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081219dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-19&dataDuration=1" "2008\SJG\sjg20081219dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=355 > counter.bat

:D355
echo 96%% - downloading file: 2008\SJG\sjg20081220dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081220dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-20&dataDuration=1" "2008\SJG\sjg20081220dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=356 > counter.bat

:D356
echo 97%% - downloading file: 2008\SJG\sjg20081221dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081221dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-21&dataDuration=1" "2008\SJG\sjg20081221dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=357 > counter.bat

:D357
echo 97%% - downloading file: 2008\SJG\sjg20081222dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081222dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-22&dataDuration=1" "2008\SJG\sjg20081222dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=358 > counter.bat

:D358
echo 97%% - downloading file: 2008\SJG\sjg20081223dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081223dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-23&dataDuration=1" "2008\SJG\sjg20081223dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=359 > counter.bat

:D359
echo 98%% - downloading file: 2008\SJG\sjg20081224dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081224dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-24&dataDuration=1" "2008\SJG\sjg20081224dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=360 > counter.bat

:D360
echo 98%% - downloading file: 2008\SJG\sjg20081225dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081225dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-25&dataDuration=1" "2008\SJG\sjg20081225dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=361 > counter.bat

:D361
echo 98%% - downloading file: 2008\SJG\sjg20081226dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081226dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-26&dataDuration=1" "2008\SJG\sjg20081226dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=362 > counter.bat

:D362
echo 98%% - downloading file: 2008\SJG\sjg20081227dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081227dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-27&dataDuration=1" "2008\SJG\sjg20081227dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=363 > counter.bat

:D363
echo 99%% - downloading file: 2008\SJG\sjg20081228dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081228dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-28&dataDuration=1" "2008\SJG\sjg20081228dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=364 > counter.bat

:D364
echo 99%% - downloading file: 2008\SJG\sjg20081229dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081229dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-29&dataDuration=1" "2008\SJG\sjg20081229dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=365 > counter.bat

:D365
echo 99%% - downloading file: 2008\SJG\sjg20081230dmin.min
set errmsg="Unable to download 2008\SJG\sjg20081230dmin.min"
call getfile "https://imag-data.bgs.ac.uk/GIN_V1/GINServices?Request=GetData&format=IAGA2002&testObsys=0&observatoryIagaCode=SJG&samplesPerDay=1440&orientation=HDZF&publicationState=definitive&recordTermination=Windows&dataStartDate=2008-12-30&dataDuration=1" "2008\SJG\sjg20081230dmin.min" 4
if %gmstatus%==1 goto errhand
echo set gmcount=366 > counter.bat

:D366
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
