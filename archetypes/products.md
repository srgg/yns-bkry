---
title: "{{ replace .Name "-" " " | title }}"
description: "" # required
price: 0 # required
weight: 100
draft: true
required: ["description", "price"]  # This is one way to mark required fields
---
