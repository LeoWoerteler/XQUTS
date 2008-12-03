(: Name: id-transform-expr-050 :)
(: Description: Copy clause changes the type of an xml:id attribute node, but not the is-id property. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]
modify ()
return (
       $var1/ITEM[last()]/@xml:id instance of xs:untypedAtomic,
       empty(id("jff01", $var1/ITEM[last()]))
       )
