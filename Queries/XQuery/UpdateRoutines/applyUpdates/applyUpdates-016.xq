(: Name: applyUpdates-016 :)
(: Description: Check atomicity with a good operation and a bad operation. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node comment {"my guy"} into $var,
   rename node $var/hours as "this is a baaaad name"
   )
