

# Typing gis:LocalMapAlgebra

#Set input
INSERT
{ 
#GRAPH ?g{
	?in2 a gis:Raster; 
		 ada:hasElement _:ine.
	_:ine ada:hasMeasure _:inm.
	_:ine ada:hasSupport _:ins. # This reuses data blank nodes if present
#}
}
#SELECT *
WHERE{
#GRAPH ?g{
{
?node a gis:LocalMapAlgebra;
gis:inputdata ?in2.
FILTER NOT EXISTS {
	?in2 ada:hasElement ?ine.
	?ine ada:hasMeasure ?inm.
	?ine ada:hasSupport ?ins.
} #Are data blank nodes present? Then reuse them
#}
}
}












