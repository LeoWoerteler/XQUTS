(: Test - parts-q4-1 :)
(: Description - Update Use Case Parts Q4 - :)

(: start-indent :)
declare variable $part-tree external;
(: end-indent :)

(:state-1-start :)

let $next := max($part-tree//@partid) + 1
  return
    insert node <part partid="{$next}" name="radio"/>
       into 
       $part-tree//part[@partid=0 and @name="car"]
       
(:state-1-end :)       