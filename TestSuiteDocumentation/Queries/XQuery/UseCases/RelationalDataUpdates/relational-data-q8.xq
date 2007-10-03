(: Test - relational-data-q8 :)
(: Description - Update Use Case #8   :)

(: start-indent :)
declare variable $users external;
declare variable $bids external;
(: end-indent :)

(:state-1-start :)

let $uid := 
$users/users/user_tuple[name="Annabel Lee"]/userid
return 
  insert nodes
    <bid_tuple> 
      <userid>{data($uid)}</userid> 
      <itemno>1010</itemno> 
      <bid>60</bid> 
      <bid_date>2006-04-23</bid_date> 
    </bid_tuple>
  into $bids/bids
  
(:state-1-end :)  