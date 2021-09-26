# vagrant-ceph

vagrantでcephクラスタを作成

- cephノード x 3
- クライアント x 1

## 必要なもの

- Vagrant

```
$ brew cask install vagrant virtualbox virtualbox-extension-pack
```

- vagrant-hostmanager
  - Vagrantで作成したVM間およびホストマシンで名前解決を可能にする

## 使い方

```
$ git clone https://github.com/kun432/vagrant-ceph.git
$ cd vagrant-ceph
$ vagrant up
```

あとは以下を参照
https://kun432.hatenablog.com/entry/vagrant-ceph

