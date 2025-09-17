#import "@preview/touying:0.6.1": *
#import themes.metropolis: *
#import "@preview/cetz:0.4.2"
#import "@preview/fontawesome:0.6.0": *

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))

#set text(font:"Liberation Sans")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [
      This is your brain on bugs #h(6em)
      #box(baseline:1em, [
        #image("assets/lab_general/lab-logo-banner.png", width: 8em)
      ])
    ],
    subtitle: [Co-development of the infant gut microbiome and the brain],
    author: [Kevin Bonham, PhD],
    date: datetime(year: 2025, month: 9, day: 18),
    institution: [GSBS MMB Seminar],
  ),
  config-colors(
    primary: rgb("#3172AE"),
    primary-light: rgb("#d6c6b7"),
    secondary: rgb("#23373b"),
    neutral-lightest: rgb("#ffffff"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#23373b"),
  ),
)

#title-slide()

== Outline

#slide[
  #set text(24pt)
  - My Background - Bench to desk
  - Story 1: Gut microbiome and brain development
  - Story 2: Salt tolerance in _B. infantis_
  - The future
]

= All about me

#figure(image("assets/lab_general/narcissus.jpg",), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])

== At the bench - Biochemistry and cell-biology of the immune system

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/prmt-fig2b.png", width: 250pt)
      )]
    )
    content((0,3.2), [2006-2008])
    (pause,)
    content((1, -1.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/prmt-fig5b.png", width: 250pt)
      )]
    )
    (pause,)

    content((10,3.5), [2008-2014 (PhD)])
    content((10, -1.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/tlr-review-fig2.gif", width: 180pt)
      )]
    )
    (pause,)
    content((14, 0.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/cell-fig3e.png",width:300pt)
      )]
    )
    (pause,)
    content((15, -3.5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/cell-fig4b.png",width:400pt)
      )]
    )
  }))
]


== Transition to computing - Cheese HGT

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,3.1),[2014-2017])
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/cheese-fig1.jpg", width:  550pt)
      )]
    )
    (pause,)
    content((-4,-4),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1a.png", width: 200pt)
      )]
    )
    (pause,)
    content((0.4,-4),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1ab.png", width: 452pt)
      )]
    )
    (pause,)
    content((4,-5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig3a.jpg", width: 450pt)
      )]
    )
  }
  )
)]

== Expanding computing - Human microbiome epidemiology

#slide[
  #set text(18pt)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,1.2),[2014-2017])
    content((0, 0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/cheese-fig1.jpg", width:  150pt)
      )]
    )
    content((0,-2.3),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig1ab.png", width: 152pt)
      )]
    )
    
    content((0,-5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/cheese_hgt/elife-fig3a.jpg", width: 150pt)
      )]
    )

    content((14,3.4),[2017-2019])
    content((14,0),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/arthritis-fig2.png", width: 600pt)
      )]
    )
    (pause,)
    content((15,-5),
      [#box(stroke:1pt, inset:3pt, fill:white,
        image("assets/career_experimental/arthritis-fig3.png", width: 550pt)
      )]
    )

  }
))]

== Outline

#slide[
  #set text(24pt)
  - My Background - Bench to desk
  - *Story 1: Gut microbiome and brain development*
  - Story 2: Salt tolerance in _B. infantis_
  - The future
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
        content((-10,-5), text(14pt)[Bonham, _et. al._, _Sci. Adv._ (2023)])
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig1.jpg", width: 760pt)], name:"fig")
        rect("fig.south-east", (0,4), fill:white, stroke: none)
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig1.jpg", width: 760pt)], name:"fig")
        })
    )

    #v(1em)
]

#focus-slide[
  Only 7 species were significantly associated with cognitive development
  using "traditional" linear models
]



#slide[
   
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((-10,-5), text(14pt)[Bonham, _et. al._, _Sci. Adv._ (2023)])
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig3.jpg", width: 760pt)], name:"fig")
        rect("fig.south-east", (-3.8,4), fill:white, stroke: none)
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fig3.jpg", width: 760pt)], name:"fig")
        })
    )
]


== ML also identifies microbes associated with brain structure

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), image("assets/child_brain_microbiome/resonance-fig4.jpg",
                            width: 615pt), name:"fig")
        content((-7,-6.6), text(14pt)[Bonham, _et. al._, _Sci. Adv._ (2023)])
        })
    )
]

== The Khula study of child development

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/khula_africa.png", width: 321pt)], name:"fig")
        content((-3.5,-6), [  #text(10pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")
        (pause,)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-cohort.png", width: 304pt)], name:"fig2")
        (pause,)
        rect("fig2.south-east", (5.8,5), fill:white, stroke: none)
        content((13, 0), [#image("assets/child_brain_microbiome/khula-longitudinal.png", width: 284pt)], name:"fig")
        })
    )
    #v(-1em)
]

== Visual evoked potential is a measure of brain development

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/michaleeg.png", width: 250pt)], name:"fig")
        content((-1.5,-6), [  #text(10pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")
        (pause,)
        content((9, 0), [#image("assets/child_brain_microbiome/vep_peaks.png", width: 230pt)], name:"fig")
        (pause,)
        content((18, 0), [#image("assets/child_brain_microbiome/vep_peaks_icons.png", width: 230pt)], name:"fig")
        })
    )

]

== Gene set enrichment analysis makes use of full metagenome

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fsea-1.png", width: 425pt)], name:"fig")
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fsea-2.png", width: 425pt)], name:"fig")
        (pause,)
        content((0, 0), [#image("assets/child_brain_microbiome/resonance-fsea-3.png", width: 425pt)], name:"fig")
            })
    )

]

