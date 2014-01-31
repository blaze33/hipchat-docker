build:
	docker build -t hipchat .

run:
	(docker run -p $(PORT):22 -v /home/$(USER)/:/root/data hipchat &)

ssh:
	sleep 3
	ssh -X root@localhost -p $(PORT) hipchat

hipchat: run ssh
