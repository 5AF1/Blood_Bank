set serveroutput on;

declare

    bg DONOR.Dbloodgroup%TYPE := '&BloodGroup';
	res number;
	
begin

	res := countBloodDonor(bg);
	dbms_output.put_line('Total donors of blood group ' ||bg|| ' = '||res);
	
end;
/