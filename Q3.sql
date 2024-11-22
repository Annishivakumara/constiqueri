 DELIMITER //
create procedure agecheck(in vid int , in v_name varchar(20) , in v_age int , IN v_address VARCHAR(20), in  canti_id int , in cand_id int )
     BEGIN
     declare msg varchar(50);
     if v_age>=18 then
    insert into voter values(vid,v_name,v_age, v_address,canti_id, cand_id);
    set msg='Row inserted..';
    else
    set msg="Age less than 18";
     end if;
     select msg;
    end;
    //
call agecheck(105,"micro", 17, "hampi",666,171);
   //  
