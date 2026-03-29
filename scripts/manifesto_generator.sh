#!/bin/bash
# manifesto_generator.sh - Generates a personal Open Source Manifesto
# Author: Samarth Prakash | Course: Open Source Software

echo "======================================"
echo "    Open Source Manifesto Generator"
echo "======================================"

echo -n "What is your main programming language? "
read language

echo -n "What is your favorite open source project? "
read project

echo -n "Why do you believe in open source? (e.g., it empowers people) "
read reason

output_file="my_manifesto.txt"

echo "--------------------------------------"
echo "Generating your manifesto..."
sleep 1 # adding a slight human delay

cat <<EOF > "$output_file"
My Open Source Manifesto
------------------------
As a developer who primarily writes in $language, I strongly support the open source movement.
Projects like $project inspire me to contribute and give back to the community.
I believe in open source because $reason. 
Through sharing knowledge and code, we can build a better technological future together.
EOF

echo "Done! Saved to $output_file"
echo ""
echo "Your Manifesto:"
echo "--------------------------------------"
cat "$output_file"
echo "======================================"
