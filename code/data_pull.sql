select ((posted_date)::date || ' ' || cast(posted_utc || ':00' as time)::time)::timestamp, station, latitude, longitude, visibility, present_weather, sky_condition
  from public.weather
 where posted_date >= '2020-08-01'
   and posted_date < '2020-09-01'
   and station in ('KIAH', 'KHOP', 'KSEA', 'KDTW', 'KATL', 'KSAN', 'KHOU', 'KBNA',
       'KDEN', 'KORD', 'KMIA', 'KEWR', 'KCMH', 'KSLC', 'KMCO', 'KMDW',
       'KMCI', 'KCLT', 'KMSP', 'KLAX', 'KPHL', 'MMMX', 'KSFO', 'KSTL',
       'KAUS', 'KDFW', 'LSZH', 'KJAX', 'KPIT', 'KIAD', 'KBWI', 'KBOS',
       'MMUN', 'KLGA', 'KSMF', 'KTPA', 'KDAL', 'KMSY', 'KOAK', 'KPHX',
       'KLAS', 'KGEG', 'KCVG', 'KPVD', 'KDCA', 'KRSW', 'KIND', 'KPDX',
       'KJFK', 'KOMA', 'TJSJ', 'KSJC', 'KFLL', 'KSNA', 'PHNL', 'KBUR',
       'KSAT', 'KABQ', 'KCLE', 'KALB', 'KOKC', 'KPBI', 'KTUS', 'KMEM',
       'KBDL', 'KBOI', 'KMYR', 'KRNO', 'MDST', 'KONT', 'KCAE', 'KBHM',
       'MMSD', 'KTUL', 'KMDT', 'KRIC', 'KLIT', 'KORF', 'KMSN', 'KJAC',
       'KELP', 'KMKE', 'KRDU', 'KPNS', 'KSAV', 'LLBG', 'RJAA', 'KVPS',
       'KILM', 'KCOS', 'CYYC', 'KDAB', 'MDPC', 'KTLH', 'KFAT', 'KECP',
       'KCHS', 'KMHT', 'KSDF', 'MDSD', 'KSRQ', 'KGRR', 'SEGU', 'KBUF',
       'MROC', 'KISP', 'PANC', 'KROC', 'KDSM', 'KMLB', 'KICT', 'MSLP',
       'KPWM', 'EGLL', 'MMPR', 'KGSP', 'SEQM', 'KCRP', 'KMAF', 'LIMC',
       'KHRL', 'KVCV', 'KMZJ', 'SBGR', 'KBIL', 'KGSO', 'KGPI', 'KBZN',
       'VIDP', 'LIRF', 'MGGT', 'KPSP', 'SCEL', 'SPJC', 'PAFA', 'PGUM',
       'YSSY', 'RJTT', 'VABB', 'SAEZ', 'KAGS', 'PHKO', 'PHOG', 'KSYR',
       'KCHA', 'MKJS', 'TIST', 'KEYW', 'TNCA', 'MMCZ', 'TNCM', 'TVSA',
       'RKSI', 'TLPL', 'MBPV', 'MMLO', 'KATW', 'CYVR', 'TAPA', 'TISX',
       'MTPP', 'MDPP', 'MMGL', 'MKJP', 'MMMY', 'ZSPD', 'KMSO', 'LFPG',
       'TXKF', 'EHAM', 'KLGB', 'EDDF', 'PAJN', 'EIDW', 'KILN', 'KEGE',
       'ZBAA', 'EBBR', 'KROW', 'KJAN', 'LEMD', 'KMTJ', 'KLBB', 'KAVL',
       'PHLI', 'EDDM', 'GOBD', 'KFAR', 'MYNN', 'KINT', 'KMKC', 'KSBA',
       'KBFM', 'KHSV', 'KMWH', 'KRAP', 'KSWF', 'KBFI', 'KNKX', 'KRIV',
       'MHTG', 'KOAJ', 'KBKL', 'CYYZ', 'KCPS', 'KPAE', 'KWRI', 'MPTO',
       'KSKF', 'MHLM', 'MZBZ', 'KAEX', 'KNPA', 'KGTB', 'SUMU', 'CYEG',
       'KTVC', 'KGYR', 'KRST', 'KDLH', 'SYCJ', 'EGPH', 'KPTK', 'KLSF',
       'KTYS', 'KAMA', 'KSUU', 'KSBD', 'KCYS', 'KNKT', 'KTBN', 'KFHU',
       'KNJK', 'KBED', 'KMHK', 'KSPS', 'KGRK', 'KABI', 'KCAK', 'EDFH',
       'KSGF', 'MMQT', 'KBYH', 'KNYL', 'MMGT', 'KPHF', 'KLAW', 'KRCA',
       'EPPO', 'EGPF', 'KPOB', 'KXNA', 'KRFD', 'KBFF', 'SKCL', 'KSLN',
       'KFSD', 'KLAN', 'KHRT');

#+sql
  :output file
    :path 'C:\Users\jpau\Documents\Projects\Airforce\data\weather'
    :delimiter ','
    :null_value 'NULL'
    :quote_char '"'
    :overwrite TRUE 
    :header TRUE
