options nocenter nodate nonumber noxsync noxwait formdlim="-" mlogic mprint;;
%DELETEALL;

%let dir =C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\Pilot_Study_MatDep;
* Need to convert SAS datasets from old format (they were created on 32 bit machine);
* and copy them into the data directory in the updated 64bit format in order to run;
	libname in  "&dir.\data\original";
	libname out "&dir.\data"  outencoding=asciiany;
	proc copy inlib=in outlib=out noclone datecopy ;
	run;


libname data "&dir.\Data";

x cd "&dir." ;

* formats;
%include "&dir.\data\all_data.sas";
%include "&dir.\data\datasets.sas";
%include "&dir.\programs\macros.sas";


proc compare base=data.all_data
    compare=data.All_data20190913;
run;
proc contents data=data.All_data20190913; run;

data data; set data.all_data20190913; 
	where condition_allocated in (1,2) ;
run;






proc freq data=data;
  tables BL_EDS_total_no_miss  Baseline_EDS_q1
Baseline_EDS_q2
Baseline_EDS_q3
Baseline_EDS_q4
Baseline_EDS_q5
Baseline_EDS_q6
Baseline_EDS_q7
Baseline_EDS_q8
Baseline_EDS_q9
Baseline_EDS_q10

; run;


data data; set data ;
   array d(*) Baseline_EDS_q1
Baseline_EDS_q2
Baseline_EDS_q3
Baseline_EDS_q4
Baseline_EDS_q5
Baseline_EDS_q6
Baseline_EDS_q7
Baseline_EDS_q8
Baseline_EDS_q9
Baseline_EDS_q10
;
 do i=1 to dim(d) ;
		if d(i)=888 then d(i)=. ;
		if d(i)=999 then d(i)=. ;
 end;
run;
data data; set data ;
  EDStotal_bl=sum(Baseline_EDS_q1,
Baseline_EDS_q2,
Baseline_EDS_q3,
Baseline_EDS_q4,
Baseline_EDS_q5,
Baseline_EDS_q6,
Baseline_EDS_q7,
Baseline_EDS_q8,
Baseline_EDS_q9,
Baseline_EDS_q10);
run;
proc freq data=data;
  tables EDStotal_bl; 
run;
proc mi data=data;
ods select misspattern;
var Baseline_EDS_q1
Baseline_EDS_q2
Baseline_EDS_q3
Baseline_EDS_q4
Baseline_EDS_q5
Baseline_EDS_q6
Baseline_EDS_q7
Baseline_EDS_q8
Baseline_EDS_q9
Baseline_EDS_q10;
run;



