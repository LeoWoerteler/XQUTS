(: Name: valskip-ren-001-test :)
(: Description: renaming an element removes type from self and ancestors :)

declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <b>{$books//WRITER instance of element(*, xs:untypedAtomic)}</b>  
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
  <e>{$books/BOOKLIST/BOOKS/ITEM[1]/PRICE instance of element(*, xs:decimal)}</e>  
  <f>{$books/BOOKLIST/BOOKS/ITEM[2] instance of schema-element(ITEM)}</f>
</out>        