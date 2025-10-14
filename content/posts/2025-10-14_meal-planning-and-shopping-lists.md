+++
title = "meal planning and shopping lists"
authors = ["Dan Wilson"]
[taxonomies]
tags = ["ai"]
+++

Since the start of my digital life, a problem I have always tried to solve with technology is planning my weekly meals and turning that into a shopping list. I've been around the houses with this one from trying to outsource to a virtual assistant (they refused the task) to a complex trello system. Over the years, there have been a few iterations of this on trello but my favourite was when I managed my cupboards on there. I had the entire contents of my kitchen as cards on a trello board. When I would finish something, I could move it into the "To buy" list and that was my shopping list. The second was having recipe cards that you could move into a weekly plan list, and then some auto magic would bring all the ingredients in to a shopping list.
 
Recently, the system has been stripped back to a single shared note. Each week we list out a few meals. We have a fairly static list of things we buy each week, separated by shop section. Then we add the ingredients from each meal to the shopping list. Easy.

 Some of the problems the current systems faces are:

- We are usually rushing the meal plan/shopping list creation step 30 minutes before we're going to the supermarket
- We have some regular meals that we're hitting more than we should be
- I beleive there's not enough protein in our diets

When you're holding a hammer, everything looks like a nail. And the current hammer I'm holding is an LLM. I'm also holding my grudge against the VA I tried to hire. I want to show them this task is so simple even a robot can do it.


## The prompt

<iframe name="meal-planning-prompt" width="100%" height="400px" src="https://paste.lol/wlsn/meal-planning-prompt" marginwidth="0" marginheight="0" style="border:0px none #ffffff;"></iframe>

The key parts are: 
- planning some meals from new recipes and favourites of ours that fit the balance of calories and macros over the course of a day based on some context
    - vegetarian
    - favourite cuisines
    - cooking equipment restrictions
- create artifacts (I'm using claude, not sure what other LLMs use for this) for each recipe so they are easier to find when cooking
- building a shopping list of the core ingredients and removing the pantry items we usually have in, but still showing us what pantry items we need to have in case we have run out of those
- putting the shopping list into the categories which are in order of our route around the shop

The output can then be pasted into our shared note, formatted a little, and used in the shop. At first my girlfriend was skeptical ("How does it know what we like?") but when it suggested Thai peanut salad for lunch she was sold. I like that because it's an LLM you can ask it do things on top of the instruction. I have a trigger phrase but I can add to that:

- we're out of soy sauce so add that to the recipe
- we have friends coming over this weekend, so plan a special meal for them and add a bottle of wine to the list
- let's have Thai salad for every meal
