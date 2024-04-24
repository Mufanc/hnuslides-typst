#import "/configs.typ"
#import "/utils/colors.typ"
#import "/utils/fonts.typ": font
#import "/utils/background.typ": bgimage

#let catalog() = context {
    bgimage("/assets/images/bg-catalog-2.png")

    let headers = query(<title>)
    let count = counter("catalog")

    count.update(1)

    let items = headers.map(hdr => context {
        count.step()

        let index = count.display("壹")

        // Typst 似乎尚不支持透明渐变，暂时使用与背景接近的颜色 dirty fix
        // 待 https://github.com/typst/typst/issues/2546 解决后，还需要将括号透明度改为 50%
        let background-color = rgb(235, 231, 222)
        let paren-color = color.mix(
            colors.primary, background-color,
            space: rgb  // 在 rgb 空间混合 primary-color 与背景色来模拟透明度
        )

        let steps = 5
        let border-color = gradient.linear(paren-color, ..(background-color,) * (steps - 2), paren-color).sharp(steps)

        let number = pad(top: -0.2em, text(font: font.HYZK, fill: colors.primary, index))

        box(
            width: 2em, height: 2em, 
            baseline: (100% - measure(number).height) / 2,
            stroke: 1pt + border-color, 
            radius: 0.5em,
            align(center + horizon, number)
        )

        h(0.8em)
        text(font: font.FZKT, hdr.body)
    })

    set text(size: 1.5em)
    show table.cell: cell => box(width: 100%, height: 100%, align(left + horizon, cell))

    pad(left: 10%, box(
        width: 80%, height: 60%, 
        table(columns: (1fr, 1fr), rows: 1fr, stroke: none, ..items)
    ))

    pagebreak()
}
