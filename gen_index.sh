#!/bin/sh

outfile="index.html"

## Remove old file
rm $outfile

## Write header
cat >> $outfile << END
<html>
<head>
<title>Ethan Williams's Home Page</title>
</head>

<body BGCOLOR="#ffffff">
<center><h1>Ethan Williams's Home Page</h1></center>

<table width=80%>
<tr>

END

## Add sidebar
echo "<td valign=top>" >> $outfile
cat src/sidebar.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Add body
echo "<td valign=top width=78%>" >> $outfile
cat src/index.txt >> $outfile
echo -e "</td>\n" >> $outfile

## Add figure
#<figure style="width:600px;">
#        <img src="noisePDF_convert.png" width=600 vspace=20>
#        <figcaption><i>(LEFT)</i> PDF of noise spectra on one channel of Caltech's Pasadena DAS array over three weeks. <i>(RIGHT)</i> Earthquake spectra observed on the same channel, compared with the median noise spectrum and nearby broadband PASC.</figcaption>
#</figure>


## Write end
cat >> $outfile <<END
</body>
</html>
END

