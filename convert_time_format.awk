#!/usr/bin/awk -f

BEGIN{
FS=",";
OFS=",";
}
{
	if($7 ~ /A$/) {
		$7 = substr($7,0,2)
	} else {
		$7 = substr($7,0,2) + 12
	}

	if($8 ~ /A$/) {
		$8 = substr($8,0,2)
	} else {
		$8 = substr($8,0,2) + 12
	}	

	print $1,$2,$3,$4,$5,$6,$7,$8,$9;


}