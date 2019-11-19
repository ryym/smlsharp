[smlsharp]: https://www.pllab.riec.tohoku.ac.jp/smlsharp/

A Docker image hosting the compiler and REPL of [SML#][smlsharp] on Ubuntu 16.04.

## Usage

### REPL

```bash
$ docker run --rm -it ryym/smlsharp
SML# 3.4.0 (2017-08-31 19:31:44 JST) for x86_64-pc-linux-gnu with LLVM 3.7.1
# 1 + 1;
val it = 2 : int
```

### Compile

```bash
$ docker run --rm -v "`pwd`":/work -w work ryym/smlsharp -o hello hello.sml
```