== Microbial genes are associated with VEP development

#slide[
#v(1em)
#figure(image("assets/child_brain_microbiome/eeg-enrichments.png", width: 600pt))
#text(10pt)[Bonham, _et. al._, _mBio_ (2025)]
]

#slide[
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((-9.5,-8), [  #text(10pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")

        content((0, 0), [#image("assets/child_brain_microbiome/concurrent_volcano.png", width: 673pt)], name:"fig")
        content((0, -6), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")

            })
    )

]

#slide[

#figure(image("assets/child_brain_microbiome/fsea-futures.png", width: 600pt))
#v(-1em)
#text(10pt)[Bonham, _et. al._, _mBio_ (2025)]
]

#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/child_brain_microbiome/future_volcano.png", width: 673pt)], name:"fig")
        content((0, -4), [#image("assets/child_brain_microbiome/geneset-keys.png", width: 250pt)], name:"fig")
        content((-9.5,-8), [  #text(10pt)[Bonham, _et. al._, _mBio_ (2025)]], name:"cite")

            })
    )

]

== Outline

#slide[
  #set text(24pt)
  - My Background - Bench to desk
  - Story 1: Gut microbiome and brain development
  - *Story 2: Salt tolerance in _B. infantis_*
  - The future
]

= Salt tolerance in _Bifidobacterium longum_ subsp. _infantis_

== Humans have evolved to feed the infant microbiome

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-1.png", width: 650pt)])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-2.png", width: 650pt)])

    content((0, 0), [#image("assets/binfantis/evo-breastmilk-3.png", width: 650pt)])
    (pause,)
    content((0, 0), [#image("assets/binfantis/evo-breastmilk-4.png", width: 650pt)])
    (pause,)
    content((7, -1), [#image("assets/binfantis/evo-breastmilk-5.2.png", width: 120pt)])
    content((2, -1), [#image("assets/binfantis/evo-breastmilk-6.2.png", width: 180pt)])
    (pause,)
    content((0,0),
      box(stroke:1pt, inset:17pt, fill:white,text(red, 36pt)[
        Humans can't digest HMOs!
      ]), angle:20deg)
    }))
]

== _B. infantis_ is a specialized HMO metabolizer

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/binfantis/tso-fig2-small.jpg", width: 650pt)])
    content((8,-6), text(14pt)[Tso,Bonham _et. al._, 2018])
    }))
]


== _B. infantis_ is in decline in Industrialized societies

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), image("assets/binfantis/sonnenberg-2.png", width: 400pt))
    content((5,-5), text(14pt)[Olm _et. al._, Science (2022)])
    }))
]

== _B. infantis_ is sensitive to salt concentration

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((14,4), image("assets/lab_general/swanson_headshot.JPG", width: 80pt))
    content((14,0), image("assets/lab_general/cassie_headshot.png", width: 80pt))
    content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    rect((-2,-6),(7.4,6),fill:white,stroke:none)
    (pause,)
    content((0, 0), image("assets/binfantis/basic_salt.png", width: 650pt))
    }))
]

== How does _B. infantis_ respond to salt stress?

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((11,1), image("assets/lab_general/swanson_headshot.JPG", width: 80pt))
    content((11,-3), image("assets/lab_general/cassie_headshot.png", width: 80pt))
    content((0, 0), image("assets/binfantis/transfers-200mM.svg", width: 500pt))
    (pause,)
    content((0, -4.3), image("assets/binfantis/transfers-300mM.svg", width: 500pt))
    (pause,)
    content((0, -8.6), image("assets/binfantis/transfers-375mM.svg", width: 500pt))
    }))
]

== Lots of open questions

#text(24pt)[
- What gene are enabling adaptation to salt? 
  - RNAseq during growth / transfer experiments
  - Microbial genetics experiments
- Are there variants in salt-tolerance genes in global human-associated _B. infantis_ stains?
  - We have thousands of infant metagenomes to explore
- Do other gut-associated Bifidos have different salt tolerance? (competition?)
]

== Contact info


#slide(composer: (2fr,3fr))[
#figure(image("assets/lab_general/narcissus.jpg", width:75%), numbering: none, caption:[
    #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])
][
  #align(center, image("assets/lab_general/lab-logo-banner.png", width: 50%))

- #fa-icon("github", font: "Font Awesome 6 Pro Solid")#h(0.5em)
  \/ #fa-icon("gitlab", font:  "Font Awesome 6 Pro Solid"): `@kescobo`
- 🔬🌐(WIP) - https://lab.bonham.ch
- 🙋🌐 - https://blog.bonham.ch
- 🦋 https://bsky.app/\@kevinbonham.com
]

== Thanks! Questions?

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0,0), text(24pt, weight: "bold")[Klepac-Ceraj Lab])
    content((-3,-3), image("assets/lab_general/vanja_headshot.png", width: 90pt))
    content((1,-3), image("assets/lab_general/shelley_headshot.png", width: 90pt))
    content((4,-4), image("assets/lab_general/guilherme_headshot.png", width: 90pt))
    content((0,-7), image("assets/lab_general/swanson_headshot.JPG", width: 80pt))
    content((-3,-7), image("assets/lab_general/cassie_headshot.png", width: 80pt))

    content((12,0), text(24pt, weight: "bold")[Other Collaborators])
    content((12,-4), image("assets/lab_general/laurel_headshot.jpg", width: 95pt))
    content((10,-7), image("assets/lab_general/emma_headshot.jpg", width: 95pt))
    content((9,-3), image("assets/lab_general/curtis_headshot.jpg", width: 95pt))
    }))
]

