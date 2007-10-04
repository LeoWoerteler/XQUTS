(: Test - relational-data-q9 :)
(: Description - Update Use Case #9  :)

(: start-indent :)
declare variable $users external;
declare variable $bids external;
(: end-indent :)

let $uid := $users/users/user_tuple[name="Annabel Lee"]/userid
return fn:count(($bids/bids/bid_tuple[userid=$uid]))