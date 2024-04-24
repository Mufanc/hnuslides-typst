#import "/configs.typ"
#import "/utils/colors.typ"
#import "/utils/fonts.typ": font
#import "/utils/background.typ": bg

#let count = counter("chapters")

#let image-1 = [
    #place(
        dx: 0%, dy: 18%,
        center + bottom, 
        image(width: 60%, "/assets/images/title-01.png")
    )
]

#let image-2 = [
    #place(
        dx: -1%, dy: 5%,
        left + bottom, 
        image(width: 56%, "/assets/images/title-02.png")
    )
]

#let image-3 = [
    #place(
        dx: -3%, dy: 0%,
        right + bottom, 
        image(width: 47%, "/assets/images/title-03.png")
    )
]

#let image-4 = [
    #place(
        dx: 2%, dy: 10%,
        center + bottom, 
        image(width: 60%, "/assets/images/title-04.png")
    )
]

#let image-select = context {
    let style = calc.rem(count.get().at(0), 4)
    if style == 0 {
        bg(image-1)
    } else if style == 1 {
        bg(image-2)
    } else if style == 2 {
        bg(image-3)
    } else {
        bg(image-4)
    }
}

#let title(title, description: "") = {
    set align(center)

    image-select
    count.step()

    v(25%)
    stack(dir: ltr, spacing: 3em)[
        // 计数超过 10 个 title 会出问题，但与此同时目录也会出问题，所以先不管（
        #let number = text(size: 6em, font: font.MSYH, fill: colors.primary)[
            #count.display("01")
        ]

        #number

        // 数字镂空效果，没想到啥好办法，用背景图遮一下
        #context {
            place(dy: -2em, box(
                width: measure(number).width, height: 1.2em, 
                fill: pattern(image("/assets/images/bg-common.png"))
            ))
        }
    ][
        #let no-desc = description.len() == 0

        #set align(if no-desc { center } else { left })
        #show heading: set text(
            size: if no-desc { 1.8em } else { 1.33em }, 
            font: font.HYSH
        )

        #let header = heading(level: 1, title) 
        #let line-color = colors.primary.transparentize(50%)

        #header <title>

        #if no-desc {
            v(-0.5em)
            context {
                line(length: measure(header).width + 2em, stroke: (paint: line-color, dash: "dashed"))
            }
        } else {
            line(length: 18em, stroke: line-color)
            v(-0.8em)
            text(font: font.FZKT, fill: colors.secondary.transparentize(25%), description)
        }
    ]

    pagebreak()
}
