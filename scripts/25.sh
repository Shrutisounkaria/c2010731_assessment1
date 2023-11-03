#!/bin/bash
awk -F ',' 'NR>1 {print $3, $8}' /home/student/assessment_1/data/25data.txt | sort -k1,1nr -k2,2 | head -5 | awk '{print $2}' > /home/student/assessment_1/results/25_results.txt
