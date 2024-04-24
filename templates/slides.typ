#import "/configs.typ"
#import "/utils/colors.typ"

#let leading(title, content) = context {
    let header = text(size: 2em, weight: 300, fill: colors.secondary.transparentize(20%), title)
    let decoration-color = colors.primary.transparentize(60%)

    place(
        center,
        box(width: configs.slide.width)[
            #set align(left)
            #let hline = pad(top: 2.5em, line(length: 100%, stroke: decoration-color))
            #let right-polygon = polygon(fill: decoration-color, (75%, 0em), (75% + 0.6em, -0.8em), (120%, -0.8em), (120%,  0em))

            #stack(dir: ltr, spacing: 1em)[
                #pad(top: 1em, line(length: 5em, stroke: decoration-color))
            ][
                #header
            ][
                #hline
                #hide(right-polygon)
            ]
            #pad(top: -measure(hline).height, right-polygon)
        ]
    )

    hide(header)
    v(0.5em)
    parbreak()
    box()

    content

    pagebreak()
}

#let normal(content) = {
    content
    pagebreak()
}
