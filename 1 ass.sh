echo "ENTER ADDRESS BOOK NAME:    "
read fname
touch $fname
echo -e "ADDRESS BOOK CREATED\n"
echo -e "NAME\t\t ID \t DOB\t\tADDRESS\t MOB_NO\t\t SALARY">>$fname
ch=0
while [ $ch -lt '7' ]
do
echo -e "ADDRESS BOOK :\n"
echo -e "1.CREATE ADDRESS BOOK"
 echo -e "2.VIEW ADDRESS BOOK"
echo -e "3.INSERT A RECORD"
echo -e "4.DELETE A RECORD"
echo -e "5.MODIFY A RECORD"
echo -e "6.SEARCH A RECORD"
echo -e "7.EXIT FROM ADDRESS BOOK"
echo -e "ENTER YOUR CHOICE"
read ch
case $ch in
	1)echo -e "enter number of records you want to enter \t"
	  read n
	  for((i=0;i<$n;i++))
	  do
	  	echo -e "ENTER NAME OF EMPLOYEE\t"
	  	read ename
	  	echo -e "ENTER ID OF EMPLOYEE\t"
	  	read eid
	  	echo -e "ENTER DOB OF EMPLOYEE\t"
	  	read edob
	  	echo -e "ENTER ADDRESS OF EMPLOYEE\t"
	  	read eadd
	  	echo -e "ENTER MOBILE NO. OF EMPLOYEE\t"
	  	read emob
	  	echo -e "ENTER SALARY OF EMPLOYEE\t"
	  	read esal
	  	echo -e " $ename \t $eid \t $edob \t $eadd \t $emob \t $esal \n">>$fname
	  done
	  ;;
	  2)
	  	cat $fname
	  ;;
	  3)
	  	echo -e "enter new record"
	  	echo -e "ENTER NAME OF EMPLOYEE\t"
	  	read ename
	  	echo -e "ENTER ID OF EMPLOYEE\t"
	  	read eid
	  	echo -e "ENTER DOB OF EMPLOYEE\t"
	  	read edob
	  	echo -e "ENTER ADDRESS OF EMPLOYEE\t"
	  	read eadd
	  	echo -e "ENTER MOBILE NO. OF EMPLOYEE\t"
	  	read emob
	  	echo -e "ENTER SALARY OF EMPLOYEE\t"
	  	read esal
	  	echo -e " $ename \t $eid \t $edob\t\t $eadd \t $emob \t $esal \n">>$fname
	  ;;
	  4)
	  	echo -e "ENTER EMPLOYEE ID TO BE DELETED "
	  	read eid
	  	if  grep -w $eid $fname 
	  	then	
	  			grep -wv $eid $fname >>temp
	  			rm $fname
	  			mv temp $fname
	  			echo "RECORD DELETED"

	  	else
	  		echo "RECORD DOES NOT EXIST "
	  	fi
	  ;;
	  5)
	  	echo "ENTER EMPLOYE  ID TO BE MODIFIY"
	  	read eid
	  	if  grep -w $eid $fname 
	  		then	
	  			grep -wv $eid $fname >>temp
	  			rm $fname
	  			mv temp $fname
	  			echo -e "enter modified record"
			  	echo -e "ENTER NAME OF EMPLOYEE\t"
	  			read ename
	  			echo -e "ENTER ID OF EMPLOYEE\t"
	  			read eid
	  			echo -e "ENTER DOB OF EMPLOYEE\t"
	  			read edob
	  			echo -e "ENTER ADDRESS OF EMPLOYEE\t"
	  			read eadd
	  			echo -e "ENTER MOBILE NO. OF EMPLOYEE\t"
	  			read emob
	  			echo -e "ENTER SALARY OF EMPLOYEE\t"
	  			read esal
	  			echo -e " $ename \t $eid \t $edob\t\t $eadd \t $emob \t $esal \n">>$fname
	  		else
	  			echo "RECORD DOES NOT EXIST "
	  	fi
	  ;;
	  6)
	  	echo -e "ENTER EMPLOYEE ID TO BE SEARCHED "
	  	read eid
	  	if  grep  $eid $fname 
	  	then
	  		grep -w $eid $fname 	
	  		echo "RECORD FOUND...!!!"
	  	else
	  		echo "RECORD DOES NOT EXIST "
	  	fi
	  ;;
	  esac
done


