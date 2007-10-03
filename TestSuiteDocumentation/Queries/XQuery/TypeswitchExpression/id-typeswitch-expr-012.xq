(: Name: id-typeswitch-expr-012 :)
(: Description: Evaluation of a delete expression used with typeswitch expression where a branch (the "default") is an updating expression. :)
(: All other branches return "fn:error()". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

 typeswitch(xs:int(1))
  case $i as xs:int
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
  case $i as xs:double
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
  default
     return insert node <hours>50</hours> into $input-context/works[1]/employee[2]