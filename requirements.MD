# Requirements for Home Bakery Static Website

## 1. Framework and General Features
- **Framework**: Hugo-based static site for fast delivery and SEO optimization.
- **Responsiveness**: The website must be responsive and optimized for mobile, tablet, laptop, and retina displays. It should adapt the layout and images for each target resolution.
- **Multilingual Support**: The site will support English and Ukrainian languages, with content per language organized by a directory-based principle (e.g., `/en/` and `/uk/` directories).
- **Image Optimization**: Images must be optimized per each target device group. Automatic image optimization should be done from the largest image available, with variants generated for each device resolution as defined in Section 8.

## 2. Pastry Features and Taxonomy
### 2.1. Pastry Customization Options
- **Dietary Options**: Pastries can have dietary options such as no gluten, no nuts, and no dairy. Some options may require specific flavors to match dietary needs (e.g., Nut flavor cannot be without nuts).
- **Flavors**: Pastries may have different flavors, some requiring separate dietary options.
- **Filtering**: Pastries should be filterable by dietary options (e.g., gluten-free, nut-free, dairy-free) using built-in Hugo framework features.

### 2.2. Taxonomies
- **Confections**:
  - A taxonomy to group pastries by type, such as:
    - Cakes
    - Cookies
    - Desserts
  - This taxonomy must be extendable for future additions.
- **Categories**:
  - A taxonomy to highlight pastries in specific groups, such as:
    - Best Seller
    - Featured
  - This taxonomy must also be extendable as needed.

### 2.3. Product Archetypes
- **Pastries**:
  - Individual items, categorized using the above taxonomies
  - **Core Metadata**:
    - Title and description in English and Ukrainian
    - Status (active, draft, archived)
    - Creation and modification dates
    - Publication scheduling support
  - **Media Content**:
    - Featured image (minimum 1440x1440px)
    - Gallery images with same requirements
    - Alt text and captions in both languages
  - **Pricing Structure**:
    - Base price with unit specification (per item/weight)
    - Minimum order requirements
    - Optional bulk pricing tiers
    - Special pricing periods support
  - **Product Variations**:
    - Weight and count options with respective pricing
    - Dietary specifications (allergens, restrictions)
    - Flavor options and compatibility
  - **Product Information**:
    - Nutritional information per serving
    - Complete ingredients list
    - Storage requirements and shelf life
    - Production and lead time details
  - **Availability Management**:
    - Stock status (in stock, made to order, seasonal)
    - Lead time specifications
    - Seasonal availability flags
  - **SEO Elements**:
    - Meta titles and descriptions in both languages
    - Focus keywords
    - Structured product data
  - **Marketing Elements**:
    - Promotional flags (new, bestseller, featured)
    - Related products
    - Custom categorization tags
- **Sets**:
  - A distinct archetype for curated or customizable collections of pastries.
  - Sets will reside as separate entities in the `/products` directory, alongside individual pastries.
  - Each Set will have its own metadata, description, pricing model, and a dedicated details page.

## 3. Sets of Pastries
### 3.1. Definition and Structure
- **Set Archetype**:
  - A Set is a collection of pastries that can be purchased together. A Set is treated as a distinct product type, stored under the `/products` directory.
  - A Set is not classified as a Confection or Category, and should not be confused with those taxonomies.

### 3.2. Set Card Features
Each Set card must display:
- **Name and description** of the Set.
- A **cover image** (collage or hero image).
- **Thumbnail images** for individual pastries included in the Set.
- Names, quantities, and prices of individual pastries.
- **Total Set price**, with optional discount display.
- Links to individual pastry pages for detailed descriptions.

### 3.3. Set Details Page
The Set details page should include:
- A full description of the Set.
- A list of included pastries, showing:
  - Name
  - Flavor and dietary options
  - Selling method (e.g., by weight or item count)
  - Quantity per item
  - Price per item
- **Total Set Price** dynamically calculated based on selections.
- Prominent action buttons:
  - **Add to Cart**
  - **Save for Later**

### 3.4. Customization Options
- Customers can modify Sets by:
  - Adding or removing pastries.
  - Adjusting quantities for each item.
- Pricing and totals must update dynamically during customization.

