create or replace function countBloodDonor(matchBloodGroup DONOR.Dbloodgroup%TYPE)
return number
is
totalDonor number;

begin
	
	 select count(DID) into totalDonor from DONOR
	 where  Dbloodgroup = matchBloodGroup and Deligibility = 'Yes';
	 
	return totalDonor;

end countBloodDonor;
/






