(: Name: stf-rename-01 :)
(: Description: rename: ST of TargetExpr has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target := $input-context/works/employee[@name='Jane Doe 1']
return
    rename node $target as "emp"
