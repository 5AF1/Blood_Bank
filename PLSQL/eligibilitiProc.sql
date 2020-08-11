DROP PROCEDURE isEligible;

create or replace procedure isEligible(
		id in DONOR.DID%TYPE, presentDate in out DONATION_DETAILS.givenat%TYPE)
		IS
		
	calcDate DONATION_DETAILS.givenat%TYPE;
	givenDate DONATION_DETAILS.givenat%TYPE;
	
	cursor getDateFrom( tempid in DONOR.DID%TYPE ) is
	select givenat from DONATION_DETAILS where DID=tempid order by givenat asc;
	
begin  

	open getDateFrom(id);
	
	loop
		fetch getDateFrom into givenDate;
		exit when getDateFrom%notfound;		
	end loop;
	
	close getDateFrom;
	
	calcDate:= add_months(givenDate, 4);



------           comments  starts         ----

	--DBMS_OUTPUT.PUT_LINE('calculated date = ' || to_char(calcDate));
    --DBMS_OUTPUT.PUT_LINE('given date = ' || to_char(givenDate));
    --DBMS_OUTPUT.PUT_LINE('presentDate date = ' || to_char(presentDate));



---          comments finished            --

	
	if calcDate > presentDate then
		update Donor set Deligibility = 'No' where DID=id;
	else
		update Donor set Deligibility = 'Yes' where DID=id;
	end if;
	 
end isEligible;
/

