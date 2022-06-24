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

<body>
<center><h1>Ethan Williams's Home Page</h1></center>

<table width=80%>
<tr>

END

## Add sidebar
cat sidebar.txt >> $outfile 


## Write end
cat >> $outfile <<END

</body>
</html>
END

