set serveroutput on;
set verify off;

declare
	
	id1 Recipient.RID%TYPE := '&RID'
	name Recipient.Rname%TYPE := '&NewName';
	address Recipient.Raddress%TYPE := '&NewAddress';
	phonenum Recipient.Rphonenum%TYPE := '&NPhoneNumber';
	
begin
	
	update Recipient set Rname = name, Rarea = area , Raddress = address , Rphonenum = phonenum where RID=id1;
	dbms_output.put_line('data update also in blood_inventory');
end;
/