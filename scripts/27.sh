#!/bin/bash
awk -F ',' 'NR>1 {print $3, $7}' /home/student/assessment_1/data/25data.txt | sort -t, -k1,1n -k2,2 | head -5 | awk '{print $2}' > /home/student/assessment_1/results/27_pvalues.txt
awk -F ',' 'NR>1 {print $3, $7}' /home/student/assessment_1/data/25data.txt | sort -k1,1nr -k2,2 | head -5 | awk '{print $2}' >> /home/student/assessment_1/results/27_pvalues.txt
echo  "Number of values with P < 0.05" >> /home/student/assessment_1/results/27_results.txt
awk '$1 < 0.05 {count++} END {print count}' /home/student/assessment_1/results/27_pvalues.txt >> /home/student/assessment_1/results/27_results.txt
