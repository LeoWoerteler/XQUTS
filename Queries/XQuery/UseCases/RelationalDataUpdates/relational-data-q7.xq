(: Test - relational-data-q7 :)
(: Description - Update Use Case #7   :)

(: start-indent :)
declare variable $items external;
(: end-indent :)

(:state-1-start :)
 insert nodes
  <comment>This is a bargain !</comment>
as last into $items/items/item_tuple[itemno=1002] 

(:state-1-end :)