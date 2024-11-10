---
layout: page
title: Writing
permalink: /writing/
---

# Latest

{% assign latest_post = site.notes | where: "category", "writing" | sort: "date" | reverse | first %}

## [{{ latest_post.title }}]({{ latest_post.url }})

{{ latest_post.date | date: "%B %-d, %Y" }} · {{ latest_post.reading_time }} minute read

{{ latest_post.excerpt }} [Keep reading →]({{ latest_post.url }})

## Topics

{% assign all_tags = site.notes | where: "category", "writing" | map: "tags" | compact | uniq | sort %}
{% for tag in all_tags %}
<a href="/tags/{{ tag }}" class="tag">{{ tag }}</a>
{% endfor %}

## Writing

{% assign writing_notes = site.notes | where: "category", "writing" | sort: "date" | reverse %}
{% for note in writing_notes %}
{{ note.date | date: "%Y-%m-%d" }}  
[{{ note.title }}]({{ note.url }})
{% endfor %}

## Receive my updates

<form action="YOUR_FORM_ENDPOINT" method="post" class="subscribe-form">
  <input type="email" name="email" placeholder="Enter your email">
  <button type="submit">Subscribe</button>
</form>
