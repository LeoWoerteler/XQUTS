(: Name: id-rename-expr-021 :)
(: Description: Evaluation of a rename expression where there is a namespace binding conflict between :)
(: the target the the qname from the new name expression. :)

declare namespace foo = "http://example.org";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var1 := <foo:someName>some Data</foo:someName>
let $var2 := <foo:anotherName xmlns:foo = "http://example1.org">Another Data</foo:anotherName>
return 
  rename node $var1 as fn:qname($var2)