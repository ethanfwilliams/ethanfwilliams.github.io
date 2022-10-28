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

cat > $seismology1 << END
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

cat > $seismology2 << END
<html>
<body>
END
echo "<td valign=top BGCOLOR="#ffffff">" >> $seismology2
cat src/seismology2.txt >> $seismology2
echo -e "</td>\n" >> $seismology2
cat >> $seismology2 << END
<a href="research.html">Back to Research...</a>
</body>
</html>
END

cat > $oceanography1 << END
<html>
<body>
END
echo "<td valign=top BGCOLOR="#ffffff">" >> $oceanography1
cat src/oceanography1.txt >> $oceanography1
echo -e "</td>\n" >> $oceanography1
cat >> $oceanography1 << END
<a href="research.html">Back to Research...</a>
</body>
</html>
END

cat > $oceanography2 << END
<html>
<body>
END
echo "<td valign=top BGCOLOR="#ffffff">" >> $oceanography2
cat src/oceanography2.txt >> $oceanography2
echo -e "</td>\n" >> $oceanography2
cat >> $oceanography2 << END
<a href="research.html">Back to Research...</a>
</body>
</html>
END

cat > $engineering1 << END
<html>
<body>
END
echo "<td valign=top BGCOLOR="#ffffff">" >> $engineering1
cat src/engineering1.txt >> $engineering1
echo -e "</td>\n" >> $engineering1
cat >> $engineering1 << END
<a href="research.html">Back to Research...</a>
</body>
</html>
END



