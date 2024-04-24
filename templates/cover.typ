#import "/configs.typ"
#import "/utils/colors.typ"
#import "/utils/fonts.typ": font
#import "/utils/background.typ": bgimage

#let square-block(content) = {
    let font-size = 35pt
    let square-size = font-size * 1.2

    let frame-color = colors.primary.transparentize(40%)
    let frame = pattern(size: (square-size, square-size))[
        #place(
            line(start: (0%, 50%), end: (100%, 50%), 
            stroke: (paint: frame-color, thickness: 1pt, dash: "dashed"))
        )
        #place(
            line(start: (50%, 0%), end: (50%, 100%), 
            stroke: (paint: frame-color, thickness: 1pt, dash: "dashed"))
        )
    ]

    set text(font: font.GYGK, size: font-size, fill: colors.primary)
    show regex("."): ch => {
        box(
            width: square-size, height: square-size,
            fill: frame, 
            stroke: 1pt + frame-color, 
            place(center + horizon, ch)
        )
        h(0.2em)
    }

    content
}

#let cover(annotation, title, presenter) = {
    bgimage("/assets/images/bg-cover.png")

    place(bottom, dy: -25%)[
        #text(fill: colors.primary,annotation)
        #v(-2.5em)
        #square-block(text(title))
        #v(-2.5em)
        #text(font: font.FZKT, presenter)
    ]

    pagebreak()
}
