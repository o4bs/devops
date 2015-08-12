## Security

### User
User should be given the most strict access control.
No password login is permitted.

### Data 
All important data should be put under `/opt/data/`, including backup, container volume, etc.


### iptables
Merge this part into your iptables rules.
```sh
*filter
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -i lo -j ACCEPT
-A INPUT -d 127.0.0.0/8 -i !lo -j REJECT --reject-with icmp-port-unreachable
-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT -m comment --comment "Allow Ping"
-A INPUT -p tcp --syn -m connlimit --connlimit-above 15 --connlimit-mask 32 -j REJECT --reject-with tcp-reset -m comment --comment "Limit 30 conns for each IP"
-A INPUT -p tcp -m state --state NEW -m multiport --dport 22,1337 -j ACCEPT -m comment --comment "Allow known services access"
-A INPUT -m limit --limit 10/min -j LOG --log-prefix "iptables denied: " --log-level 7 -m comment --comment "Log deny pkts"
-A INPUT -j REJECT --reject-with icmp-port-unreachable
-A FORWARD -j REJECT --reject-with icmp-port-unreachable
-A OUTPUT -j ACCEPT
COMMIT

```
