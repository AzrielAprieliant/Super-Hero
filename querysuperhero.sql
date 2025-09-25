select
sh.superhero_name,
count(sp.power_name) as total_power,
r.race,
g.gender,
p.publisher_name,
c.colour as hair_colour,
sh.weight_kg,
sh.height_cm


from dbo.superhero sh

join dbo.hero_power hp
on hp.hero_id = sh.id
join dbo.superpower sp
on sp.id = hp.power_id
join dbo.race r
on r.id = sh.race_id
join dbo.gender g
on g.id = sh.gender_id
join dbo.publisher p
on  p.id = sh.publisher_id
join dbo.colour c
on c.id = sh.hair_colour_id
join dbo.hero_attribute ha
on ha.hero_id = sh.id
join dbo.attribute an
on an.id = ha.attribute_id

group by sh.superhero_name, g.gender, r.race, c.colour, p.publisher_name, sh.height_cm, sh.weight_kg

order by sh.superhero_name, g.gender, r.race, c.colour, p.publisher_name, sh.height_cm, sh.weight_kg

