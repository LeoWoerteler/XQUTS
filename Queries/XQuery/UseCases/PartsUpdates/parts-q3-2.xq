(: Test - parts-q3-2 :)
(: Description - Update Use Case Parts Q3 - Alternate Solution:)

(: insert-start :)
declare variable $part-tree external;
declare variable $part-list external;
(: insert-end :)

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

for $p in doc("part-list.xml")//part[@name="car"]
return 
  local:delete-subtree($p)
  
(:state-1-end :)  