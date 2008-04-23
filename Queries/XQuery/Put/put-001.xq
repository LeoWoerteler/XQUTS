(: put-001.xq :)
(: simple test of fn:put function :)

put(<a><b c="{day-from-date(current-date())}"/></a>, "sandpit/put001.xml")