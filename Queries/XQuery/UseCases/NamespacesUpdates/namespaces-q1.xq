(: Test - namespaces-q1 :)
(: Description - Update Use Case namespaces :)

declare namespace nara = "http://www.anr.fr/nara";

(: start-indent :)
declare variable $grant external;
(: end-indent :)

(:state-1-start :)

for $e in $grant//*
where not (namespace-uri($e) eq "http://www.anr.fr/nara")
return 
  rename node $e 
      as QName("http://www.anr.fr/nara", 
               concat("nara:",local-name($e)))
               
(:state-1-end :)               