# ZombieJerky.Net Benchmarking Tool

I'm just teaching myself Ansible. I need it for work and I have no idea how to use it.
So I'm building something that I already understand for my own network.

## Install

Install Ansible. Create a Hosts file... yeah I think that's it...

## Host File

Something like this:
```
[allHosts]
hostname1
hostname2
hostname.domain.com
hostname.etc.com
```

## Run

To update remote systems AND install NodeJS, NPM, and Git:
```
./Update.yaml -i ${HostsFile}
```

To run benchmark:
```
./RunBenchmark.yaml -i ${HostsFile}
```
Results should be in the results dir. Should be easy enough to find...