comment1()
{

ENTER ADDRESS BOOK NAME:    
add1
ADDRESS BOOK CREATED

ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
1
enter number of records you want to enter 	
2
ENTER NAME OF EMPLOYEE	
sau
ENTER ID OF EMPLOYEE	
123
ENTER DOB OF EMPLOYEE	
17/10/1997
ENTER ADDRESS OF EMPLOYEE	
p
ENTER MOBILE NO. OF EMPLOYEE	
karanja
ENTER SALARY OF EMPLOYEE	
500000
ENTER NAME OF EMPLOYEE	
pran
ENTER ID OF EMPLOYEE	
456 
ENTER DOB OF EMPLOYEE	
12/12/1997
ENTER ADDRESS OF EMPLOYEE	
punee
ENTER MOBILE NO. OF EMPLOYEE	
808756489
ENTER SALARY OF EMPLOYEE	
6500
ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
2
NAME	 ID 	 DOB	 ADDRESS	 MOB_NO		 SALARY
 sau 	 123 	 17/10/1997 	 p 	 karanja 	 500000 

 pran 	 456 	 12/12/1997 	 punee 	 808756489 	 6500 

ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
3
enter new record
ENTER NAME OF EMPLOYEE	
wer
ENTER ID OF EMPLOYEE	
789
ENTER DOB OF EMPLOYEE	
14/09/1997
ENTER ADDRESS OF EMPLOYEE	
kolha
ENTER MOBILE NO. OF EMPLOYEE	
9423411084
ENTER SALARY OF EMPLOYEE	
63000
ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
2
NAME	 ID 	 DOB	 ADDRESS	 MOB_NO		 SALARY
 sau 	 123 	 17/10/1997 	 p 	 karanja 	 500000 

 pran 	 456 	 12/12/1997 	 punee 	 808756489 	 6500 

 wer 	 789 	 14/09/1997 	 kolha 	 9423411084 	 63000 

ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
5
ENTER EMPLOYE  ID TO BE MODIFIY
123
 sau 	 123 	 17/10/1997 	 p 	 karanja 	 500000 
enter modified record
ENTER NAME OF EMPLOYEE	
sau
ENTER ID OF EMPLOYEE	
123
ENTER DOB OF EMPLOYEE	
17/10/1997
ENTER ADDRESS OF EMPLOYEE	
KARANJA
ENTER MOBILE NO. OF EMPLOYEE	
9403131046
ENTER SALARY OF EMPLOYEE	
98500
ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
2
NAME	 ID 	 DOB	 ADDRESS	 MOB_NO		 SALARY

 pran 	 456 	 12/12/1997 	 punee 	 808756489 	 6500 

 wer 	 789 	 14/09/1997 	 kolha 	 9423411084 	 63000 

 sau 	 123 	 17/10/1997 	 KARANJA 	 9403131046 	 98500 

ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
4
ENTER EMPLOYEE ID TO BE DELETED 
123
 sau 	 123 	 17/10/1997 	 KARANJA 	 9403131046 	 98500 
RECORD DELETED
ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
2
NAME	 ID 	 DOB	 ADDRESS	 MOB_NO		 SALARY

 pran 	 456 	 12/12/1997 	 punee 	 808756489 	 6500 

 wer 	 789 	 14/09/1997 	 kolha 	 9423411084 	 63000 


ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
5
ENTER EMPLOYE  ID TO BE MODIFIY
789
 wer 	 789 	 14/09/1997 	 kolha 	 9423411084 	 63000 
enter modified record
ENTER NAME OF EMPLOYEE	
sau
ENTER ID OF EMPLOYEE	
123
ENTER DOB OF EMPLOYEE	
17/10/1997
ENTER ADDRESS OF EMPLOYEE	
karanj
ENTER MOBILE NO. OF EMPLOYEE	
8087500797
ENTER SALARY OF EMPLOYEE	
65000
ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
2
NAME	 ID 	 DOB	 ADDRESS	 MOB_NO		 SALARY

 pran 	 456 	 12/12/1997 	 punee 	 808756489 	 6500 



 sau 	 123 	 17/10/1997 	 karanj 	 8087500797 	 65000 

ADDRESS BOOK :

1.CREATE ADDRESS BOOK
2.VIEW ADDRESS BOOK
3.INSERT A RECORD
4.DELETE A RECORD
5.MODIFY A RECORD
6.SEARCH A RECORD
7.EXIT FROM ADDRESS BOOK
ENTER YOUR CHOICE
7
}

