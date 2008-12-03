(: Name: setToUntyped-001 :)
(: Description: Check that all properties are set correctly by upd:setToUntyped. :)

declare default element namespace "http://ns.example.com/books2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := <test><content/></test>
modify insert node $input-context/BOOKLIST[1] into $var1 
return (
       $var1/BOOKLIST[1] instance of xs:untyped,
       $var1/BOOKLIST[1]/BOOKS[1]/ITEM[1]/PUB-DATE[1] eq "2002-12-31",
       data($var1/BOOKLIST[1]/BOOKS[1]/ITEM[1]/PUB-DATE[1]) instance of xs:untypedAtomic,
       $var1/BOOKLIST[1]/BOOKS[1]/ITEM[1]/DIMENSIONS[1]/@UNIT eq "in",
       $var1/BOOKLIST[1]/BOOKS[1]/ITEM[1]/DIMENSIONS[1]/@UNIT instance of xs:untypedAtomic,
       empty(data($var1/BOOKLIST[1]/BOOKS[1]/ITEM[1]/LANGUAGE[1])),
       $var1/BOOKLIST[1]/BOOKS[1]//ITEM[last()]/@xml:id instance of xs:untypedAtomic,
       empty(id("jff001", $var1)),
       empty(idref("MMP", $var1)),
       empty(id("MMP", $var1))
       )
