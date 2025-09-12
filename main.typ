#import "@preview/touying:0.6.1": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))

#set text(font:"Liberation Sans")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [This is your brain on bugs],
    subtitle: [Co-development of the infant gut microbiome and the brain],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2025, month: 9, day: 18),
    institution: [Tufts Medical Center | GI division],
    logo: image("assets/lab_general/lab-logo-circle.png", width: 3em),
  ),
  config-colors(
    primary: rgb("#3172AE"),
    primary-light: rgb("#d6c6b7"),
    secondary: rgb("#23373b"),
    neutral-lightest: rgb("#fafafa"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#23373b"),
  )
)


#title-slide()

== Introspection - all about me

#figure(image("assets/lab_general/narcissus.jpg"), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])

== At the bench - small molecule inhibitors of T-cells

#slide[

- B.S. from UCSD in Biochemistry and Cell biology
- Postbac with Kerry Mowen - chemical inhibitors of
  protein arginine methyl-transferases (PRMTs)

][
  #pause
  #figure(
    image("assets/career_experimental/prmt-fig2b.png", width: 60%),
    )
    #pause
  #figure(
    image("assets/career_experimental/prmt-fig5b.png", width: 50%),
    )

]

== At the bench - Toll-like receptor signaling

#slide(composer: (50%, 50%))[
    - Investigation of the cell-biology of TIRAP,
      an adaptor protein
    - Established literature showed TIRAP was confined to the plasma membrane
      (eg TLR4, responding to LPS)
    - TIRAP KO macrophages could still respond with
      endosomal TLRs (eg TLR9, responding to CpG)

][
    #figure(
        image("assets/career_experimental/tlr-review-fig2.gif", width:67%)
    )
]

#slide[
    #figure(
        image("assets/career_experimental/cell-fig3e.png")
    )
    #text(11pt)[Bonham, _et. al._, _Cell_ (2014)]
]

#slide[
    #figure(
        image("assets/career_experimental/cell-fig4b.png")
    )
    #v(2em)
    #text(11pt)[Bonham, _et. al._, _Cell_ (2014)]
]

== Multi-'omics and Data Science - Human microbiome epidemiology

#slide[
    #v(1em)
    #figure(
        image("assets/career_experimental/arthritis-fig2.png", width: 100%)
    )
    #v(1.5em)

    #text(11pt)[Thompson, _et. al._, _Sci. Transl. Med._ (2023)]
]

#slide[
    #v(-1em)
    #figure(
        image("assets/career_experimental/arthritis-fig3.png", width: 73%)
    )

    #text(11pt)[Thompson, _et. al._, _Sci. Transl. Med._ (2023)]
]

= Introduction - bugs & brains

== The gut-brain-microbiome "axis"

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-1.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-2.png", width: 380pt)])

    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-3.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-4.png", width: 380pt)])
    (pause,)
    content((0, 0), [#image("assets/child_brain_microbiome/gut-brain-axis-5.png", width: 380pt)])
    }))
]

== The RESONANCE cohort of Child Development

#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig1.jpg", width: 760pt)], name:"fig")
        rect("fig.south-east", (0,4), fill:white, stroke: none)
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig1.jpg", width: 760pt)], name:"fig")
        })
    )

    #v(1em)
    #text(11pt)[Bonham, _et. al._, _Sci. Adv._ (2023)]
]

#slide[
   
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig3.jpg", width: 760pt)], name:"fig")
        rect("fig.south-east", (-3.8,4), fill:white, stroke: none)
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig3.jpg", width: 760pt)], name:"fig")
        })
    )

    #text(11pt)[Bonham, _et. al._, _Sci. Adv._ (2023)]
]


= Gut microbial species are associated with cognitive development


= Microbial neuroactive genes are associated with neural circuit development


= Future directions

// Add your new content here
== Ongoing Work

- Expanding cohort analyses
- Experimental validation
- Mechanistic studies

== Questions?

#figure(image("assets/lab_general/narcissus.jpg"), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])
