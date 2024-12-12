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
dietary: [no-nuts, no-gluten, no-dairy]
confections: [cakes, cookies, desserts]
categories: [bestsellers, featured]

#
# Media Content
#
# ??


variants:
  # For base variat 'title' is not provided
  - # dietary: []
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

  # Each non-base variant can override any field from a base option
  - title: Vanilla
    dietary: [no-gluten]
    ingredients: []  # list of ingredients


## Base price
#pricing:
#  dietary: [no-gluten]
#  #ingredients: []  # list of ingredients
#
#  # Price per each item
#  byEach:
#    price: 3.50
#    minOrder: 5  #  Minimum order of 5 items
#
#    bulkDiscount:
#      - threshold: 5 # Minimum quantity for the first discount tier
#        discount: 0.10 # 10% discount
#      - threshold: 50  # Minimum quantity for the second discount tier
#        discount: 0.20  # 20% discount

#  # Price per weight price, weight unit declared in config.ymal for a particular language
#  byWeight:
#    price: 15
#    minOrder: 3
#
#    bulkDiscount:
#      threshold: 6
#      discount: 0.15 # Discount 15%



#storage:
#  temperature: ""
#  shelf_life: ""


## SEO
#meta:
#  title: ""  # English meta title
#  description: ""  # English meta description
#  keywords: []  # focus keywords

#  status:
#    gluten_free: false     # false = contains gluten
#    dairy_free: false      # false = contains dairy
#    nut_free: false        # false = contains nuts
##    vegan: false          # false = not vegan
##    vegetarian: false     # false = not vegetarian
#
#  # Available dietary options with pricing
#  options:
#    gluten_free:
#      available: false
#      price_adjustment_fixed: 0.0
#      price_adjustment_percentage: 0
#    dairy_free:
#      available: false
#      price_adjustment_fixed: 0.0
#      price_adjustment_percentage: 0
#    nut_free:
#      available: false
#      price_adjustment_fixed: 0.0
#      price_adjustment_percentage: 0

#  # Special combination pricing
#  combinations:
#    gluten_dairy_free:
#      available: false
#      price_adjustment_fixed: 0.0
#      price_adjustment_percentage: 0
#    gluten_nut_free:
#      available: false
#      price_adjustment_fixed: 0.0
#    dairy_nut_free:
#      available: false
#      price_adjustment_fixed: 0.0
#
# Product variants/flavors
#variants:
#  available: false
#  options: []  # Array of flavor options
  # Example structure:
  # options:
  #   - name: "Vanilla"
  #     price_adjustment: 0.0
  #     available: true
  #     dietary_pricing:
  #       gluten_free:
  #         price_adjustment: 0.0
  #       dairy_free:
  #         price_adjustment: 0.0

[//]: # (# Meta information)

[//]: # (meta:)

[//]: # (  categories: [] # Array of categories this product belongs to)

[//]: # (  tags: []       # Array of tags for filtering/searching)

[//]: # (  featured: false)

[//]: # (  new: false)
---
