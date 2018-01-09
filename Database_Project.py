#make a connection between Python and MySQL server
# import mysql connector class as library
import mysql.connector

# create connection object to mysql database and store the object in variable 'conn'
conn = mysql.connector.connect(user='root', password= 'Hutchings@14', database='Zillow')
#create cursor and store the cursor object in 'cur' variable
cur = conn.cursor()

'''
#Answer1
Ans1_Q1 = """ select count(distinct city) from city_vf"""
cur.execute(Ans1_Q1)
No_of_Cities = str(cur.fetchone())

Ans1_Q2 = """ select count(distinct state) from state"""
cur.execute(Ans1_Q2)
No_of_states = str(cur.fetchone())
print "Answer1" 
print "The total number of cities are: "+No_of_Cities
print "The total number of states are: "+No_of_states
print ' '


#Answer2
Ans2_Q1 = """ select max(price) from price_final"""
cur.execute(Ans2_Q1)
Max_Rent = str(cur.fetchone())

Ans2_Q2 = """ select avg(price) from price_final"""
cur.execute(Ans2_Q2)
Avg_Rent = str(cur.fetchone())

Ans2_Q3 = """ select min(price) from price_final"""
cur.execute(Ans2_Q3)
Min_Rent = str(cur.fetchone())
print "Answer2" 
print "The Maximum rent across the database is "+Max_Rent
print "The Minimum rent across the database is "+Min_Rent
print "The Average rent across the database is "+Avg_Rent
print ' '

#Answer3
Ans3_Q1 = """ select max(price_persqft) from price_final"""
cur.execute(Ans3_Q1)
Max_Rent_pps = str(cur.fetchone())

Ans3_Q2 = """ select avg(price_persqft) from price_final"""
cur.execute(Ans3_Q2)
Avg_Rent_pps = str(cur.fetchone())

Ans3_Q3 = """ select min(price_persqft) from price_final"""
cur.execute(Ans3_Q3)
Min_Rent_pps = str(cur.fetchone())
print "Answer3" 
print "The Maximum rent across the database is "+Max_Rent_pps
print "The Minimum rent across the database is "+Min_Rent_pps
print "The Average rent across the database is "+Avg_Rent_pps
print ' '

#Answer4
Ans4 = """select avg(price) from price_final a
            inner join 
                    city_vf c
            on a.city_code = c.city_code
            inner join
                    state b
            on c.state_id = b.state_id
            where b.state = 'OH'
"""
cur.execute(Ans4)
Avg_rent_OH = str(cur.fetchone())
print "The average rent in Ohio is: "+ Avg_rent_OH


#Answer5
Ans5 = """select count(*) as total_count from 
        (select avg(price) as avg_price, metro from price_final a
	inner join 
		city_vf c
	on a.city_code = c.city_code
	inner join
		metro b
	on c.metro_id = b.metro_id
	group by metro
	having avg_price > (select avg(price) from price_final a
            inner join 
                    city_vf c
            on a.city_code = c.city_code
            inner join
                    state b
            on c.state_id = b.state_id
            where b.state = 'OH'
        )
        )a
	"""
cur.execute(Ans5)
greater_Avg = str(cur.fetchone())
print "Answer5" 
print "The number of metros having rent greater than the Average rent in Ohio: "+greater_Avg
'''


#Answer6
Ans6 = """select avg(price) as avg_price, metro, c.city as city from price_final a
	inner join 
		city_vf c
	on a.city_code = c.city_code
	inner join
		metro b
	on c.metro_id = b.metro_id
	group by metro
	having avg_price > (select avg(price) from price_final a
            inner join 
                    city_vf c
            on a.city_code = c.city_code
            inner join
                    state b
            on c.state_id = b.state_id
            where b.state = 'OH')
	"""
cur.execute(Ans6)
greater_Avg = str(cur.fetchone())
print "Answer6"
raw_input("\nPress Enter to see the above metros and cities that have a higher Average rent than Ohio in the order Rent, MEtro, City")

for (avg_price, metro, city) in cur:
	print((avg_price, metro, city))



Ans7 = """select a.metro 
            from 
                    (select metro, date, sum(price) as month_rent
                    from price_final a 
                    inner join 
                            city_vf d
                    on a.city_code = d.city_code
                    inner join 
                            metro b 
                    on d.metro_id = b.metro_id
                    inner join
                            state c
                    on d.state_id = c.state_id
                    where date(date) in('2017-09-15', '2017-10-15','2017-11-15','2017-12-15','2017-01-16','2017-02-16',
                    '2017-03-16', '2017-04-16','2017-05-16','2017-06-16','2017-06-16','2017-08-16','2017-09-16')
                    and c.state ='OH'
                    group by 1,2
                ) a
            inner join
                    (select metro, max(month_rent) as max_rent 
                    from
                            (select metro, date, sum(price) as month_rent
                            from price_final a 
                            inner join 
                                    city_vf d
                            on a.city_code = d.city_code
                            inner join 
                                    metro b 
                            on d.metro_id = b.metro_id
                            inner join
                                    state c
                            on d.state_id = c.state_id
                            where date(date) in('2017-09-15', '2017-10-15','2017-11-15','2017-12-15','2017-01-16','2017-02-16',
                            '2017-03-16', '2017-04-16','2017-05-16','2017-06-16','2017-06-16','2017-08-16','2017-09-16')
                            and c.state ='OH'
                            group by 1,2
                            ) d
                    group by 1
                    ) b
            on a.metro = b.metro
            and a.month_rent = b.max_rent
            where date = '2017-09-15'
            """
print "Answer7"
cur.execute(Ans7)
raw_input("\nPress Enter to see the list")

for (metro) in cur:
	print((metro))


#close cursor
cur.close()
#close connection
conn.close()
