#import "/utils/background.typ": bg

#let image-1 = [
    #place(
        dx: -5%, dy: -11%,
        left + bottom, 
        image(width: 60%, "/assets/images/decoration-01.png")
    )
]

#let image-2 = [
    #place(
        dx: 14%, dy: 27.5%,
        right + bottom, 
        image(width: 70%, "/assets/images/decoration-02.png")
    )
]

#let image-3 = [
    #place(
        dx: 0%, dy: 5.5%,
        left + bottom, 
        image(width: 37.5%, "/assets/images/decoration-03.png")
    )
]

#let image-4 = [
    #place(
        dx: 8%, dy: 3%,
        right + bottom, 
        image(width: 56%, "/assets/images/decoration-04.png")
    )
]

#let image-5 = [
    #place(
        dx: -2%, dy: 5%,
        right + horizon, 
        image(width: 54%, "/assets/images/decoration-05.png")
    )
]

#let decoration(type) = {
    if type == 1 {
        bg(image-1)
    } else if type == 2 {
        bg(image-2)
    } else if type == 3 {
        bg(image-3)
    } else if type == 4 {
        bg(image-4)
    } else if type == 5 {
        bg(image-5)
    } else {
        text(size: 1.5em, weight: 900, "!! NOT IMPLEMENTED !!")
    }
}