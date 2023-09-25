# LLVM-lite

本科毕设项目的一部分

## 编译说明

### 编译环境

本地开发环境：
- g++ 12.2.0
- cmake 3.20

其中 gcc 需要支持 C++ 20。

### 编译命令

```shell
$ mkdir build && cd build
$ cmake ..
$ make -j8
```

在 `build` 目录下会构建出一个可执行文件 `llvm_lite`。

## 使用说明

```shell
./llvm_lite [-o output_file] [-a arg_file] [-Olevel]  input_file
```

- `-o`：输出文件，如果没有指定，默认输出到标准输出
- `-a`：输入的参数文件
- `-O`：优化级别（`-O0` 表示不开启优化，`-O1` 表示开启优化）

例如：

```shell
./llvm_lite -o conv2.out.s -a args_conv2.txt -O1 conv2_dynamic_65.s
```

## 测试用例

在 `testcase` 文件夹下有三组测试用例，每组测试用例都包含了输入文件和输入的参数文件。
