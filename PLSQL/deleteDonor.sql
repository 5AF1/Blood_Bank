set serveroutput on;
set verify off;

declare

	id DONOR.DID%TYPE := '&DonorID';
	
begin
	
	delete from DONOR where DID=id;
end;
/