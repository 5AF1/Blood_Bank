
set serveroutput on;
set verify off;

declare

	id Recipient.RID%TYPE := '&RecipientID';
	
begin
	
	delete from Recipient where RID=id;
	--dbms_output.put_line('data deleted from blood_inventory');
end;
/