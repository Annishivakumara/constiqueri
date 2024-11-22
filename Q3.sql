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
+------------------+
| msg              |
+------------------+
| Age less than 18 |
+------------------+

select * from voter;
+-----+--------+-------+-------------+----------+---------+
| vid | v_name | v_age | v_address   | canti_id | cand_id |
+-----+--------+-------+-------------+----------+---------+
| 100 | thomas |    33 | kerala      |      111 |     121 |
| 101 | adison |    45 | bomby       |      222 |     131 |
| 102 | marco  |    50 | vijayanagar |      333 |     141 |
| 103 | boss   |    60 | gadaga      |      444 |     151 |
| 104 | rama   |    25 | kampli      |      555 |     161 |
+-----+--------+-------+-------------+----------+---------+
