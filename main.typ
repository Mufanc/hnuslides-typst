#import "/configs.typ"
#import "/utils/colors.typ"

// - 全局样式 - //

// 页面设置
#set page(width: configs.slide.width, height: configs.slide.height)
#set page(margin: configs.slide.margin)

// 页面背景
#set page(background: box(
    width: configs.slide.width, 
    height: configs.slide.height, 
    fill: pattern(image("/assets/images/bg-common.png"))
))

// 默认字体
#set text(size: 12pt, font: ("Noto Sans SC", "Open Sans", "Noto Color Emoji"), fill: colors.secondary)

// 标题样式
#show heading.where(level: 1): set text(size: 1.5em, weight: 300)
#show heading.where(level: 2): set text(size: 1.2em, weight: 500)

// 段落
#set par(leading: 1.2em, justify: true)

// - 导入各种模板 - //
#import "templates/cover.typ": cover
#import "templates/catalog.typ": catalog
#import "templates/title.typ": title
#import "templates/slides.typ"
#import "templates/end.typ": end

// - 幻灯片内容 - //

// 封面
#cover("移植自「古风湖大」PPT 模板", "主题汇报", "汇报人：小湖")

// 目录
#catalog()

// 正文
#title("麓山巍巍", description: "你可以在这里添加一行描述信息")

#slides.leading("带样式的大标题")[
    - 这是一张带有大标题的幻灯片

    - 这是一张带有大标题的幻灯片

    == 小标题

    #v(0.5em)

    #lorem(100)
]

#slides.normal[
    = 也可以用普通标题

    #v(1em)

    - 这是一张普通标题幻灯片

    - 这是一张普通标题幻灯片

    == 二级标题

    === 三级标题

    #v(0.5em)

    #lorem(80)
]

#title("湘水泱泱", description: "你可以在这里添加一行描述信息")

#title("宏开学府", description: "你可以在这里添加一行描述信息")

#title("济济沧沧", description: "你可以在这里添加一行描述信息")

// 尾页
#end
