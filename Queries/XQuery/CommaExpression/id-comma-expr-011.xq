(: Name: id-comma-expr-011 :)
(: Description: Evaluation of a delete expression used with comma expression where first :)
(: expression is an updating expression and the second one a call to fn:error().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
(delete node $var/hours[1], fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')))