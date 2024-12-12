---
date: 2024-01-01
draft: true
confections: [desserts]
categories: [bestsellers]
dietaries: [no-gluten, no-dairy, no-nuts]

weight: -65535
title: "Test Item"
description: "This item is for testing and debugging purposes only and must never be published."

# Base variant
dietary: [no-dairy]
pricing:
  byEach:
    price: 6.50
    minOrder: 1
  byWeight:
    price:  15
    minOrder: 1

variants:
  # Base dietary variants
  - dietary: [no-dairy]
    pricing:
      byEach:
        price: '+2'
#        minOrder: 9
  - dietary: [no-gluten, no-nuts]
    pricing:
      byEach:
        price: '+1'
      byWeight:
        price: "-2"

# Flavor variants
  - title: Passion Fruits
    dietary: [no-dairy, no-gluten, no-nuts]
    pricing:
      byEach:
        price: 7
        minOrder: 9

---

Additional details about the Pavlova can go here as markdown content.





