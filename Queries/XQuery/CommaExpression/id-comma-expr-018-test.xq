(: Name: id-comma-expr-018-test:)
(: Description: Query to verify id-comma-expr-018 :)
(: expression is an updating (replace) expression and the second one a call to fn:error().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/works[1]/employee[2]/hours[1]