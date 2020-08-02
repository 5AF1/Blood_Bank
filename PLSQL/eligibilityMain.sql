
set serveroutput on;

declare
    givenDate DONATION_DETAILS.givenat%TYPE := SYSDATE;
    donid number := '&DonorID';
begin
	
	isEligible(donid,givenDate);
	--DBMS_OUTPUT.PUT_LINE('calculated date = ' || to_char(givenDate));

end;
/