#+begin
select ((posted_date)::date || ' ' || cast(posted_utc || ':00' as time)::time)::timestamp, station, latitude, longitude, visibility, present_weather, sky_condition, special_weather
  from public.weather
 where posted_date >= '2020-08-01'
   and posted_date < '2020-09-01'
   and station in ('KIAH', 'KHOP', 'KSEA', 'KDTW', 'KATL', 'KSAN', 'KHOU', 'KBNA',
       'KDEN', 'KORD', 'KMIA', 'KEWR', 'KCMH', 'KSLC', 'KMCO', 'KMDW',
       'KMCI', 'KCLT', 'KMSP', 'KLAX', 'KPHL', 'MMMX', 'KSFO', 'KSTL',
       'KAUS', 'KDFW', 'LSZH', 'KJAX', 'KPIT', 'KIAD', 'KBWI', 'KBOS',
       'MMUN', 'KLGA', 'KSMF', 'KTPA', 'KDAL', 'KMSY', 'KOAK', 'KPHX',
       'KLAS', 'KGEG', 'KCVG', 'KPVD', 'KDCA', 'KRSW', 'KIND', 'KPDX',
       'KJFK', 'KOMA', 'TJSJ', 'KSJC', 'KFLL', 'KSNA', 'PHNL', 'KBUR',
       'KSAT', 'KABQ', 'KCLE', 'KALB', 'KOKC', 'KPBI', 'KTUS', 'KMEM',
       'KBDL', 'KBOI', 'KMYR', 'KRNO', 'MDST', 'KONT', 'KCAE', 'KBHM',
       'MMSD', 'KTUL', 'KMDT', 'KRIC', 'KLIT', 'KORF', 'KMSN', 'KJAC',
       'KELP', 'KMKE', 'KRDU', 'KPNS', 'KSAV', 'LLBG', 'RJAA', 'KVPS',
       'KILM', 'KCOS', 'CYYC', 'KDAB', 'MDPC', 'KTLH', 'KFAT', 'KECP',
       'KCHS', 'KMHT', 'KSDF', 'MDSD', 'KSRQ', 'KGRR', 'SEGU', 'KBUF',
       'MROC', 'KISP', 'PANC', 'KROC', 'KDSM', 'KMLB', 'KICT', 'MSLP',
       'KPWM', 'EGLL', 'MMPR', 'KGSP', 'SEQM', 'KCRP', 'KMAF', 'LIMC',
       'KHRL', 'KVCV', 'KMZJ', 'SBGR', 'KBIL', 'KGSO', 'KGPI', 'KBZN',
       'VIDP', 'LIRF', 'MGGT', 'KPSP', 'SCEL', 'SPJC', 'PAFA', 'PGUM',
       'YSSY', 'RJTT', 'VABB', 'SAEZ', 'KAGS', 'PHKO', 'PHOG', 'KSYR',
       'KCHA', 'MKJS', 'TIST', 'KEYW', 'TNCA', 'MMCZ', 'TNCM', 'TVSA',
       'RKSI', 'TLPL', 'MBPV', 'MMLO', 'KATW', 'CYVR', 'TAPA', 'TISX',
       'MTPP', 'MDPP', 'MMGL', 'MKJP', 'MMMY', 'ZSPD', 'KMSO', 'LFPG',
       'TXKF', 'EHAM', 'KLGB', 'EDDF', 'PAJN', 'EIDW', 'KILN', 'KEGE',
       'ZBAA', 'EBBR', 'KROW', 'KJAN', 'LEMD', 'KMTJ', 'KLBB', 'KAVL',
       'PHLI', 'EDDM', 'GOBD', 'KFAR', 'MYNN', 'KINT', 'KMKC', 'KSBA',
       'KBFM', 'KHSV', 'KMWH', 'KRAP', 'KSWF', 'KBFI', 'KNKX', 'KRIV',
       'MHTG', 'KOAJ', 'KBKL', 'CYYZ', 'KCPS', 'KPAE', 'KWRI', 'MPTO',
       'KSKF', 'MHLM', 'MZBZ', 'KAEX', 'KNPA', 'KGTB', 'SUMU', 'CYEG',
       'KTVC', 'KGYR', 'KRST', 'KDLH', 'SYCJ', 'EGPH', 'KPTK', 'KLSF',
       'KTYS', 'KAMA', 'KSUU', 'KSBD', 'KCYS', 'KNKT', 'KTBN', 'KFHU',
       'KNJK', 'KBED', 'KMHK', 'KSPS', 'KGRK', 'KABI', 'KCAK', 'EDFH',
       'KSGF', 'MMQT', 'KBYH', 'KNYL', 'MMGT', 'KPHF', 'KLAW', 'KRCA',
       'EPPO', 'EGPF', 'KPOB', 'KXNA', 'KRFD', 'KBFF', 'SKCL', 'KSLN',
       'KFSD', 'KLAN', 'KHRT')
#+end;

#+sql
  :output file
    :path 'C:\Users\jpau\Documents\Projects\Airforce\data\data'
    :delimiter ','
    :null_value 'NULL'
    :quote_char '"'
    :overwrite TRUE 
    :header TRUE
#+begin
  select airport,	
         track,
         stid,
         call_sign,
         time,
         event,	
         status,	
         latitude,	
         longitude,	
         altitude,	
         departure_airport,	
         destination_airport
  from smes_message
 where timestamp_source_received >= '2020-01-01'
   and timestamp_source_received < '2020-09-01'
   and event in ('on','off')
   and substring(call_sign, 1, 3) in ('UAL','DAL','AAL','SWA');
#+end;

select ((posted_date)::date || ' ' || cast(posted_utc || ':00' as time)::time)::timestamp, station, latitude, longitude, visibility, present_weather, sky_condition, special_weather
  from weather
 where station like 'KFLL'
   and posted_date >= '2020-01-01'
   and posted_date < '2020-02-01';