#import "/configs.typ"

#let bg(content) = context {
    let (x, y) = here().position()
    place(
        center,
        pad(top: -y, box(width: configs.slide.width, height: configs.slide.height, content))
    )
}

#let bgimage(src) = context {
    bg(image(width: configs.slide.width, height: configs.slide.height, src))
}
