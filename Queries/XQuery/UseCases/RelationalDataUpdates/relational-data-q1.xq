(: Test - relational-data-q1 :)
(: Description - Update Use Case #1  :)

(: start-indent :)
declare variable $users external;
(: end-indent :)

(:state-1-start :)

insert node
  <user_tuple>
    <userid>U07</userid>
    <name>Annabel Lee</name>
  </user_tuple>
into $users/users

(:state-1-end :)