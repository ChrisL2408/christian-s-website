---
layout: page
title: Home
id: home
permalink: /
---

# About Me

<img src="{{ '/assets/IMG_8265.jpg' | relative_url }}" alt="Christian Levan" style="max-width: 400px; width: 100%; height: auto; float: left; margin-right: 20px;">

{: style="text-align: justify;"}
I'm Christian _(or Chris)_, currently finishing my degree at McGill in Economics & Computer Science while working in VC [Front Row Ventures](https://frontrow.ventures/) and at [Ground AI](https://joinground.com/) _(don't ask me about how I balance this pls)_

{: style="text-align: justify;"}
Previously, I was a VC Intern at funds like [White Star Capital](https://whitestarcapital.com/) and [Inovia Capital](https://inovia.vc/) and had several Ops roles at startups. I'm obsessed with Brazilian Jiu-Jitsu and have been supporting Chelsea FC since I was 13 years old.

**A few links to explore**

• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/now" class="internal-link">Now</a>

<strong>Recently</strong>

<ul>
  {% assign recent_notes = site.notes | where_exp: "note", "note.category == 'writing' or note.category == 'projects'" | where_exp: "note", "note.date != nil and note.date != ''" | sort: "date" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.date | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
      {% if note.category %}
        <span style="color: #666; font-size: 0.9em;">({{ note.category }})</span>
      {% endif %}
    </li>
  {% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
