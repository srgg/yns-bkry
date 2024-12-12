---
date: 2024-01-01
confections: [desserts]
categories: [bestsellers]
dietaries: [No-Gluten, No-Dairy, No-Nuts]

weight: -65535
title: Тестова позиція
description: Цей елемент призначений лише для тестування та налагодження і ніколи не повинен бути опублікований.

# Base variant
dietary: [no-gluten, no-nuts, no-nuts]
pricing:
  byEach:
    price: 6.50
    minOrder: 1
  byWeight:
    price:  15
    minOrder: 1

variants:
  # Base dietary variants
  - dietary: [no-dairy, no-gluten, no-nuts]
    pricing:
      byEach:
        price: 7
        minOrder: 9

# Flavor variants
  - title: Passion Fruits
    dietary: [no-dairy, no-gluten, no-nuts]
    pricing:
      byEach:
        price: 7
        minOrder: 9

---

Додаткові деталі про позицію можуть бути розміщені тут у вигляді контенту markdown.





