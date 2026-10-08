#!/bin/sh
# The contact form posts XML that the server parses and echoes back.
set -e
curl -fsS -H 'Content-Type: application/xml' --data "<contact><name>probe$$</name><email>a@b.c</email><subject>s</subject><message>m</message></contact>" http://app/contact.php | grep -q "Thanks for the message, probe$$"
