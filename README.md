# sixteen

A 16shop tracker.

## features

- [x] Setting check (via API)
- [x] Config check (`/.config`)
- [x] Admin panel check
- [x] Expired key check
- [x] Opendir kit check

## prerequisite

- Ruby: `-> 2.5`

## install

```sh
git clone https://github.com/ninoseki/sixteen
cd sixteen
bundle
```

## usage

### check a given domain

```sh
bundle exec exe/check DOMAIN
```

### check recent suspiciouis URLs

```sh
bundle exec exe/monitor
```
