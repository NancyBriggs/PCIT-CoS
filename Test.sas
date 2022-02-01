libname data "C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS";

data data; set data.dummy_data;
run;

proc mixed data=data;
  class id tx(ref="3") time(ref="1") ;
  model y = tx|time /s ;
  random intercept /subject=id ;
  lsmeans tx*time / cl ;
  estimate "PCIT-T vs CoS-P, change from T1-T2"   tx*time -1  1  0
                                                           1 -1  0
                                                           0  0  0 /cl ;
  estimate "CoS-P vs Waitlist, change from T1-T2" tx*time  0  0  0
                                                          -1  1  0
                                                           1 -1  0 /cl ;
  contrast "Overall Test of both T1-T2 changes"   tx*time -1  1  0
                                                           1 -1  0
                                                           0  0  0,
                                                  tx*time  0  0  0
                                                          -1  1  0
                                                           1 -1  0 ;
  estimate "PCIT-T vs CoS-P, change from T2-T3"   tx*time -1  1  0
                                                           1 -1  0
                                                           0  0  0 /cl ;
run;
