set serveroutput on;
set verify off;

declare
	rin recipient.rid%TYPE := '&RID';	
	RID recipient.rid%TYPE; 
	Rname recipient.rname%type;
	Rage recipient.rage%type; 
	Rgender recipient.rgender%type;
	Rbloodgroup recipient.rbloodgroup%type; 
	Raddress recipient.raddress%type; 
	Rphonenum recipient.rphonenum%type; 
	DID donor.did%type;
	dname donor.dname%type;
	givendate donation_details.givenat%type;
	hospital donation_details.hospital%type;
	
	cursor recipientbyid(matchrid recipient.rid%TYPE) is

	select r.rid,rname,rage,rgender,rbloodgroup,raddress,rphonenum,d.did ,dname,givenat,hospital 
	from donation_details dd join donor d on dd.did = d.did join recipient r on r.rid = dd.rid
    ---from donation_details dd join recipient r on dd.rid = r.rid join donor d on d.did = dd.did
	where r.rid = matchrid;
	
begin
    
	
	DBMS_OUTPUT.PUT_LINE('Recipient ID'||' -- '||' Recipient Name'||' -- ' || 'Age'||' -- ' || 'Gender' ||' -- '|| 'Blood Group' ||' -- '||
	'Address' ||' -- '|| 'Phone Number' ||' -- '|| 'Donor ID' ||' -- '|| 'Donor Name' ||' -- '|| 'Given Date' ||' -- '|| 'Hospital');
	
	open recipientbyid(rin);
	loop
		fetch recipientbyid into rid,rname,rage,rgender,rbloodgroup,raddress,rphonenum,did,dname,givendate,hospital;
        
        exit when recipientbyid%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(rid)||' -- '|| rname ||' -- '|| TO_CHAR(rage)||' -- '|| rgender||' -- '|| rbloodgroup||' -- '|| raddress ||
		' -- '||rphonenum || ' -- ' || did|| ' -- ' || dname|| ' -- ' || givendate || ' -- ' || hospital);
	end loop;	
	close recipientbyid;
	

end;
/