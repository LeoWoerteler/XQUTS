(: Name: vallax-ins-004 :)
(: Description: inserting a disallowed attribute is bad news :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <garbage trash="waste">rubbish</garbage>/@* as first into ($books/BOOKLIST/BOOKS/ITEM)[1]