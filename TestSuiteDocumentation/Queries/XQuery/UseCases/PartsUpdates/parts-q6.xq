(: Test - parts-q6 :)
(: Description - Update Use Case Parts Q6:)

(: start-indent :)
declare variable $part-tree external;
(: end-indent :)

(:state-1-start :)

for $keyword at $i in ("car", "skateboard", "canoe"),
    $parent in $part-tree//part[@name=$keyword]
let $descendants := $parent//part
for $p in ($parent, $descendants)
return 
  replace value of node $p/@partid with $i*1000+$p/@partid
  
(:state-1-end :)  