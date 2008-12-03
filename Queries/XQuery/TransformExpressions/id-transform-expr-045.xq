(: Name: id-transform-expr-045 :)
(: Description: Copy clause changes the idref property of the new element node. :)

declare default element namespace "http://ns.example.com/books2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]/ITEM[1]
modify ()
return empty(idref("MMP", $var1))
