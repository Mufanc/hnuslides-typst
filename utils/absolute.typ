#let absolute(..args, content) = {
    let kwargs = args.named()

    let ralign = none
    let rpad = pad

    if "l" in kwargs {
        ralign += left
        rpad = rpad.with(top: kwargs.l)
    }

    if "r" in kwargs {
        ralign += right
        rpad = rpad.with(right: kwargs.r)
    }

    if "t" in kwargs {
        ralign += top
        rpad = rpad.with(top: kwargs.t)
    }

    if "b" in kwargs {
        ralign += bottom
        rpad = rpad.with(bottom: kwargs.b)
    }

    place(ralign, rpad(content))
}
