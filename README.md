# CMPSC 600/610: Senior Thesis Starter for Fall 2022 and Spring 2023

[![Release Senior Thesis](../../actions/workflows/main.yml/badge.svg)](../../actions/workflows/main.yml)

## Table of Contents

* [Introduction](#introduction)
* [Overview](#overview)
* [Requirements](#requirements)
* [Explanation](#explanation)
  + [Introduction](#introduction-1)
  + [Related Works](#related-works)
  + [Method of Approach](#method-of-approach)
  + [Experiments](#experiments)
  + [Conclusion](#conclusion)
* [Tagging](#tagging)
* [Updates](#updates)
* [Problems](#problems)
* [Assistance](#assistance)

## Introduction

This repository contains the starter for the Senior Thesis document. This
document compiles using GitHub Actions; students should write the entirety of
their document using the `abstract.md` and `thesis.md` files. The template
contains more specific details about using the template. The remainder of this
README overview the project's requirements and the process of publishing the
document via GitHub Actions.

## Overview

This assignment requires a researcher to write a Markdown and LaTeX document,
stored in this README and in the file `thesis.md` that describes the key aspects
of a senior thesis research project. Please refer to the source code in this
file for an explanation of the components of a senior thesis and the way in
which you create them in Markdown and/or LaTeX.

Your course instructor will reduce a researcher's grade for this assignment if
the PDF of your completed thesis document has not been properly released before
the assignment's due date as specified in the GitHub Classroom page when you
accept this assignment. Unless you provide the course instructors with
documentation of the extenuating circumstances that you are facing, no late work
will be considered towards your grade for this project.

## Requirements

For specific details about the general evaluation rubric for _minimum
requirements_ please refer to the following list for the entire senior thesis.
Please note that your senior thesis chapters in CMPSC 600 will be evaluated
according to the content that you submit in that course and your senior thesis
chapters in CMPSC 610 will be evaluated according to all of the following
baseline requirements. Please note that these are only baseline requirements and
it is expected that an exceptional senior thesis will exceed these requirements.

**General Thesis Requirements**:
  - [ ] The abstract provides a concise and compelling summary of the research
  - [ ] The thesis was submitted on time as a PDF in a tagged release on GitHub
  - [ ] The GitHub repository of the thesis contains evidence of many commits
  - [ ] The GitHub repository of the thesis contains multiple releases using the
    [Semantic Versioning Standard](https://semver.org/)
  - [ ] In adherence to the [Semantic Versioning Standard](https://semver.org/),
    the GitHub repository of the thesis contains a release greater than `1.0.0`
    for the work in CMPSC 600 and a release greater than `2.0.0` for CMPSC 610
  - [ ] The thesis has the correct format created through the use of Pandoc and
    LaTeX and the senior thesis template for the Department of Computer Science
  - [ ] The title of the thesis is both interesting and appropriate
  - [ ] The thesis includes at least twelve references
  - [ ] Unless there is a convincing reason to require otherwise, each chapter
    in the senior thesis should contain at least ten to twenty pages of
    contents formatting in the required style
  - [ ] The thesis consists of at least `7500` words
  - [ ] The thesis follows a logical flow at the level of chapters, sections,
    subsections, and individual paragraphs
  - [ ] The thesis includes appropriate visual aids, which fall under the broad
    categories of:
  * `image`
  * `figure`
  * `table`
  * `graph`
  - [ ] The thesis contains a sufficient amount of content with a focus on
    scientific, technical, engineering, and/or mathematical content
  - [ ] The thesis highlights and explains the societal impacts and ethical
    implications of the completed research
  - [ ] There are no typographical or grammatical errors in the thesis
  - [ ] There is no extraneous text in the thesis

**Introduction Section Requirements**
  - [ ] The introduction section clearly describes the completed work
  - [ ] The introduction section motivates the completed work from a
    professional perspective focused on science, technology, engineering,
    mathematics, and societal implications
  - [ ] The introduction section outlines the ethical implications of the thesis

**Related Work Section Requirements**
  - [ ] The related work section references and describes relevant literature
  - [ ] The related work section explains how relevant literature connects to the thesis
  - [ ] The related work section does not provide a "laundry list" of the related literature
  - [ ] The related work section situates the completed project in the broader scope

**Method Section Requirements**
  - [ ] The method section explains the process utilized in the completed study
  - [ ] The method section addresses as many of the following which are
    applicable (minimum `1`):
  * `description of algorithms`
  * `programming languages`
  * `libraries`
  * `platforms`
  * `software tools`
  * `hardware`
  - [ ] The method section references the GitHub repository that contains the
    implementation of the project's computational artifact(s)
  - [ ] The method section gives examples of the input and output of the
    project's computational artifact(s) and, when appropriate, explains how to
    run the computational artifact (note that the `README.md` file of the GitHub
    repository that contains the computational artifact(s) should furnish
    complete details about the input, output, behavior, and use of the project)

**Experimental Results Section Requirements**
  - [ ] The experimental results section includes a description of experiments
    such that a reader should be able to reproduce them
  - [ ] The evaluation subsection describes how the work is validated
  - [ ] The evaluation subsection contains at least one graph, table of data, or
    some other relevant presentation of the results from the experimental study
  - [ ] The experimental results section details threats to validity

**Discussion and Future Work Section Requirements**
  - [ ] The discussion and future work section discusses the impact of the completed research project
  - [ ] The discussion and future work section critically reflects on the completed research project
  - [ ] The conclusion outlines, with sufficient depth and detail, avenues for further and/or future work

## Explanation

Please consult the following sub-sections, as section requirements may have
changed from requirements in previous years. All descriptions of each section
are delimited by the understanding that sections should "include, but not be
limited to" the areas highlighted.

Also keep in mind that the typical instruction to

> whenever possible, use and describe one or more concrete examples and
technical diagrams

applies across _all_ relevant sections listed below.

A final note about requirements: nearly all of the sections requests some
discussion of ethical implications inherent in projects. The ways in which
ethical issues impact research will vary from project to project. Your first and
second readers will be able to guide you on a project-by-project basis toward
responding to the ethics requirements listed below.

### Introduction

* a statement of the problem addressed in this research
* overall project aims
* background motivating your research
* a high-level overview of ethical issues implied by the current state of the
  problem underlying the work

### Related Works

* the review of relevant existing work (i.e., the "literature review")
* the literature review should be a concise, scholarly review of the literature
  explaining the background to the proposed research
* the review should provide the context for the aims of the research in relation
  to existing work on the topic
* the literature review should place the senior thesis research in the context
  of the relevant existing work
* review of ethical discussions referenced in the `Introduction`

### Method of Approach

* describes the infrastructure and tools implemented to serve, test, and support
  research and conduct experiments
* enumerates the general processes and code used by the project with required
  technical content that would include, for instance, diagrams and/or code
  snippets and/or algorithm statements
* addresses the interventions that the research incorporates or develops to
  address ethical concerns in datasets, software processes, or theoretical
  approaches

### Experiments

* displays and discusses evaluative metrics and data used as validation
  strategies the projects
* clearly defines thresholds for success, and discusses the outcomes of
  experiments relative to them
* explores the trade-offs evident in the experimental results, leverage
  previously defined metrics about, for instance, efficiency and/or
  effectiveness
* uses techniques such as statistics and/or data visualizations to highlight the
  key trends in the experimental results
* discusses any threats to validity that remain from the original summary of the
  research or those introduced by any approaches or data used in the these
  research and implementation process

### Conclusion

* provides a summary of your research and experimental outcomes
* proposes, where applicable, future areas of work or research indicated by the
  conclusion of this research
* includes an evidence- or results-based appraisal of ethical issues left
  unresolved or created by this research

## Tagging

Since this repository primarily contains Markdown and/or LaTeX source code, the
GitHub Actions configuration for it will compile the source code and
automatically release a PDF of the main file whenever the last commit is
associated with a [Git Tag](https://git-scm.com/book/en/v2/Git-Basics-Tagging).

This will build a PDF file available in the "Releases" listing for this
repository. All release numbers for your writing in this repository should
adhere to the [Semantic Versioning](http://semver.org/) standard expected of
GitHub projects. Here this means that:

* `Major version` releases feature a tag number change reflecting full
releases; generally these start at `1.0.0`
* `Minor version` releases indicate small changes or additions to documents;
typically these increment the second digit in the version (e.g. `1.1.0`)

Please note that your readers will only read the PDF generated from "tagged"
releases of the file `SeniorThesis.pdf` that has a version number greater than
1.0.0.

That is:

* if your commit is tagged `SeniorThesis-chompers-1.0.0`, then
* the file `SeniorThesis.pdf` should be available for download in the
"Releases" tab in your GitHub repository for this project under the name
`SeniorThesis-chompers-1.0.0`.

To ensure you can create a release appropriately, make a single small change to
the `thesis.md` and:

1. `commit` your file changes using a `git commit` command
2. create your first tag for this repository: type `git tag
senior_thesis-YOUR_USERNAME-0.1.0`.
3. You are now ready to push your changes with the tag number using  `git push
-u origin main --tags`

The above steps should build a version of your project and release it on
GitHub! If something does not work correctly, please contact your first and
second readers and/or the senior thesis faculty coordindator to explain the
details of the challenges that you faced. It is also important to note that it
is possible for a student to perform a manual release of the PDF of their senior
thesis chapters. Again, please communicate with your first and/or second readers
and/or the senior thesis faculty coordindator for more information about the
steps you would take to perform a manual release. With that said, it is
important to stress that you should learn how to perform an automated release of
your thesis in PDF and only use the manual approach if there is a severe and
extenuating circumstance (e.g., GitHub Actions stops working for a short time)
that prevents you from performing an automated release.

When you make subsequent changes to your files and perform commits and you are
ready to release a new version of `SeniorThesis.pdf`, then you should
again tag your work _before a `push` command_ with a tag that
adheres to the [Semantic Versioning](http://semver.org/) standard.

Each time that you correctly execute this sequence of commands you will release
a new version of your document to GitHub that is easily accessible as a PDF to
you and to your first and second readers.

After creating the `log/` and `output/` directories in your project directory,
you should be able to locally build your senior thesis using the command `pandoc
--defaults pdf.yaml --to latex --metadata-file config.yaml --lua-filter
.filters/abstract-to-meta.lua --template template/thesis.tex`. Please note that
you must run this command from the root directory of the project after
installing both the `pandoc` and `tectonic` packages. If the build of your
senior thesis works correctly then the local file will be available in the
`output/` directory. With that said, it is important to note that you should
never commit the `SeniorThesis.pdf` file in the `output/` directory to your
GitHub repository! Since PDF files are "derived" from the source code in your
GitHub repository, they should never be committed to it. Instead, you should
rely on GitHub Actions to create a copy of your `SeniorThesis.pdf` file by
following the previously described steps for making a tagged release.

## Updates

If a course instructor updates the provided material for this assignment and
you would like to receive these updates, then you can type this command in the
main directory for this assignment:

```
git remote add download git@github.com:ReadyResearchers/cs-600-F2022-610-S2023-senior-thesis-template.git
```

You should only need to type this command once; typing the command additional
times may yield an error message but will not negatively influence the state of
your repository. Now, you are ready to download the updates provided by the
course instructor by typing:

```
git pull download main --allow-unrelated-histories
```

This second command can be run whenever the faculty need to provide you with new
source code for this assignment. However, please note that, if you have edited
the files that the course instructor updated, running the previous command may
lead to Git merge conflicts. If this happens, you may need to manually resolve
them with the help of the instructor or a teaching assistant. If you experience
problems when following these steps for automatically accessing project updates
you can also manually copy files from this repository to your GitHub repository.

## Problems

If you have found a problem with this assignment's provided source code, then
you can go to the [Computer Science 600/610 Thesis
Starter](https://github.com/ReadyResearchers/cs-600-F2022-610-S2023-senior-thesis-template)
repository and create an issue by clicking the "Issues" tab and then clicking
the green "New Issue" button. To ensure that your issue is properly resolved,
please provide as many details as is possible about the problem that you
experienced.

## Assistance

If you are having trouble completing any part of this project, then please talk
with your first reader. In particular, if you have questions about your research
project, please see your first reader. Alternatively, you may ask questions in
the Discord server for this course.
