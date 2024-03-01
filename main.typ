#import "template.typ": *

// 让标题变成cv-blue
#show heading: set text(cv-blue)
// 项目具体描述的item设定
#set list(indent: 12pt, body-indent: 6pt)

// 个人信息
#show: project.with(name: "姓名")
#info(
  phone: [(+86) 155-5555-5555],
  email: link("username@gmail.com"),
  github: link("github.com/username"),
)

= 教育背景
#education(
  school: [华中科技大学],
  major: [职业：主播],
  degree: [本科],
  date: [2021 年 -- 2025 年],
  grade: [成绩：年级前 *50%*],
  English: [英语: CET-6],
)[]

= 专业技能
C/C++、Rust、Typst、Vue、React、JavaScript、TypeScript、CSS、Golang、Linux、Git、数据结构与算法、计算机网络


= 获奖情况
#prize(
  (
    (grade: [一等奖], game: [全国大学生数学建模竞赛], date: [2021 年 10 月 -- 2021 年 12 月]),
    (
      grade: [一个名字很长的奖项],
      game: [一个名字很长的软件开发大赛],
      date: [2021 年 10 月 -- 2021 年 12 月],
    ),
    (grade: [二等奖], game: [全国大学生数学建模竞赛], date: [2021 年 10 月 -- 2021 年 12 月]),
  ),
)
= 项目经历
#proj-exps(((
  name: [分布式流体计算项目],
  type: [导师项目],
  tech: [性能优化、并行计算、C/C++],
  date: [2021 年 02 月 -- 2021 年 04 月],
  description: [
    将一个单机的流体计算程序移植到*多机平台*
    - 计算节点内部使用 OpenMP 并行化
    - 计算节点间使用 MPI 并行化
    - 单机优化性能达 2x，多机接近线性加速比
  ],
), (
  name: [C--Compiler],
  type: [个人项目],
  tech: [性能优化、并行计算、C/C++],
  date: [2021 年 02 月 -- 2021 年 04 月],
  description: [
  实现了一个狗屁不通编译器
    - 支持C11标准大部分标准
    - 实现了类似 lex/flex 的词法解析器生成工具
    - 实现了类似 yacc/bison 的语法解析器生成工具
  ],
), (
  name: [UniqueStudio--SSO],
  type: [团队项目],
  tech: [golang、React、Typescript],
  date: [2022 年 06 月 -- 2022 年 09 月],
  description: [
    UniqueStudio单点登录系统和统一的权限控制系统
    - 按照 CAS 的标准实现
    - 支持手机、邮箱等多种登录方式
  ],
)
))
= 校园经历
#prize(((grade: [], game: [华中科技大学联创团队], date: [2020 年 09 月 -- 至今]),))
