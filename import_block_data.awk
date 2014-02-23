#!/bin/bash

while IFS=, read field1 field2 field3 field4 field5 field6 field7 field8 field9; do
	curl -XPOST 'http://ez-park.herokuapp.com/blocks.json?block[address]=$field1&block[lat]=$field2&block[lon]=$field3&block[rate]=$field4&block[limit]=$field9&block[count]=0&block[fromDay]=$field5&block[toDay]=$field6&block[fromHour]=$field7&block[toHour]=$field8&block[status]=1'
done < out_block_2