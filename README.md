# CMPSC 600/610: Senior Thesis starter

[![Release Senior Thesis](../../actions/workflows/main.yml/badge.svg)](../../actions/workflows/main.yml)

This repository contains the starter for the Senior Thesis Proposal document.
This document compiles using GitHub Actions; students should write the entirety
of their document using the abstract.md and proposal.md files.

The template contains more specific details about using the template. The
remainder of this README considers the process of publishing the document via
GitHub Actions.

## Overview

This assignment requires a researcher to write a LaTeX document, stored in the
file `SeniorThesis.tex` that describes [the key aspects of a
senior thesis research project](#explanation-of-sections). Please refer to the
source code in this file for
an explanation of the components of a senior thesis and the way in
which you create them in LaTeX.

Your course instructor will reduce a researcher's grade for this assignment if
the pdf of your completed thesis document has not been properly released before
the
assignment's due date on December 13, 2021 at 11:59 pm. Unless
you provide the course instructors with documentation of the extenuating
circumstances that you are facing, no late work will be considered towards your
grade for this project.

For specific details about the general evaluation rubric for _minimum
requirements_ please see [thesis
guidelines](https://github.com/Allegheny-ComputerScience-600-Sum2022/course-materials/blob/main/CODE_OF_CONDUCT.md#thesis-document-minimum-requirements).

### Explanation of sections

Please consult the following sub-sections, as section requirements have changed
from requirements in previous years. All descriptions of each section are
delimited by the understanding that sections should "include, but not be
limited to" the areas highlighted.

Also keep in mind that the typical instruction to

> whenever possible, use and describe one or more concrete examples and
technical diagrams

applies across _all_ relevant sections listed below.

A final note about requirements: nearly all of the sections requests some
discussion of ethical implications inherent in projects. The ways in which
ethical issues impact research will vary from project to project. Readers will
be able to guide students on a project-by-project basis toward responding to
the ethics requirements listed below.

#### Introduction

* a statement of the problem addressed in this research
* overall project aims
* background motivating your research
* a high-level overview of ethical issues implied by the current state of the
problem underlying the work

#### Related Works

* the review of relevant existing work (i.e. "literature review")
* the literature review should be a concise, scholarly review of the literature
explaining the background to the proposed research 
* the review should provide the context for the aims of the research in
relation to existing work on the topic
* review of ethical discussions referenced in the `Introduction`

#### Method of Approach

* describes the infrastructure and tools implemented to serve, test, and
support research and conduct experiments
* enumerates the general processes and code used by the project
* here, where using diagrams or code snippets, elaboration of any included
material is _required_
* addresses the interventions that the research incorporates or develops to
address ethical concerns in datasets, software processes, or theoretical
approaches

#### Experiments

* displays and discusses evaluative metrics and data used as validation
strategies the projects
* clearly defines thresholds for success, and discusses the outcomes of
experiments relative to them
* discusses any threats to validity that remain from the original summary of
the research or those introduced by any approaches or data used in the these
research and implementation process

#### Conclusion

* provides a summary of your research and experimental outcomes
* proposes, where applicable, future areas of work or research indicated by the
conclusion of this research
* includes an evidence- or results-based appraisal of ethical issues left
unresolved or created by this research

## Tagging

Since this repository primarily contains LaTeX source code, the GitHub Actions 
configuration for it will compile the source code and automatically release a
PDF of the main file whenever the last commit is associated with a [Git
Tag](https://git-scm.com/book/en/v2/Git-Basics-Tagging). 

This will build a PDF file available in the "Releases" listing
for this repository. All release numbers for your writing in this repository
should adhere to the [Semantic Versioning](http://semver.org/) standard
expected
of GitHub projects. Here this means that:

* `Major version` releases feature a tag number change reflecting full
releases; generally these start at `1.0.0`
* `Minor version` releases indicate small changes or additions to documents;
typically these increment the second digit in the version (e.g. `1.1.0`)

Please note that your readers will only read the PDF generated from "tagged"
releases 
of the file `SeniorThesis.pdf` that has a version number greater than
1.0.0. 

That is:

* if your commit is tagged `SeniorThesis-chompers-1.0.0`, then 
* the file `SeniorThesis.pdf` should be available for download in the
"Releases" tab in your GitHub repository for this project under the name
`SeniorThesis-chompers-1.0.0`.

To ensure you can create a release appropriately, make a single small change to
the
`SeniorThesis.tex` and:

1. `commit` your file changes using a `git commit` command
2. create your first tag for this repository: type `git tag
senior_thesis-YOUR_USERNAME-0.1.0`. 
3. You are now ready to push your changes with the tag number using  `git push
-u origin main --tags`

The above steps should build a version of your project.

When you make subsequent changes to your files and perform commits and you are
ready to release a new version of `SeniorThesis.pdf`, then you should
again tag your work _before a `push` command_ with a tag that
adheres to the [Semantic Versioning](http://semver.org/) standard. 

Each time that you correctly execute this sequence of commands you will release
a new
version of your document to GitHub that is easily accessible as a PDF to you
and
to your first and second readers.

## Updates

If a course instructor updates the provided material for this assignment and
you would like to receive these updates, then you can type this command in the
main directory for this assignment:

```
git remote add download
git@github.com:Allegheny-ComputerScience-600-Sum2022/cmpsc-600-senior-thesis.git
```

You should only need to type this command once; typing the command additional
times may yield an error message but will not negatively influence the state of
your repository. Now, you are ready to download the updates provided by the
course instructor by typing:

```
git pull download main --allow-unrelated-histories
```

This second command can be run whenever the faculty need to provide you
with new source code for this assignment. However, please note that, if you
have
edited the files that the course instructor updated, running the previous
command may lead to Git merge conflicts. If this happens, you may need to
manually resolve them with the help of the instructor or a teaching assistant.

## Problems

If you have found a problem with this assignment's provided source code, then
you can go to the [Computer Science 600/610 Thesis
starter](git@github.com:Allegheny-ComputerScience-600-Sum2022/cmpsc-600-senior-thesis.git)
repository and create an issue by clicking the "Issues" tab and then clicking
the green "New Issue" button. To ensure that your issue is properly resolved,
please provide as many details as is possible about the problem that you
experienced.

Students who find, and use the appropriate GitHub issue tracker to correctly
document, a mistake in any aspect of this laboratory assignment will receive
free laptop stickers and extra credit towards their grade for it.

## Assistance

If you are having trouble completing any part of this project, then please talk
with your first reader. In particular, if you have questions about your
research project, please
see your first reader. Alternatively, you may ask questions in the Slack
channel for this course.
