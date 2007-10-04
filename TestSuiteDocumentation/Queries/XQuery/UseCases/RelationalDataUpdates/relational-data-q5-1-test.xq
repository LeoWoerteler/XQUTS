(: Test - relational-data-q5-1-test :)
(: Description - Verification query for Update Use Case #5  :)

(: start-indent :)
declare variable $users external;
declare variable $bids external;
(: end-indent :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
return fn:count($bids/bids/bid_tuple[userid=$uid])