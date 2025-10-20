+++
title = "claude tasks workflow"
authors = ["Dan Wilson"]
[taxonomies]
tags = ["ai"]
+++

I've been experimenting with Claude Code recently. I'd say I was in the "shitty intern" camp at the moment where I treat claude like an intern and I hand off things I don't want to do but I know they will be able to execute. When I did my first internship, I was tasked with testing how the site rendered in Internet Explorer. While IE is dead and gone, we still need to write tests. I recently joined a project that had about 5 tests total.

Writing some of the unit tests was my first time using claude, so it was a lot of prompting and back and forth conversation. The main area it would fall down on was when I would get over confident in its ability and prompt something like "now fill in **all** the tests". It couldn't really handle more than one component at a time. So that's what I did, I went through component by component saying something to the effect of "now cover this component". Now I'm working on integration tests, I took a different approach.

Someone shared in chat at work having a base `.claude` directory that we could all share. This was my first time hearing about this directory and what it could do. I thought custom commands and tasks would be a great fit for this repetitive cycle of testing components. Here's how it worked. 

## Plan command
I wrote a custom plan command that I could use to draft a plan of the work that needs to be done with claude. I had the ticket in Jira setup so that each router that needs testing had its own ticket, so I could reference that in the claude task file. I then filled out some of the task file by hand using the information from Jira. I then used my plan command to get claude to fill out the rest. 

<iframe name="claude-plan" width="100%" height="400px" src="https://paste.lol/wlsn/claude-plan.md" marginwidth="0" marginheight="0" style="border:0px none #ffffff;"></iframe>

After I have the plan I can then sense check it myself and get another LLM to check over it as well. Mark your own homework, amiright?


## Execute command
After I'm happy with the plan document, I can then get claude to execute the plan with `/execute [ticket-number]`.

<iframe name="claude-execute" width="100%" height="400px" src="https://paste.lol/wlsn/claude-execute.md" marginwidth="0" marginheight="0" style="border:0px none #ffffff;"></iframe>

Having these documents allow other developers to see what I was asking for, but it also allows me to ask claude to create a new task document and update the contents for a new router. It allows me to keep a lot of the requirements the same (test data control, what's out of scope) and have consistent outputs from claude code. It's worked really well and I've been less tempted to ask it to "fill in all the tests"
