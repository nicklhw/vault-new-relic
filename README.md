# Vault Telemetry & Audit Device Log Monitoring with New Relic

**This repo is for demo purposes and the steps detailed are not meant for production use.**

## Prerequisites

* [Vagrant](https://www.vagrantup.com/downloads) installed 
* Sign up for New Relic ONE and obtain your account ID and license keys

## Quick Start

1. Export environment variables

```shell
export NR_ACCOUNT_ID=<NEW RELIC ACCOUNT ID>
export NR_LICENSE_KEY=<NEW RELIC LICENSE KEY>
export NR_USER_API_KEY=<NEW RELIC USER API KEY>
```

3. Start up Vagrant box

```shell
vagrant up v6
```

3. Login to New Relic Dashboard

4. Check that Vault is up and running by logging in at `http://localhost:8200`. The root token is located in
   the file `vault-conf/keys.json`.

5. Generate some sample Vault KV requests by running `generate_secrets_v1.sh`.

```shell
vagrant ssh v6
sudo su
cd /vagrant/vault-conf
./generate_secrets_v1.sh
```

6. After a few minutes, you should start to see data populated on the dashboard in the HashiCorp Vault app.

## Clean up

1. `vagrant destroy`

## Resources

- [New Relic Statsd Integration](https://docs.newrelic.com/docs/infrastructure/host-integrations/host-integrations-list/statsd-monitoring-integration-version-2/#kubernetes)
- [New Relic Fluentd Integration](https://docs.newrelic.com/docs/logs/forward-logs/fluentd-plugin-log-forwarding/)
