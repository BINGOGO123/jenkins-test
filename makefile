a.txt: Jenkinsfile
	type Jenkinsfile > a.txt

.PHONY: clean test deploy
clean:
	del a.txt

test:
	type a.txt

deploy:
	echo deploy