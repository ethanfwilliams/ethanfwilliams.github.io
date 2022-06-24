#!/bin/sh

outfile="publications.html"

## Remove old file
rm $outfile

## Write header
cat >> $outfile << END
<html>
<head>
<title>Publications</title>
</head>

<body BGCOLOR="#d0ece7">
<center><h1>Publications</h1></center>

<table width=80%>
<tr>

END

## Add sidebar
echo "<td valign=top>" >> $outfile
cat src/sidebar.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Add body
echo "<td valign=top width=78%>" >> $outfile
cat src/publications.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Write end
cat >> $outfile <<END
</body>
</html>
END

