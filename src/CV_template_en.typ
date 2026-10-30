#let conf(name: "ALEX MORGAN", email: "alex@example.com", blog: "example.com", doc) = {
  set page(paper: "a4", margin: (x: 20pt, y: 16pt))
  set text(font: "New Computer Modern", size: 11pt)
  set par(leading: 0.65em, spacing: 1em)
  set document(title: "Academic CV", author: name)
  show link: underline
  align(center)[
    #text(size: 18pt, weight: "bold", name) \
    #link("mailto:" + email, email) · #link("https://" + blog, blog)
  ]
  show heading.where(level: 1): it => {
    v(4pt)
    text(size: 12pt, weight: "bold", fill: navy, upper(it.body))
    v(-9pt)
    line(length: 100%, stroke: 0.38pt + navy)
    v(3pt)
  }
  doc
}

#let cv_block(name, date: [], entity: [], location: [], description: []) = {
  block(breakable: false)[
    #grid(columns: (1fr, auto), column-gutter: 8pt,
      text(size: 10.5pt, weight: "semibold", fill: navy, name),
      text(size: 10.5pt, style: "italic", date))
    #grid(columns: (1fr, auto), column-gutter: 8pt,
      text(size: 10.5pt, style: "italic", entity),
      text(size: 10.5pt, style: "italic", location))
  ]
  text(size: 10pt, description)
}

#let award_block(name, entity: [], date: []) = grid(
  columns: (auto, 1fr, auto), column-gutter: 6pt,
  strong(name), entity, emph(date),
)

// 以下身份、机构和经历均为通用示例。
#show: conf

= Education
#cv_block("Example University",
  date: [City, Country], entity: [B.S. in Environmental Science],
  location: [Sep 2022 – Jul 2026 (Expected)],
  description: [
    - GPA: 3.60/4.00 | Class rank: 8/60
    - Relevant coursework: Statistics, Remote Sensing, Environmental Modeling, Scientific Programming.
  ])

= Research Interests
*Remote Sensing · Environmental Change · Numerical Modeling · Climate Risk*

= Publications & Manuscripts
[1] *Morgan, A.*, Taylor, J. _Satellite observations of regional environmental change._ Manuscript under review.

[2] Taylor, J., *Morgan, A.* _Evaluating environmental prediction methods._ Manuscript in preparation.

= Conference Presentations
*Morgan, A.*, Taylor, J. (2025). _Satellite observations of environmental change._ Example Research Conference, City, Country. Poster presentation.

= Research Experience
#cv_block("Satellite-Based Environmental Monitoring",
  date: [Sep 2024 – Present],
  entity: [Research assistant | Advisor: Prof. Jordan Taylor],
  location: [Example University],
  description: [
    - Processed satellite observations and reanalysis data to characterize regional environmental variability.
    - Implemented an event identification workflow in Python and evaluated sensitivity to analysis thresholds.
    - Prepared research figures and contributed to manuscript drafting.
    - #lorem(65)
    - #lorem(50)
  ])

#cv_block("Coastal Change Research Internship",
  date: [Jun 2025 – Aug 2025],
  entity: [Research intern | Advisor: Prof. Casey Lee],
  location: [Example Research Institute],
  description: [
    - Organized shoreline observations and prepared QGIS maps for regional coastal analysis.
    - Compared shoreline change across coastal settings and contributed to a research report.
    - #lorem(65)
    - #lorem(50)
  ])

#cv_block("Regional Environmental Modeling",
  date: [Jan 2024 – Jun 2024], entity: [Course research project],
  description: [
    - Configured numerical experiments on Linux and compared simulations with observations.
    - Evaluated model performance using correlation and root mean square error.
    - #lorem(65)
    - #lorem(50)
  ])

= Internship
#cv_block("Example Environmental Agency", date: [Jul 2024 – Aug 2024],
  entity: [Intern | Monitoring Division], location: [City, Country],
  description: [
    - Supported environmental monitoring and preparation of technical summaries.
    - Participated in field instrument calibration and data quality checks.
    - #lorem(60)
  ])

= Selected Awards & Honors
#award_block("Undergraduate Research Award", entity: [Example University], date: [2025])
#award_block("Academic Scholarship", entity: [Example University], date: [2024])

= Additional Information
#award_block("Programming", entity: [Python, Shell, Fortran, Typst/LaTeX])
#award_block("Scientific Computing", entity: [Linux/HPC, Git, MATLAB, QGIS])
#award_block("Languages", entity: [Language A (native), English (proficient)])
