(: Name: id-comma-expr-012-test :)
(: Description: Query to verify id-comma-expr-012 :)
(: expression is a call to fn:error() and the second one updating expression .  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/works[1]/employee[2]