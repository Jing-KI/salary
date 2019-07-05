libname drsal "C:\Users\jinzha\Documents\DrSalary\SAS datafiles";
proc import datafile="C:\Users\jinzha\Documents\DrSalary\Original data\Läkaranställningar 2010-2018exkl pnr.xlsx"
dbms=excel
out=drsalary;
run;

data drsal.drsalary;
set drsalary;
run;

proc sort data=drsalary out=drs nodupkey;
by p_ref;
run;
