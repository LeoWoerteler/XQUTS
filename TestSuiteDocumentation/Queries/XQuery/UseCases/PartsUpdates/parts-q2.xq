(: Test - parts-q2 :)
(: Description - Update Use Case Parts Q2:)

(: start-indent :)
declare variable $part-tree external;
(: end-indent :)

(:state-1-start :)
 delete node $part-tree//part[@name="car"]/part

(:state-1-end :)