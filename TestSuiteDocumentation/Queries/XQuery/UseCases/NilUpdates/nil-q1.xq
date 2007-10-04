(: Test - nil-q1 :)
(: Description - Update Use Case nill Q1:)

(: start-indent :)
declare variable $employees external;
(: end-indent :)

(:state-1-start :)

for $e in $employees//employee
where $e/@manager = true()
return
     copy $emp := $e
      modify (
          replace value of node $emp/salary with "" ,
          insert node (attribute xsi:nil {"true"}) 
             into $emp/salary
          )
      return $emp
      
(:state-1-end :)  