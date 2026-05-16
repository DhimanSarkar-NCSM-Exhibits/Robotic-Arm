// file: front-page.typ
// SPDX-License-Identifier: CC-BY-ND-4.0
// SPDX-FileCopyrightText: 2026 Dhiman Sarkar, National Council of Science Museums (NCSM)

#import "config.typ": * 

#set page(
  paper: "a4",
  margin: 1in,
  columns: 1
)

#set align(center)

#place(
  bottom + right,
  dx: 67pt,
  dy: 90pt,
)[
  #block(
    width: 100%,
    height: 160%,
  )[
    #figure(
      image("assets/cover-page-bg.jpg", width: 150%)
    )
  ]
]

#place(
  horizon + center,
  dx: 0pt,
  dy: 0pt,
)[
  #block(
    width: 100%,
    height: auto,
  )[
    #rect(
      width: 150%, 
      height: 150%, 
      fill: white.transparentize(30%)
    )
  ]
]

  

#grid(
  columns: (auto, auto),
  image("assets/Ministry_of_Culture_India.svg", height: 20mm),
  image("assets/ncsm_logo.svg", height: 20mm),
  gutter: 1fr
)

  
#place(
  horizon + center,
  [
    #text([Summer Vacation Camp 2026], size: 15pt, weight: "regular") 
    #block(spacing: 0.5em)

    #text([Robotics Workshop], size: 25pt, weight: "bold") 
    #block(spacing: 1em)
    
    #text([Information Brochure], size: 12pt, weight: "thin") 
    #block(spacing: 1em)

    //#text([#doc-author], size: 12pt, weight: "black")
    //#block(spacing: 1em)
    
    //#text([#doc-date], size: 10pt, weight: "regular")
  ]
)



#place(
    bottom + center,
    [
        #block(spacing: 1em)
        #text([National Science Centre, Delhi #linebreak()], size: 1.3em, weight: "bold") 
        #text([(A unit of National Council of Science Museums) #linebreak()], size: 0.8em, weight: "bold")
        #text([Ministry of Culture, Government of India #linebreak()], size: 0.93em, weight: "bold")
        #text([Bhairon Road, New Delhi, Delhi, 110001 #linebreak()], size: 0.9em,)
        #text([Website: #link("https://nscd.gov.in/")[https://nscd.gov.in/] Contact: +91 7428693710-17], size: 0.7em,)
    ]
)


#place(bottom + left, dx: -1in+5pt, dy: 1in-5pt,
[
  
  #rotate(-90deg, reflow: true)[#datetime.today().display("[day] [month repr:long] [year]") | v#doc-version]
  
])

