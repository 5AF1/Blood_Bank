set serveroutput on;
set verify off;

declare
	searchID DONOR.darea%TYPE := '&ID';	
	id DONOR.DID%TYPE;
	name DONOR.Dname%TYPE;
	bloodGrp DONOR.Dbloodgroup%TYPE;
	area DONOR.Darea%TYPE;
	phonenum DONOR.Dphonenum%TYPE;
	elgib DONOR.Deligibility%TYPE;
	rname recipient.rname%type;
	rarea recipient.raddress%type;
	hospital donation_details.hospital%type;
	
	cursor donorbyID(matchID DONOR.Did%TYPE) is
	/*
	select did,dname,dbloodgroup,darea,dphonenum,deligibility,amount,rname, raddress,hospital 
	from donor join (donation_details join recipient on donation_details.did = recipient.did)
	on donor.did = recipient.did
	where Did = matchid;*/
	select d.did,dname,dbloodgroup,darea,dphonenum,deligibility,rname, raddress,hospital
	from donation_details dd join recipient r on dd.rid = r.rid join donor d on d.did = dd.did
	where d.did = matchid;	


begin
    
	
	DBMS_OUTPUT.PUT_LINE('DID'||' -- '||'Donor Name'||' -- ' || ' -- '|| 'Blood Group'||' -- '|| 'Donor Area' ||' -- '|| 
	' -- '|| 'Donor Phone Number' ||' -- '|| 'Donor Eligibility' ||' -- ' ||' -- ' || 'Recipient Name' ||' -- ' || 'Recipient address' ||' -- ' || 'Hospital');
	
	open donorbyid(searchID);
	loop
		fetch donorbyid into id,name,bloodGrp,area,phonenum,elgib,rname,rarea,hospital;
		
		exit when donorbyid%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(id)||' -- '|| name ||' -- '|| bloodGrp||' -- '||area||' -- '||' -- '||phonenum || ' -- ' || elgib 
		||' -- ' || ' -- ' || rname ||' -- ' || rarea ||' -- ' || hospital);
		
	end loop;
	close donorbyid;
	

end;
/