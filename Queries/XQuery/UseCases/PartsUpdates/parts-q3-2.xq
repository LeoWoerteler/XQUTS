(: Test - parts-q3-2 :)
(: Description - Update Use Case Parts Q3 - Alternate Solution:)

(: start-indent :)
declare variable $part-tree external;
declare variable $part-list external;
(: end-indent :)

(:state-1-start :)

declare updating function 
             local:delete-subtree($p as element(part))
  {
      for $child in $part-list//part
      where $p/@partid eq $child/@partof
      return (
        local:delete-subtree($child),
        delete node $child
      )
  };

local:delete-subtree($part-list//part[@name="car"])
  
(:state-1-end :)  