# Database Setup Guide

## Quick Start

Your Smart Price Tracker database is ready to use. Follow these steps to populate it with sample data.

## Step 1: Verify Tables Exist

The following tables should already be created in your Supabase database:
- `users` - User accounts
- `products` - Product catalog
- `price_data` - Current platform prices
- `price_history` - Historical price tracking
- `reviews` - User reviews

## Step 2: Load Sample Data

Execute these SQL files in order using the Supabase SQL Editor:

### Option A: Using Supabase Dashboard
1. Go to your Supabase project dashboard
2. Navigate to SQL Editor
3. Click "New Query"
4. Copy content from `seed-data.sql`
5. Click "Run"
6. Repeat with `seed-data-extended.sql`

### Option B: Using SQL Execute Tool
If tables aren't created, run the initial migration first, then load the seed data.

## Sample Data Included

### Original Products (seed-data.sql)
- 8 products across various categories
- iPhone 15 Pro Max, Galaxy Watch, Sony Headphones, etc.
- Full price data and price history

### Extended Products (seed-data-extended.sql)
- 18 additional products
- New categories: Clothes & Fashion, Bags & Accessories, Beauty & Makeup, Grocery Items, Home & Kitchen, Personal Care
- Levi's Jeans, Laptop Backpack, Lakme Lipstick, Tata Tea, etc.

## Total Categories Supported

1. **Smartphones** - iPhones, Android devices
2. **Smartwatches** - Fitness trackers, smart watches
3. **Audio** - Headphones, earphones, speakers
4. **Laptops** - Notebooks, ultrabooks
5. **Cameras** - DSLRs, mirrorless cameras
6. **Kitchen Appliances** - Air fryers, mixers
7. **Televisions** - Smart TVs, OLED displays
8. **Footwear** - Running shoes, casual shoes
9. **Clothes & Fashion** - Jeans, shirts, kurtas
10. **Bags & Accessories** - Backpacks, handbags, wallets
11. **Beauty & Makeup** - Lipsticks, foundations, skincare
12. **Grocery Items** - Tea, oil, butter, packaged foods
13. **Home & Kitchen** - Cookware, bottles, home essentials
14. **Personal Care** - Razors, toothpaste, moisturizers

## Database Schema Overview

### Products Table
```sql
- id: UUID (primary key)
- name: Text (product name)
- image: Text (image URL)
- description: Text (product details)
- rating: Decimal (0-5)
- category: Text (category name)
- is_trending: Boolean (featured products)
```

### Price Data Table
```sql
- id: UUID (primary key)
- product_id: UUID (foreign key to products)
- platform: Text (Amazon/Flipkart/Myntra)
- price: Decimal (current price)
- discount: Text (discount info)
- delivery: Text (delivery time)
- url: Text (direct product URL)
```

### Price History Table
```sql
- id: UUID (primary key)
- product_id: UUID (foreign key to products)
- platform: Text (platform name)
- price: Decimal (historical price)
- date: Timestamp (price recorded date)
```

## Indexes for Performance

The following indexes are created automatically:
- `idx_products_name` - Fast product search
- `idx_products_category` - Fast category filtering
- `idx_products_trending` - Quick trending products lookup
- `idx_price_data_product_id` - Fast price lookups
- `idx_price_history_product_id` - Efficient price history queries

## Row Level Security (RLS)

All tables have RLS enabled with appropriate policies:

### Products, Price Data, Price History
- **Public Read Access** - Anyone can view (authenticated or guest)

### Reviews
- **Public Read Access** - Anyone can view
- **Authenticated Write** - Only logged-in users can create
- **Owner Edit/Delete** - Users can only modify their own reviews

### Users
- **Private Access** - Users can only view/edit their own profile

## Verifying the Setup

Run these queries in Supabase SQL Editor to verify:

### Check Products Count
```sql
SELECT category, COUNT(*) as product_count
FROM products
GROUP BY category
ORDER BY category;
```

Expected: 14+ categories with 1-3 products each

### Check Price Data
```sql
SELECT
  p.name,
  pd.platform,
  pd.price,
  pd.discount
FROM products p
JOIN price_data pd ON p.id = pd.product_id
LIMIT 10;
```

### Check Trending Products
```sql
SELECT name, category, rating
FROM products
WHERE is_trending = true
ORDER BY rating DESC;
```

## Adding Your Own Products

To add new products, use this template:

```sql
-- Add product
INSERT INTO products (id, name, image, description, rating, category, is_trending)
VALUES (
  gen_random_uuid(),
  'Product Name',
  'https://images.pexels.com/your-image.jpg',
  'Product description here',
  4.5,
  'Category Name',
  false
);

-- Add price data (get the product_id from above)
INSERT INTO price_data (product_id, platform, price, discount, delivery, url)
VALUES
  ('product-uuid-here', 'Amazon', 1999.00, '20% off', '2-3 days', 'https://amazon.in/product-link'),
  ('product-uuid-here', 'Flipkart', 2099.00, '15% off', '3-4 days', 'https://flipkart.com/product-link');
```

## Troubleshooting

### Tables Don't Exist
Run the initial migration SQL from `supabase/migrations/` folder

### Seed Data Fails
Check for:
- Duplicate IDs in products table
- Missing foreign key references
- Invalid data formats

### RLS Blocking Access
Verify policies are created:
```sql
SELECT * FROM pg_policies WHERE tablename IN ('products', 'price_data', 'price_history');
```

## Environment Variables

Make sure your `.env` file has:
```
VITE_SUPABASE_URL=your-project-url
VITE_SUPABASE_ANON_KEY=your-anon-key
```

## Next Steps

After loading data:
1. Start the dev server: `npm run dev`
2. Navigate to the home page
3. Try the category filters
4. Search for products
5. Click product cards to view details
6. Test the "Buy" buttons on detail pages

Your Smart Price Tracker is now ready to use!
