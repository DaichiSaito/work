## Ruby version
- 2.7.2

## 環境構築

```
$ bundle install
```

## 実行方法

### ベーシック
```shell
$ ruby main.rb
start RubyBasicStrategy ...
取り出されたのは: 230
処理時間は: 4.8999907448887825e-05
end RubyBasicStrategy
start GorigoriStrategy ...
取り出されたのは: 230
処理時間は: 0.0002869999734684825
end GorigoriStrategy
```

### オプショナル
引数を渡すことで1000以外の配列も作れるようにしてみた。

```
$ ruby main.rb 50000
start RubyBasicStrategy ...
取り出されたのは: 4334
処理時間は: 0.002957999939098954
end RubyBasicStrategy
start GorigoriStrategy ...
取り出されたのは: 4334
処理時間は: 0.014801000012084842
end GorigoriStrategy
```

## テスト

```
$ rspec
```
