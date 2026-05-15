// file: config.typ

// =============================================================================
// DOCUMENT METADATA
// =============================================================================
#let doc-title = "Information Brochure: Robotics Workshop (Summer Vacation Camp 2026)"
#let doc-author = "Dhiman Sarkar"
#let doc-date = datetime.today().display("[day] [month repr:long] [year]")

// =============================================================================
// COLOR PALETTE (Educational & Scientific)
// =============================================================================
#let color-primary = rgb("#1E40AF")      // Deep Blue - Trust, Learning
#let color-secondary = rgb("#DC2626")    // Bright Red - Energy, Robotics
#let color-accent = rgb("#16A34A")       // Forest Green - STEM, Growth
#let color-highlight = rgb("#F59E0B")    // Amber - Attention, Important
#let color-text = rgb("#1F2937")         // Dark Gray - Readability
#let color-light-bg = rgb("#F3F4F6")     // Light Gray - Backgrounds
#let color-border = rgb("#E5E7EB")       // Border Gray

// =============================================================================
// HELPER FUNCTIONS
// =============================================================================

// --- Page Header ---
#let _build-header() = context {
  set text(size: 9pt, weight: "semibold")
  text(fill: color-primary)[#doc-title]
  h(1fr)
}

// --- Page Footer ---
#let _build-footer() = context {
  set text(size: 8pt)
  h(1fr)
  text(fill: color-text)[Page #counter(page).display()]
}

// --- Heading Level 1 ---
#let _style-heading-1(it) = {
  let heading-count = counter(heading).get().at(0)
  if heading-count > 1 {
    colbreak()
  }
  //v(0.8em)
  block(
    width: 100%,
    fill: color-light-bg,
    inset: 12pt,
    radius: 6pt,
    stroke: (left: 4pt + color-secondary),
  )[
    #set text(size: 14pt, weight: "bold")
    #text(fill: color-primary)[#it]
  ]
  v(0.8em)
}

// --- Heading Level 2 ---
#let _style-heading-2(it) = {
  v(0.6em)
  box(
    inset: (bottom: 4pt),
  )[
    #set text(size: 12pt, weight: "bold")
    #text(fill: color-secondary)[#it]
  ]
  v(0.6em)
}

// --- Heading Level 3 ---
#let _style-heading-3(it) = {
  v(0.4em)
  set text(size: 11pt, weight: "semibold")
  text(fill: color-accent)[#it]
}

// =============================================================================
// FIGURE CAPTION STYLING FUNCTIONS
// =============================================================================

// --- STYLE 1: Amber Background with Red Text ---
#let _style-figure-caption(caption-text) = {
  block(
    //width: 100%,
    //inset: 8pt,
    //radius: 4pt,
    //fill: color-highlight.lighten(85%),
    //stroke: (left: 3pt + color-highlight),
  )[
    #set text(size: 9.5pt, weight: "semibold", style: "italic")
    #text(fill: color-highlight)[#caption-text]
  ]
}


// --- Table of Contents ---
#let _build-toc() = {
  pagebreak()
  block(
    width: 100%,
    fill: color-primary,
    inset: 16pt,
    radius: 8pt,
  )[
    #set text(size: 16pt, weight: "bold")
    #text(fill: white)[Table of Contents]
  ]
  v(1em)
  outline(
    title: none,
    depth: 3,
  )
  pagebreak()
}

// =============================================================================
// MAIN SETUP FUNCTION
// =============================================================================
#let setup-page(body) = {
  
  // ---------------------------------------------------------------------------
  // SECTION 1: FRONT MATTER
  // ---------------------------------------------------------------------------
  include "front-page.typ"

  // ---------------------------------------------------------------------------
  // SECTION 2: PAGE CONFIGURATION
  // ---------------------------------------------------------------------------
  set page(
    paper: "a4",
    margin: 1in,
    columns: 2,
    header: _build-header(),
    footer: _build-footer(),
  )

  // ---------------------------------------------------------------------------
  // SECTION 3: GLOBAL TEXT STYLING
  // ---------------------------------------------------------------------------
  set text(
    font: "New Computer Modern",
    size: 11pt,
  )
  set heading(numbering: "1.1.1")
  set par(justify: true)

  // ---------------------------------------------------------------------------
  // SECTION 4: HEADING STYLES
  // ---------------------------------------------------------------------------
  show heading.where(level: 1): _style-heading-1
  show heading.where(level: 2): _style-heading-2
  show heading.where(level: 3): _style-heading-3

  // ---------------------------------------------------------------------------
  // SECTION 5: FIGURE CAPTION STYLING
  // ---------------------------------------------------------------------------
  set figure.caption(separator: [: ])

  // OPTION A: AMBER STYLE (DEFAULT) ✓ ACTIVE
  show figure.where(kind: image): it => {
    block(width: 100%, below: 1em)[
      #it.body
      #_style-figure-caption(it.caption)
    ]
  }

  // OPTION B: BLUE STYLE (Uncomment to use)
  // show figure.where(kind: image): it => {
  //   block(width: 100%, below: 1em)[
  //     #it.body
  //     #_style-figure-caption-blue(it.caption)
  //   ]
  // }

  // OPTION C: GREEN STYLE (Uncomment to use)
  // show figure.where(kind: image): it => {
  //   block(width: 100%, below: 1em)[
  //     #it.body
  //     #_style-figure-caption-green(it.caption)
  //   ]
  // }

  // OPTION D: PURPLE STYLE (Uncomment to use)
  // show figure.where(kind: image): it => {
  //   block(width: 100%, below: 1em)[
  //     #it.body
  //     #_style-figure-caption-purple(it.caption)
  //   ]
  // }

  // OPTION E: RED MINIMALIST STYLE (Uncomment to use)
  // show figure.where(kind: image): it => {
  //   block(width: 100%, below: 1em)[
  //     #it.body
  //     #_style-figure-caption-red-minimal(it.caption)
  //   ]
  // }

  // ---------------------------------------------------------------------------
  // SECTION 6: TABLE OF CONTENTS
  // ---------------------------------------------------------------------------
  _build-toc()

  // ---------------------------------------------------------------------------
  // SECTION 7: MAIN CONTENT
  // ---------------------------------------------------------------------------
  body
}