#!/usr/bin/awk -f

BEGIN{
FS="\t";
OFS=",";
}
{
	if($1 != "" && $1 !~ /(^[-\*])|(^Meter)|(^METER)|(^NUMBER)|(^AM)|(^NT)/ && $3 !~ /^OFF-STREET/)
	{
		print $1,$3 " " $2 " Philadelphia PA",$4,$8,$9,$10,$11,$12,$13,$16;
	}
}