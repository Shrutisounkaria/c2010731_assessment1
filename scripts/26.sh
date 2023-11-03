#!/bin/bash
awk -F ',' 'NR>1 {print $3, $8}' /home/student/assessment_1/data/25data.txt | sort -t, -k1,1n -k2,2 | head -5 | awk '{print $2}' > /home/student/assessment_1/results/26_results.txt
