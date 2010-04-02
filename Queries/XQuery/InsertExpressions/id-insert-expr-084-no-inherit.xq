(: Name: id-insert-expr-084 :)
(: Description: Check namepsace propogation when inserting an element. :)

declare copy-namespaces preserve, no-inherit;

declare namespace myco="http://www.example.com/myco";

(: insert-start :)
(: insert-end :)

let $myemps :=       <myco:employees>
                       <myco:employee id='100'>
                          <myco:name>Samuel</myco:name>
                       </myco:employee>
                     </myco:employees>
let $newemps :=
   copy $e := $myemps
   modify insert node <dependents/> before $e/myco:employee[1]
   return $e
return
    namespace-uri-for-prefix("myco", $newemps/dependents[1])