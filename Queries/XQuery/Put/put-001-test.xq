(: put-001-test.xq :)
(: simple test of fn:put function :)

<out>{
  deep-equal(<a><b c="{day-from-date(current-date())}"/></a>, doc("sandpit/put001.xml")/*)
}</out>