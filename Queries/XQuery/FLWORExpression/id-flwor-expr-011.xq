(: Name: id-flwor-expr-011 :)
(: Description: Evaluation of a replace expression used with FLWOR expression where the "where" clause is an updating (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[2]
let $var2 := <salaries><salary>15000</salary></salaries>
where replace value of node $var/salary[1] with $var2/salary[1]
return 
  "This Test Should Fail"