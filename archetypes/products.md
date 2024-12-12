---
#
# Core Metadata
#
title: "{{ replace .Name "-" " " | title }}"
description: "" # required
weight: 100 # for sorting/display purposes
draft: true

# SEO
meta:
  title: ""  # English meta title
  description: ""  # English meta description
  keywords: []  # focus keywords


#
# Taxonomies
#

# Dietary information - all default to false meaning contains by default
dietaries: [no-gluten, no-dairy]
confections: [cakes, cookies, desserts]
categories: [bestsellers, featured]

#
# Media Content
#
# ??

dietary: [no-nuts, no-gluten, no-dairy]

ingredients: []  # list of ingredients

storage:
  temperature: ""
  shelf_life: ""

pricing:
  # Price per each item
  byEach:
    price: 3.50
    minOrder: 5  #  Minimum order of 5 items

    bulkDiscount:
      - threshold: 5 # Minimum quantity for the first discount tier
        discount: 0.10 # 10% discount
      - threshold: 50  # Minimum quantity for the second discount tier
        discount: 0.20  # 20% discount
  # Price per weight price, weight unit declared in config.ymal for a particular language
  byWeight:
    price: 15
    minOrder: 3

    bulkDiscount:
      threshold: 6
      discount: 0.15 # Discount 15%

variants:
    # For base variants (base dietary options) 'title' is not provided
  - dietary: no-dairy
    ingredients: []  # list of ingredients

    storage:
      temperature: ""
      shelf_life: ""

    pricing:
      # Price per each item
      byEach:
        price: 3.50
        minOrder: 5  #  Minimum order of 5 items

#        bulkDiscount:
#          - threshold: 5 # Minimum quantity for the first discount tier
#            discount: 0.10 # 10% discount
#          - threshold: 50  # Minimum quantity for the second discount tier
#            discount: 0.20  # 20% discount
      # Price per weight price, weight unit declared in config.ymal for a particular language
      byWeight:
        price: 15
        minOrder: 3

#        bulkDiscount:
#          threshold: 6
#          discount: 0.15 # Discount 15%

  # Each non-base variant can override any field from a base option
  - title: Vanilla
    dietary: [no-gluten]
    ingredients: []  # list of ingredients
---
