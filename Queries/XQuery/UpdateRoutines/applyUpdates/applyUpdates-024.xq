(: Name: applyUpdates-024 :)
(: Description: Insert two attributes with the same name, delete the containing element's parent. :)
(: Note, currently legal, but challenged by bug 6481 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute name {"Sylvia"} into $var/empnum,
   insert node attribute name {"Gwynneth"} into $var/empnum,
   delete node $var
   )
