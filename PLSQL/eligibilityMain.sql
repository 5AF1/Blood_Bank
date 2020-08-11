set serveroutput on;

declare
    givenDate DONATION_DETAILS.givenat%TYPE := SYSDATE;
    donid number := '&DonorID';
begin
	
	isEligible(donid,givenDate);
end;
/