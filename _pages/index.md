---
layout: page
title: Home
id: home
permalink: /
---

# About me

<div style="text-align: center;">
  <img src="{{ '/assets/IMG_8265.jpg' | relative_url }}" alt="Christian Levan" style="max-width: 500px">
</div>

I'm Christian _(or Chris)_, currently finishing my bachelors at McGill in Economics & Computer Science while working part-time at [Front Row Ventures](https://frontrow.ventures/) and operating at [Ground AI](https://groundai.com/). Previously, I was a VC Intern at funds like [White Star Capital](https://whitestarcapital.com/) and [Inovia Capital](https://inovia.vc/).

A few links to explore:
<br>
• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/now" class="internal-link">Now</a>

<strong>Recently updated </strong>

<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
