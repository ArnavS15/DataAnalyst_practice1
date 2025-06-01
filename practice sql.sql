select * from data;
#1. How many brands are assosciated with us?
#2. How many tshirts do we have in the database?
#3. How many tshirts do we have in the database under 2000?
#4. How many brands are selling tshirts?
#5. How many different producct categories H&M IS selling?
#6. List of top 5 tshirts of Nike
#7. List top 5 worse rated products from GUESS
#8. Find total products sold by Levis
#9. How many tshirts are sold in total?
#10. Which product category among tshirts and shirt has generated more revenue?

select brand_name from myntra.data;
select count(distinct brand_name) from myntra.data;

use myntra;
select count(*) from data where product_tag = 'tshirt';

select count(*) from data
	where product_tag = 'tshirts' and discounted_price < 2000;

select count(distinct brand_name) from data where product_tag = 'tshirt';

select count(distinct product_tag) from data 
	where brand_name = 'H&M';

select * from data where product_tag = 'tshirts' and brand_name = 'Nike'
order by rating_count desc
limit 6;
    
select * from data where product_tag = 'tshirts' and brand_name = 'Nike'
order by rating_count asc
limit 6;

select sum(rating_count) from data where brand_name = 'levis';

select sum(rating_count) from data where product_tag = 'tshirts';

select sum(rating_count*discounted_price) from data where product_tag = 'tshirts';
select sum(rating_count*discounted_price) from data where product_tag = 'shirts';

#11. to list top 5 best selling brands we have to use group by for big data
select brand_name, sum(rating_count) as 'product_sold' from data
	group by brand_name
		order by product_sold desc
			limit 5;

#12. finding out top 5 best selling product categories            
select product_tag, sum(rating_count) as 'product_categories' from data
	group by product_tag
		order by product_categories desc
			limit 5;
            
#13. which product category has generated more revenue
select product_tag, sum(rating_count*discounted_price) as 'revenue' from data
	group by product_tag
		order by revenue desc
			limit 5;
            
#14 which category among tshirts and shirts has generated more revenue?
select product_tag, sum(rating_count*discounted_price) as 'revenue'
	from data where product_tag in ('tshirts','shirts')
		group by product_tag
			order by revenue desc;
            
        




