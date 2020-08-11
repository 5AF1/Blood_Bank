
set serveroutput on;
set verify off;

declare

	id Recipient.RID%TYPE := '&RecipientID';
	
begin
	
	delete from Recipient where RID=id;
end;
/