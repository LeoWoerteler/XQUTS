(: Name: id-typeswitch-expr-02 :)
(: Description: Evaluation of insert expression used with typeswitch expression where the branch (a "case") is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (do insert <hour>20</hour> into <hours></hours>)
 case $i as xs:double
    return () 
 default
   return ()