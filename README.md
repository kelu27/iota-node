IOTA Headless Node
=========================

## Run
1. Create a file with all your neighbors IPs in the conf folder: `cat /$HOME/iota-node/conf/neighbors.txt`
```
udp://neighbor:PORTXX
udp://other_neighbor:PORTXX
```

2. Run docker:
```
docker run -d --net host --name iota-node -p 14265:14265 -p 14777:14777/udp -p 15777:15777 -v /$HOME/iota-node/data:/iri/data -v /$HOME/iota-node/conf/neighbors.txt:/iri/conf/neighbors.txt --restart=always kelu27/iota-node
```
