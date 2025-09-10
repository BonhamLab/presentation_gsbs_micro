#import "@preview/touying:0.6.1": *
#import themes.metropolis: *

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

= Introspection - all about me

#figure(image("assets/lab_general/narcissus.jpg"), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])

= Introduction - bugs & brains


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
