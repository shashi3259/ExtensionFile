
touch 1.txt 2.txt 3.txt 5.pdf 6.pdf 7.pdf 8.mp3 9.mp3 10.mp3
for i in `ls *.txt`
do
my=`echo $i | awk -F. '{print $2}'`;
	for j in `ls *.mp3`
	do
	music=`echo $j | awk -F. '{print $2}'`;
	mkdir $music

		for j in `ls *.mp3`
		do
		cp $j $music
		done

	break
	done
        	for file in `ls *.pdf`
        	do
        	doc=`echo $file | awk -F. '{print $2}'`;
       	 	mkdir $doc

        		for file in `ls *.pdf`
        		do
        		cp $file $doc
        		done

        	break
      		done

mkdir $my
for i in `ls *.txt`
do
cp $i $my
done

break
done
