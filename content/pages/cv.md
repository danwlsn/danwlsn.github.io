+++
title = "curriculum vitae"
path = "cv"
+++
## tldr
* A CV defined in YAML using the [YAMLResume spec](https://yamlresume.dev/)
* Rendered into a pdf using rhe [YAML Resume CLI](https://yamlresume.dev/docs/installation#docker-users)
* Accessabile via an API using FastAPI

## Links
* [Latest PDF](https://github.com/danwlsn/cv/blob/main/pdf/cv-latest.pdf)
* [CV API](https://cv.danwilson.co) and [CV API documentation](https://cv.danwilson.co/docs)
* [GitHub repository](https://github.com/danwlsn/cv/)

## Why?
### Long answer
Before LLMs were mainstream and people involved with hiring process read CVs, I made my CV fit on one page. Save the person time, gain brownie points. However with the rise of using Ai to process CVs faster this approach failed as I had to cut out a lot of content from the CV to fit it on one page.

The last iteration of my CV contained a `robots.txt` section to combat Ai reviewing of CVs by adding a list of keywords I imagined the Ai was set to monitor. This was an approach from a defensive standpoint.

With the progression of Ai technologies and my exposure to that, I wanted to switch to an offensive approach. Use the Ai for my CV. I had an idea for something like an Ai Agent or MCP for my CV that I could use to build tailored CVs for job applications. And the first step in that, is an API. 

### Short answer
For fun

## Reasoning

### YAMLResume or JSONResume
* YAML is nicer to write and maintain

### FastAPI or Flask
* Open API docs out of the box allowing for easier integration with an Agent


## cv.yaml
<iframe frameborder="0" scrolling="no" style="width:100%; height:618px;" allow="clipboard-write" src="https://emgithub.com/iframe.html?target=https%3A%2F%2Fgithub.com%2Fdanwlsn%2Fcv%2Fblob%2Fmain%2Fcv.yaml&style=base16%2Fdark-violet&type=code&showBorder=on&showLineNumbers=on&showFullPath=on&maxHeight=600"></iframe>