### 3.5. Seller-Defined Sets
- Sellers can create and manage Sets via the CMS, with:
  - Selection of pastries from the catalog.
  - Customizable descriptions and pricing.
  - Optional discounts for bundled purchases.

## 4. Selling Options and Pricing
- Pastries can be sold by weight (pounds) or by item count, with minimum order restrictions.
- Some pastries can be sold in both ways.
- **Sets** will have a **total price** based on the individual items within the Set, including any discounts applied to bundled purchases.
- Pricing must dynamically update based on selections, quantities, and customization.

## 5. Pastry Filtering and Search
- The site should allow filtering of pastries based on dietary options, flavors, and other attributes like price and availability.
- **Sets** should be searchable by name and include links to individual pastries within the results.

## 6. Content Management
### 6.1. General Requirements
- **CMS**: The CMS must allow sellers to easily create, edit, and manage individual pastries, Sets, and categories.
- **Language Management**: The CMS must support content in English and Ukrainian, with language-specific directories and content management.
- **Taxonomy and Category Management**: Sellers should be able to add and remove items from taxonomies such as **Confections** and **Categories**, as well as create new taxonomies if needed.

### 6.2. Product Management in CMS
- **Content Creation**:
  - Intuitive interface for entering all product metadata
  - Support for multilingual content entry
  - Image upload and management tools
  - Preview functionality for both languages
- **Variation Management**:
  - Interface for managing product variations
  - Dietary and flavor option configuration
  - Bulk editing capabilities for multiple products
- **Pricing Management**:
  - Tools for setting and updating prices
  - Bulk pricing configuration
  - Special pricing period management
- **Inventory Control**:
  - Stock status management
  - Availability period settings
  - Lead time configuration

## 7. User Experience
- **Responsive Design**: The site must be optimized for different devices and resolutions, ensuring seamless navigation on mobile, tablet, laptop, and retina screens.
- **Interactive Set Builder**: Users should be able to interactively customize Sets (e.g., add/remove pastries, change quantities).
- **Smooth Navigation**: Navigation between products, Sets, and individual pastry pages should be intuitive and fast.


[Previous sections 1-7 exactly as before, then:]

## 8. Image Optimization and Performance
### 8.1. Image Size Variations
All images must be automatically generated in these variations:
- **Standard Resolution (1x)**:
  - Small: 480px width
  - Medium: 768px width
  - Large: 1024px width
- **High Resolution (2x)**:
  - Small@2x: 960px width
  - Medium@2x: 1536px width
  - Large@2x: 2048px width

### 8.2. Image Types and Requirements
- **Product Images**:
  - Featured Images:
    - Minimum upload size: 2048px on longest side
    - Generated in all size variations
    - Usage: Main product display on product pages, primary image in search results and listings
  - Gallery Images:
    - Same requirements as featured images
    - Usage: Additional product views, detail shots, texture closeups, size comparison shots
  - Thumbnails:
    - Generated in small and small@2x sizes
    - Usage: Product representation in Sets, related products, search results, quick views

- **Set Images**:
  - Cover/Hero Images:
    - Minimum upload size: 2048px on longest side
    - Generated in all size variations
    - Usage: Set presentation on homepage, category pages, and set detail pages; promotional banners
  - Collection Thumbnails:
    - Generated in small and medium sizes
    - Usage: Set previews in listings, search results, and related sets sections

- **Category Images**:
  - Banner Images:
    - Minimum upload size: 2048px on longest side
    - Generated in medium and large sizes
    - Usage: Category headers, section introductions, seasonal displays
  - Category Thumbnails:
    - Generated in small and medium sizes
    - Usage: Category navigation, menu items, featured category blocks

### 8.3. Optimization Requirements
- **Format Optimization**:
  - Automatic WebP conversion with JPEG/PNG fallbacks
  - Quality optimization per format
  - Metadata stripping for web delivery
- **Loading Optimization**:
  - Lazy loading for images below the fold
  - Preloading for critical hero images
  - Appropriate cache headers

---

This document outlines the core features and structure for the Home Bakery website, ensuring clear integration of **Pastries** and **Sets**, taxonomies, and pricing. The use of a separate **Set archetype** allows for flexibility and scalability, and the site's responsiveness and image optimization ensure an excellent user experience across all devices.
