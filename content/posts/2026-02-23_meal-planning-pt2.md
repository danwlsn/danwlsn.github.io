+++
title = "meal planning part 2"
authors = ["Dan Wilson"]
[taxonomies]
tags = ["ai"]
+++

A follow-on from [meal planning and shopping lists](@/posts/2025-10-14_meal-planning-and-shopping-lists.md).

I have been running with the following prompt with Claude for the last 3 months now. And it worked. I was able to run the prompt minutes before leaving the house, answering some questions and paste the result into a shared note between me and my girlfriend. Our lunches were elevated beyond cheese butties or scrambled eggs. The bulk prepping of a salad for a few days for lunch was also a time saver. We were time rich (lol not. I have a baby). But we had become cash poor. These healthy lunches were costing us quite a bit. I blamed the cost of living for this but over the last couple of weeks my girlfriend decided to do the meal plan and shopping list by hand. She was able to plan similar lunches for us but bring the cost down. 

Another issue was that recipes were repeating. Well, not 100% but you can only have "roasted Moroccan vegetables and couscous" so many ways. Recipes were out of sync with proportions. It was good, but it could be better.

I had toyed with the idea of setting up a Skill that could pull and push from a supabase database. Storing recipes in there so I could manage the ratios a bit better. Turns out, Skills can't reach the internet. Well, they can reach github so maybe I could store an sqlite db there and retrieve it at the start of the skill. Did I mention I had a baby? I put the idea down.

In the back of my mind I thought N8N could do this for me. Hook it up to my mealie service, pull ratioed recipes, build a shopping list, email the plan. Remember that baby? Then a new player entered that chat: OpenClaw. People where saying it had replaced N8N for them. I thought why not give it a go. It comes bundled with a skill builder and this morning I was able to give it the mealie API docs, ask it to build a skill, restarted the server, "suggest something for dinner and add it to the meal plan". Time to play with the baby.  

