#!/bin/bash 

MYSITE='http://example.com';
wget -nv -r --spider $MYSITE 2>&1 | egrep ' URL:' | awk '{print $3}' | sed "s@URL:${MYSITE}@@g"


<<SAMPLE_OUTPUT
2015-03-07 00:35:31 URL:http://www.yqrlsb.com/forum.php?mod=viewthread&tid=2432 [24557/24557] -> "www.yqrlsb.com/forum.php?mod=viewthread&tid=2432" [1]
2015-03-07 00:35:32 URL:http://www.yqrlsb.com/forum.php?mod=viewthread&tid=1596 [25075/25075] -> "www.yqrlsb.com/forum.php?mod=viewthread&tid=1596" [1]
SAMPLE_OUTPUT
