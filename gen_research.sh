#!/bin/sh

outfile="research.html"

## Remove old file
rm $outfile

## Write header
cat >> $outfile << END
<html>
<head>
<title>Research</title>
</head>

<body BGCOLOR="#ffffff">
<center><h1>Research</h1></center>

<table width=80%>
<tr>

END

## Add sidebar
echo "<td valign=top BGCOLOR="#ffffff">" >> $outfile
cat src/sidebar.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Add body
echo "<td valign=top width=78%>" >> $outfile
cat src/research.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Write end
cat >> $outfile <<END
</body>
</html>
END


## Write subsidiary pages
seismology1="seismology1.html"
seismology2="seismology2.html"
oceanography1="oceanography1.html"
oceanography2="oceanography2.html"
engineering1="engineering1.html"

cat >> $seismology1 << END
<html>
<body>
END
echo "<td valign=top BGCOLOR="#ffffff">" >> $seismology1
cat src/seismology1.txt >> $seismology1
echo -e "</td>\n" >> $seismology1
cat >> $seismology1 << END
<a href="research.html">Back to Research...</a>
</body>
</html>
END

