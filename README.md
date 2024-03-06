# uniquecv-typst

> 一个使用 [Typst](https://typst.app/) 编写的简历模板，基于 [uniquecv](https://github.com/dyinnz/uniquecv)


## 使用

### 在线

Typst提供了非常好用的 [webapp](https://typst.app) 
- 创建 project 
- 复制 main.typ 和 template.typ 到项目目录
- 在线编译

### 本地

- 安装 Typst

  - macOS/Linux: `brew install typst`
  - Arch Linux: `pacman -S typst`

- 安装图标字体 fontawesome（可参考 [install-the-fonts](https://github.com/typst/packages/tree/main/packages/preview/fontawesome/0.1.0#install-the-fonts) ）

- clone 本仓库

- 编译（可参考[官方 Usage ](https://github.com/typst/typst)）

  ```
  typst compile path/to/main.typ path/to/output.pdf
  ```

### 效果

![效果图](https://github.com/gaoachao/uniquecv-typst/raw/main/image.png)

## 友情链接

- [uniquecv-latex](https://github.com/dyinnz/uniquecv)
- [werifu: HUST-typst-template](https://github.com/werifu/HUST-typst-template)
- [mgt: typst-preview-vscode](https://github.com/Enter-tainer/typst-preview-vscode)
