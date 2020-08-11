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
    r recipient.rid%TYPE;
	rname recipient.rname%type;
	rarea recipient.raddress%type;
	hospital donation_details.hospital%type;
	
	cursor donorbyID(matchID DONOR.Did%TYPE) is
	select d.did,dname,dbloodgroup,darea,dphonenum,deligibility,r.rid, rname, raddress,hospital
	from donor d full outer join donation_details dd on d.did = dd.did full outer join recipient r on dd.rid = r.rid
	where d.did = matchid;	


begin
    
	
	DBMS_OUTPUT.PUT_LINE('DID'||' -- '||'Donor Name'||' -- ' || 'Blood Group'||' -- '|| 'Donor Area' ||' -- '||  'Donor Phone Number' ||' -- '|| 'Donor Eligibility' ||' -- ' || 'RID' ||' -- ' || 'Recipient Name' ||' -- ' || 'Recipient address' ||' -- ' || 'Hospital');
	
	open donorbyid(searchID);
	loop
		fetch donorbyid into id,name,bloodGrp,area,phonenum,elgib,r,rname,rarea,hospital;
		
		exit when donorbyid%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(id)||' -- '|| name ||' -- '|| bloodGrp||' -- '||area||' -- '||phonenum || ' -- ' || elgib 
		||' -- ' || r || ' -- ' || rname ||' -- ' || rarea ||' -- ' || hospital);
		
	end loop;
	close donorbyid;
	

end;
/