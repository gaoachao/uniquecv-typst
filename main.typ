#import "template.typ": *

// 让标题变成cvBlue
#show heading: set text(cvBlue)
// 项目具体描述的item设定
#set list(indent:12pt,body-indent:6pt)

// 个人信息
#show: project.with(
  name: "姓名",
)
#info(
  phone:"(+86) 155-5555-5555",
  email:"username@gmail.com",
  github:"github.com/username"
)


= 教育背景
#line(length: 100%,stroke:0.7pt+cvBlue)
#education(
  school:"华中科技大学",
  major:"软件工程",
  degree:"本科",
  date:"2021 年 – 2025 年",
  grade:"成绩：年级前 50%",
  English:"英语: CET-6"
)[]

//#date()[2021 年 – 2025 年]


= 专业技能
#line(length: 100%,stroke:0.7pt+cvBlue)
#text("C/C++、Rust、Typst、Vue、React、JavaScript、TypeScript、CSS、Golang、Linux、Git、数据结构与算法、计算机网络")


= 获奖情况
#line(length: 100%,stroke:0.7pt+cvBlue)
#prize(
  grade:"一等奖",
  game:"XXX应用开发大赛",
  date:"2021 年 04 月 – 2021 年 05 月"
)[]
#prize(
  grade:"一个名字很长的奖项",
  game:"一个名字很长的软件开发大赛",
  date:"2021 年 10 月 – 2021 年 12 月"
)[]
#prize(
  grade:"300分",
  game:"CCF计算机软件能力认证",
  date:"2022 年 07 月 – 2022 年 08 月"
)[]


= 项目经历
#line(length: 100%,stroke:0.7pt+cvBlue)
#projectExp(
  name:"分布式流体计算项目",
  type:"导师项目",
  tech:"性能优化、并行计算、C/C++",
  description:"将一个单机的流体计算程序移植到多机平台",
  date:"2021 年 02 月 – 2021 年 04 月",
)[  
  #list(
    [计算节点内部使用 OpenMP 并行化],
    [计算节点间使用 MPI 并行化],
    [单机优化性能达 2x，多机接近线性加速比] 
  )
]
#projectExp(
  name:"C-Compiler",
  type:"个人项目",
  tech:"编译技术、C++",
  description:"使用C++实现了一个简单C语言编译器，支持生成到目标代码",
  date:"2021 年 07 月 – 2021 年 10 月",
)[  
  #list(
    text[支持C11标准大部分标准],
    text[实现了类似 lex/flex 的词法解析器生成工具],
    text[实现了类似 yacc/bison 的语法解析器生成工具],
  )
]
#projectExp(
  name:"UniqueStudio-SSO",
  type:"团队项目",
  tech:"golang、React、Typescript",
  description:"UniqueStudio单点登录系统和统一的权限控制系统",
  date:"2022 年 06 月 – 2022 年 09 月",
)[  
  #list(
    text[按照 CAS 的标准实现],
    text[支持手机、邮箱等多种登录方式],
  )
]


= 校园经历
#line(length: 100%,stroke:0.7pt+cvBlue)
#schoolExp(
  team:"华中科技大学联创团队",
  date:"2020 年 09 月 – 至今"
)             
