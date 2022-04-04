# Jacklyn Tellez
# Individul Project 4
# DS-160-01

#1
Select lastName, firstName From author;

#2 
Select title, TYPE from book;

#3 
Select Distinct publisherCode from publisher;

#4 
Select title, price, (price*0.75) As 'Discount' from book 
limit 5;

#5
Select title, price from book 
where price > 20.00;

#6
Select publisherName from publisher
where city = 'New York';
    
#7
select publisherName from publisher 
where city != 'New York';    
    
#8 
select bookCode, onHand from inventory
where  onHand   between 2 AND 4; 

#9
select Count(title) As 'Penguin Books' from book
where publisherCode = 'PE';
  
 #10
 select Count(title) As 'Books less than $20' from book
 where price < 20.00; 
 
 #11 
 select * from book 
 join publisher
 where publisher.publisherCode = book.publisherCode ;
 
 #12 
Select * from book
join publisher 
on publisher.publisherCode = book.publisherCode ;

#13
select title,  city from book
join publisher 
on publisher.publisherCode = book.publisherCode 
order by title asc;

#14 
select title, BranchNum, onHand from book
join inventory
on book.bookCode = inventory.bookCode
order by title asc;

#15
select title, Sum( onHand) as 'Inventory' from book
join inventory
on book.bookCode = inventory.bookCode
group by inventory.bookCode
order by Inventory desc
limit 2;

#16
select lastName, firstName, title from author
join book 
join wrote 
on author.authorNum = wrote.authorNum and book.bookCode = wrote.bookcode
where paperback = 'Y'
order by lastName, title asc;

# BONUS
select title, lastName from book
join author
join wrote 
on author.authorNum = wrote.authorNum and book.bookCode = wrote.bookcode
order by lastName asc;