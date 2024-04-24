#import "/utils/background.typ": bgimage
#import "/utils/fonts.typ": font

#let end = {
    bgimage("/assets/images/bg-end.png")

    set align(center + horizon)

    text(size: 3em, font: font.HYYK, tracking: 1.5em, "谢谢观赏")
    v(-1.5em)
    text(size: 1.8em, font: font.KABEL, tracking: 0.25em, "THANKS FOR WATCHING")
}
