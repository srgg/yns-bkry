---
title: "{{ replace .Name "-" " " | title }}"
description: "" # required
price: 0.0 # base price required
weight: 100 # for sorting/display purposes
draft: true

# Product details
product_type: "piece" # Options: piece, weight
unit: "" # "pc" for pieces, "kg" for weight-based
minimum_order:
  quantity: 1 # Minimum number of pieces or weight in kg
  price: 0.0 # Optional special price for minimum order

# Base pricing
base_price:
  amount: 0.0  # Base price per unit
  unit: ""     # kg or pc

confection: # cakes, cookies, desserts

# Dietary information - all default to false meaning contains by default
dietary:
#  status:
#    gluten_free: false     # false = contains gluten
#    dairy_free: false      # false = contains dairy
#    nut_free: false        # false = contains nuts
##    vegan: false          # false = not vegan
##    vegetarian: false     # false = not vegetarian
#
  # Available dietary options with pricing
  options:
    gluten_free:
      available: false
      price_adjustment_fixed: 0.0
      price_adjustment_percentage: 0
    dairy_free:
      available: false
      price_adjustment_fixed: 0.0
      price_adjustment_percentage: 0
    nut_free:
      available: false
      price_adjustment_fixed: 0.0
      price_adjustment_percentage: 0

  # Special combination pricing
  combinations:
    gluten_dairy_free:
      available: false
      price_adjustment_fixed: 0.0
      price_adjustment_percentage: 0
    gluten_nut_free:
      available: false
      price_adjustment_fixed: 0.0
    dairy_nut_free:
      available: false
      price_adjustment_fixed: 0.0

# Product variants/flavors
variants:
  available: false
  options: []  # Array of flavor options
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

# Meta information
meta:
  categories: [] # Array of categories this product belongs to
  tags: []       # Array of tags for filtering/searching
  featured: false
  new: false
---
