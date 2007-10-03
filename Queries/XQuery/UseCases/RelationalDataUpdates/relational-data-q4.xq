(: Test - relational-data-q4 :)
(: Description - Update Use Case #4  :)

(: start-indent :)
declare variable $users external;
(: end-indent :)

(:state-1-start :)

let $user := $users/users/user_tuple[name="Annabel Lee"]
return 
  if($user/rating)
  then replace value of node $user/rating with "B"
  else insert node <rating>B</rating> into $user

(:state-1-end :)