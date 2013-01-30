#! /bin/bash
DIR= ~/git_repos/bash-scripts/dotfiles
ignore = ( scripts, backups, installer.sh )

cd $DIR
for filename in *
do
	shouldIgnore=false
	for ignorename in ${ignore[@]}
	do
		if [[ $filename == $ignorename ]]
		then
			shouldIgnore=true
		fi
	done
	
	if [ $shouldIgnore == false -a ! -L ~/.$filename ]
	then
		ln -s $DIR/$filename ~/.$filename
	fi
done
