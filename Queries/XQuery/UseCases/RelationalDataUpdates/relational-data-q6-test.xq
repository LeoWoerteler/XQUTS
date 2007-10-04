(: Test - relational-data-q6 :)
(: Description - Update Use Case #6  :)

(: start-indent :)
declare variable $users external;
declare variable $items external;
declare variable $bids external;
(: end-indent :)

let $user := $users/users/user_tuple[name="Dee Linquent"]
let $items := $items/items/item_tuple[offered_by="U03"]
let $bids := $bids/bids/bid_tuple[userid="U03"]
return ($user,$items,$bids)