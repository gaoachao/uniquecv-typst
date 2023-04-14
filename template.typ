// 小标题的蓝色
#let cvBlue = rgb(56,115,192)
// 日期的灰色
#let gray = rgb(128,128,128)


#let project(
  name: "",
  body
) = {
  // 标题
  set document(title: name)
  // 页边距设定
  set page(paper: "a4", numbering: "1",margin: (
    top: 2cm,
    bottom: 2.5cm,
    left: 2.5cm,
    right: 2.5cm
  ))
  // set text(font: "Linux Libertine", lang: "zh")
  set text(font: "Noto Serif CJK SC");
 
  // 设置标题（名字）字体
  align(center)[
    #block(text(weight: 345, 2.4em, name))
  ]
  // Main body.
  set par(justify: true)
  
  body
}

// 日期
#let dateFn(y:"",body) = {
  set text(
    font:"Noto Serif" ,
    fill:gray,
    size:0.86em,
    weight: 350
  )
  place(
    end,
    body
  )
}

// 个人信息
#let info(
  phone:"",
  email:"",
  github:""
) = {
   set align(center)
   set text(font: "Noto Serif Balinese",size:1.16em,weight: 450)
   set box(baseline: 2pt)
   box(
    height: 11pt,
    image("./phone-solid.svg")
   )
   h(3pt)
   phone
   h(5pt)
   `·`
   h(5pt)
   box(
    height: 11pt,
    image("./envelope-solid.svg")
   )
   h(3pt)
   email
   h(5pt)
   `·`
   h(5pt)
   box(
    height: 11pt,
    image("./github.svg")
   )
   h(3pt)
   github
}

// 教育背景
#let education(
  school:"",
  major:"",
  degree:"",
  date:"",
  grade:"",
  English:"",
  body
) = {
  dateFn[#date]
  set par(leading: 0.9em)
  set text(font: "Noto Serif CJK SC",size:0.95em,weight: 400)
  text[
    #strong(delta:280, school) 
    #h(10pt)#major
    #h(10pt)#degree 
    #linebreak() 
    #grade
    #h(10pt)#English 
  ]
  body
}

// 获奖情况（单个可复用）
#let prize(
  grade:"",
  game:"",
  date:"",
  body
) = {
  dateFn[#date]
  set text(font: "Noto Serif CJK SC",size:0.95em,weight: 400)
  text[
    // 用#bo来保证间距不随内容变化
    #box(width:150pt)[#strong(delta:280, grade)]
    #box(width:150pt)[#strong(delta:280, game)]
  ]
}


// 项目经历
#let projectExp(
  name:"",
  type:"",
  tech:"",
  date:"",
  description:"",
  body
) = {
  dateFn[#date]
  set par(leading: 0.95em)
  set text(font:("Noto Serif","Noto Serif CJK SC"),style:"italic",size:0.95em,weight: 400,tracking:0.2pt)
  text[
    // 用#bo来保证间距不随内容变化
    #box(width:150pt)[#strong(delta:280, name)]
    #box(width:120pt)[#strong(delta:280, type)]
  ]
  linebreak() 
  text(font:"Noto Serif",style:"italic",weight: 250)[#tech]
  linebreak() 
  text[#description]
  body
}


// 校园经历
#let schoolExp(
  team:"",
  date:""
) = {
   set text(font: "Noto Serif CJK SC",size:0.95em,weight: 400)
   dateFn[#date]
   text[#strong(delta:280, team)]
}