/*Miscarriage/Abortion*/
PROC GENMOD DATA = dataall  DESCENDING ;
  ODS SELECT PARAMETERESTIMATES ;
  ODS OUTPUT PARAMETERESTIMATES= PARA;
  class  mage_g(ref='2')  /param=ref;
  MODEL abortion = D084 H056 ZD03  Z057 A056 W089 X035 R036 G047 N052 Q108 A040 G0113 K059 N051 E021 X068 D0367 K079 B0189 J061 T147 H033
dia  miscarriage infertility thyroid_dis common_cold  vaginitis  thrombosis  hypertension hepatitis other_inflammatory  mage_g/
  DIST= BIN LINK= LOG  INTERCEPT = -1LRCI;
RUN ;
DATA PARA0 ;
  SET PARA ;
  PR= EXP(ESTIMATE);
  LPR= EXP(LOWERLRCL);
  UPR= EXP(UPPERLRCL);
  KEEP PARAMETER PR LPR UPR;
RUN;
PROC PRINT DATA = PARA0 ;
RUN;

/*Stillbirth*/
PROC GENMOD DATA = dataall  DESCENDING ;
  ODS SELECT PARAMETERESTIMATES ;
  ODS OUTPUT PARAMETERESTIMATES= PARA;
  class  mage_g(ref='2')  /param=ref;
  MODEL stibir= D084 H056 ZD03  Z057 A056 W089 X035 R036 G047 N052 Q108 A040 G0113 K059 N051 E021 X068 D0367 K079 B0189 J061 T147 H033
dia  miscarriage infertility thyroid_dis common_cold  vaginitis  thrombosis  hypertension hepatitis other_inflammatory  mage_g/
  DIST= BIN LINK= LOG  INTERCEPT = -1LRCI;
RUN ;
DATA PARA0 ;
  SET PARA ;
  PR= EXP(ESTIMATE);
  LPR= EXP(LOWERLRCL);
  UPR= EXP(UPPERLRCL);
  KEEP PARAMETER PR LPR UPR;
RUN;
PROC PRINT DATA = PARA0 ;
RUN;


/*Preterm birth*/
PROC GENMOD DATA = dataall  DESCENDING ;
  ODS SELECT PARAMETERESTIMATES ;
  ODS OUTPUT PARAMETERESTIMATES= PARA;
  class  mage_g(ref='2')  /param=ref;
  MODEL g_preterm= D084 H056 ZD03  Z057 A056 W089 X035 R036 G047 N052 Q108 A040 G0113 K059 N051 E021 X068 D0367 K079 B0189 J061 T147 H033
dia  miscarriage infertility thyroid_dis common_cold  vaginitis  thrombosis  hypertension hepatitis other_inflammatory  mage_g/
  DIST= BIN LINK= LOG  INTERCEPT = -1LRCI;
RUN ;
DATA PARA0 ;
  SET PARA ;
  PR= EXP(ESTIMATE);
  LPR= EXP(LOWERLRCL);
  UPR= EXP(UPPERLRCL);
  KEEP PARAMETER PR LPR UPR;
RUN;
PROC PRINT DATA = PARA0 ;
RUN;

/*Low birth weight*/
PROC GENMOD DATA = dataall  DESCENDING ;
  ODS SELECT PARAMETERESTIMATES ;
  ODS OUTPUT PARAMETERESTIMATES= PARA;
  class  mage_g(ref='2')  /param=ref;
  MODEL g_lbw = D084 H056 ZD03  Z057 A056 W089 X035 R036 G047 N052 Q108 A040 G0113 K059 N051 E021 X068 D0367 K079 B0189 J061 T147 H033
dia  miscarriage infertility thyroid_dis common_cold  vaginitis  thrombosis  hypertension hepatitis other_inflammatory  mage_g/
  DIST= BIN LINK= LOG  INTERCEPT = -1LRCI;
RUN ;
DATA PARA0 ;
  SET PARA ;
  PR= EXP(ESTIMATE);
  LPR= EXP(LOWERLRCL);
  UPR= EXP(UPPERLRCL);
  KEEP PARAMETER PR LPR UPR;
RUN;
PROC PRINT DATA = PARA0 ;
RUN;

 /*Birth defects*/
PROC GENMOD DATA = dataall  DESCENDING ;
  ODS SELECT PARAMETERESTIMATES ;
  ODS OUTPUT PARAMETERESTIMATES= PARA;
  class  mage_g(ref='2')  /param=ref;
  MODEL CA1 = D084 H056 ZD03  Z057 A056 W089 X035 R036 G047 N052 Q108 A040 G0113 K059 N051 E021 X068 D0367 K079 B0189 J061 T147 H033
dia  miscarriage infertility thyroid_dis common_cold  vaginitis  thrombosis  hypertension hepatitis other_inflammatory  mage_g/
  DIST= BIN LINK= LOG  INTERCEPT = -1LRCI;
RUN ;
DATA PARA0 ;
  SET PARA ;
  PR= EXP(ESTIMATE);
  LPR= EXP(LOWERLRCL);
  UPR= EXP(UPPERLRCL);
  KEEP PARAMETER PR LPR UPR;
RUN;
PROC PRINT DATA = PARA0 ;
RUN;
