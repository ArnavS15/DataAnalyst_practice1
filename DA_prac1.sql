create database Myntra;
select * from myntra.myntra;
select product_name as "Product Name",
	brand_name as "Brand Name" , 
    marked_price as "Marked Price" ,
    discounted_price as "Discounted Price",
    marked_price-discounted_price as "Discounted Amount",
	round(((marked_price-discounted_price)/marked_price)*100,2) as "Discount Percentage" 
    from myntra.myntra;
    



select brand_name,brand_tag from myntra.myntra;
select count(distinct brand_name), count(distinct brand_tag) from myntra.myntra;


select * from myntra.myntra;
select * from myntra.myntra where brand_name = 'Biba' ;

select product_tag from myntra.myntra where brand_name = 'Biba' ;



