use youth_smoking_db;
select * from youth_smoking_drug_data_10000_rows_expanded;
alter table youth_smoking_drug_data_10000_rows_expanded
rename to  youth_smoking_table;

select * from youth_smoking_table;

# where clause query : get the data for all middle class youth  / people from middle class 
select * from youth_smoking_table 
where Socioeconomic_Status = 'Middle';

#what is the mediain rating given to median influence on the youth class?

select Socioeconomic_Status , avg(Media_Influence) as media from youth_smoking_table 
group by Socioeconomic_Status;
