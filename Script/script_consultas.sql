Para realizar a pesquisa dentro do banco de dados a respeito dos gráficos apresentados: 

select gam_name, gam_positive_ratings from games order by gam_positive_ratings desc limit 10 - question 3 

select gam_name, gam_average_playtime from games order by gam_average_playtime desc limit 10 - question  4

select gam_name, gam_negative_ratings from games order by gam_negative_ratings desc limit 5 - question  5

select gam_developer, count(gam_developer) from games group by gam_developer order by count(gam_developer) desc limit 5; - question  6

select gam_name, gam_achievements from games order by gam_achievements desc limit 10 - question  7

select gam_name, gam_achievements from games order by gam_achievements asc limit 10 - question  7.2

select gam_name, gam_median_playtime from games order by gam_median_playtime desc limit 10 - question  8
