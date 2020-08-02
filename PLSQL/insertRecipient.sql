set serveroutput on;
set verify off;

declare

	name Recipient.Rname%TYPE := '&Name';
	age Recipient.Rage%TYPE := '&Age';
	gender Recipient.Rgender%TYPE := '&Gender';
	bloodGrp Recipient.Rbloodgroup%TYPE := '&BloodGroup';
	address Recipient.Raddress%TYPE := '&Address';
	phonenum Recipient.Rphonenum%TYPE := '&PhoneNumber';
	
begin
    
	
	DBMS_OUTPUT.PUT_LINE('Name'||' -- ' || 'Age'||' -- ' || 'Gender' ||' -- '|| 'Blood Group'||' -- '|| 'Address' ||' -- '|| 'Phone Number');
	DBMS_OUTPUT.PUT_LINE( name ||' -- '|| TO_CHAR(age)||' -- '||gender||' -- '|| bloodGrp||' -- '||address||' -- '||phonenum);
	insert into Recipient values(recip_sequence.nextval,name,age,gender,bloodGrp,address,phonenum);

end;
/