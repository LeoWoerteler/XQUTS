(: Test - relational-data-2 :)
(: Description - Update Use Case #2  :)

(: start-indent :)
declare variable $users external;
declare variable $bids external;
(: end-indent :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
return $bids/bids/bid_tuple[userid=$uid]