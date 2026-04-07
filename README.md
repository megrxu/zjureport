# 浙江大学实验报告模板

![status](https://github.com/megrxu/zju-report-latex-template/workflows/Build/badge.svg)

适用于浙江大学本科生的实验报告 LaTeX 模板。

由于浙江大学近来更改了其[整体视效设计](https://www.zju.edu.cn/xxbs/list.htm)，包括“浙江大学”四字，本模板采用了最新的版本，因此可能和课程中老师提供的 Microsoft Word 模板中的图案有细微区别。

案例及使用说明请看仓库目录下的 `zjureport-example.pdf` 和 `zjureport.pdf`。

## 使用

可直接拷贝 `zjureport.cls` ，参考 `zjureport-example.tex` 中的示例代码编写文档。

## 从 `dtx` 编译 `cls` 和示例文件

1. **提取核心文件**（使用 `xetex` 避免中文乱码）：
   ```bash
   xetex zjureport.ins
   ```
   *执行后将生成宏包 `zjureport.cls` 和示例文件 `zjureport-example.tex`。*

2. **编译查看效果**：
   ```bash
   xelatex zjureport-example.tex
   ```
