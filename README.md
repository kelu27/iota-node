IOTA Headless Node
=========================

## Run
1. Create a file with all your neighbors IPs in the conf folder: `cat /$HOME/iota-node/conf/neighbors`
```
udp://neighbor:PORTXX
udp://other_neighbor:PORTXX
```

2. Run docker:
`docker run -d --name iota-node -p 14265:14265 -p 14777:14777/udp -p 15777:15777 -v /$HOME/iota-node/data:/iri/data -v /$HOME/iota-node/conf/neighbors:/iri/conf/neighbors --restart=always kelu27/iota-node`
