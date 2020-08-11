set serveroutput on;
set verify off;

declare
	
	id1 DONOR.DID%TYPE := '&DID';
	nam DONOR.Dname%TYPE := '&NewName';
	area DONOR.Darea%TYPE := '&NewArea';
	address DONOR.Daddress%TYPE := '&NewAddress';
	phonenum DONOR.Dphonenum%TYPE := '&NPhoneNumber';
	
begin
	
	update DONOR set Dname = nam, Darea = area , Daddress = address , Dphonenum = phonenum where DID=id1;
	
end;
/