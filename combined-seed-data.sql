-- Sample products data
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Apple iPhone 15 Pro Max (256GB) - Natural Titanium', 'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=800', 'Experience the power of A17 Pro chip with titanium design, advanced camera system, and all-day battery life. Action button for quick access to features.', 4.6, 'Smartphones', true),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Samsung Galaxy Watch 6 Classic', 'https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium smartwatch with rotating bezel, advanced health tracking, sleep monitoring, and comprehensive fitness features. Elegant stainless steel design.', 4.4, 'Smartwatches', true),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Sony WH-1000XM5 Wireless Headphones', 'https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg?auto=compress&cs=tinysrgb&w=800', 'Industry-leading noise cancellation with premium sound quality. 30-hour battery life, touch controls, and multipoint connection for seamless switching.', 4.7, 'Audio', true),
  ('d4e5f6a7-b8c9-0123-def1-234567890123', 'Dell XPS 15 Laptop (Intel i7, 16GB RAM, 512GB SSD)', 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=800', 'High-performance laptop with stunning 15.6-inch 4K display, powerful Intel i7 processor, and premium build quality. Perfect for professionals and creators.', 4.5, 'Laptops', true),
  ('e5f6a7b8-c9d0-1234-ef12-345678901234', 'Nike Air Zoom Pegasus 40 Running Shoes', 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=800', 'Responsive running shoes with ReactX foam for enhanced cushioning. Waffle outsole pattern provides excellent traction. Available in multiple colors.', 4.3, 'Footwear', true),
  ('f6a7b8c9-d0e1-2345-f123-456789012345', 'Canon EOS R6 Mark II Mirrorless Camera', 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?auto=compress&cs=tinysrgb&w=800', 'Professional mirrorless camera with 24.2MP sensor, 40fps burst shooting, in-body stabilization, and advanced autofocus. Perfect for photography enthusiasts.', 4.8, 'Cameras', true),
  ('a7b8c9d0-e1f2-3456-1234-567890123456', 'Philips Air Fryer XXL', 'https://images.pexels.com/photos/4252139/pexels-photo-4252139.jpeg?auto=compress&cs=tinysrgb&w=800', 'Large capacity air fryer with rapid air technology. Cook healthy meals with up to 90% less fat. Digital touchscreen with preset programs for easy cooking.', 4.2, 'Kitchen Appliances', false),
  ('b8c9d0e1-f2a3-4567-2345-678901234567', 'LG 55-inch 4K OLED Smart TV', 'https://images.pexels.com/photos/1201996/pexels-photo-1201996.jpeg?auto=compress&cs=tinysrgb&w=800', 'Stunning OLED display with perfect blacks and vibrant colors. α9 Gen 6 AI Processor for enhanced picture quality. WebOS smart platform with streaming apps.', 4.6, 'Televisions', false);

-- Sample price data for products
INSERT INTO price_data (product_id, platform, price, discount, delivery, url) VALUES
  -- iPhone 15 Pro Max
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Amazon', 139900.00, '5% off', '2-3 days', 'https://amazon.in'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Flipkart', 141999.00, '3% off', '3-4 days', 'https://flipkart.com'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Myntra', 142900.00, '2% off', '4-5 days', 'https://myntra.com'),

  -- Samsung Galaxy Watch
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Amazon', 32999.00, '15% off', '1-2 days', 'https://amazon.in'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Flipkart', 33499.00, '12% off', '2-3 days', 'https://flipkart.com'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Myntra', 34999.00, '10% off', '3-4 days', 'https://myntra.com'),

  -- Sony Headphones
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Amazon', 28990.00, '20% off', '1-2 days', 'https://amazon.in'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Flipkart', 29990.00, '18% off', '2-3 days', 'https://flipkart.com'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Myntra', 30990.00, '15% off', '3-4 days', 'https://myntra.com'),

  -- Dell XPS 15
  ('d4e5f6a7-b8c9-0123-def1-234567890123', 'Amazon', 155999.00, '8% off', '3-5 days', 'https://amazon.in'),
  ('d4e5f6a7-b8c9-0123-def1-234567890123', 'Flipkart', 159999.00, '5% off', '4-6 days', 'https://flipkart.com'),

  -- Nike Running Shoes
  ('e5f6a7b8-c9d0-1234-ef12-345678901234', 'Amazon', 9999.00, '25% off', '2-3 days', 'https://amazon.in'),
  ('e5f6a7b8-c9d0-1234-ef12-345678901234', 'Flipkart', 10499.00, '20% off', '3-4 days', 'https://flipkart.com'),
  ('e5f6a7b8-c9d0-1234-ef12-345678901234', 'Myntra', 9899.00, '26% off', '2-3 days', 'https://myntra.com'),

  -- Canon Camera
  ('f6a7b8c9-d0e1-2345-f123-456789012345', 'Amazon', 214999.00, '10% off', '3-5 days', 'https://amazon.in'),
  ('f6a7b8c9-d0e1-2345-f123-456789012345', 'Flipkart', 219999.00, '8% off', '4-6 days', 'https://flipkart.com'),

  -- Philips Air Fryer
  ('a7b8c9d0-e1f2-3456-1234-567890123456', 'Amazon', 14999.00, '30% off', '2-3 days', 'https://amazon.in'),
  ('a7b8c9d0-e1f2-3456-1234-567890123456', 'Flipkart', 15499.00, '28% off', '3-4 days', 'https://flipkart.com'),

  -- LG OLED TV
  ('b8c9d0e1-f2a3-4567-2345-678901234567', 'Amazon', 124999.00, '12% off', '5-7 days', 'https://amazon.in'),
  ('b8c9d0e1-f2a3-4567-2345-678901234567', 'Flipkart', 129999.00, '10% off', '6-8 days', 'https://flipkart.com');

-- Sample price history for trending products (last 30 days)
INSERT INTO price_history (product_id, platform, price, date) VALUES
  -- iPhone price history
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Amazon', 144900.00, NOW() - INTERVAL '30 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Amazon', 143900.00, NOW() - INTERVAL '20 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Amazon', 141900.00, NOW() - INTERVAL '10 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Amazon', 139900.00, NOW()),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Flipkart', 145999.00, NOW() - INTERVAL '30 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Flipkart', 144999.00, NOW() - INTERVAL '20 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Flipkart', 143499.00, NOW() - INTERVAL '10 days'),
  ('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Flipkart', 141999.00, NOW()),

  -- Samsung Watch price history
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Amazon', 35999.00, NOW() - INTERVAL '30 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Amazon', 34999.00, NOW() - INTERVAL '20 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Amazon', 33999.00, NOW() - INTERVAL '10 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Amazon', 32999.00, NOW()),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Flipkart', 36499.00, NOW() - INTERVAL '30 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Flipkart', 35499.00, NOW() - INTERVAL '20 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Flipkart', 34499.00, NOW() - INTERVAL '10 days'),
  ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Flipkart', 33499.00, NOW()),

  -- Sony Headphones price history
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Amazon', 32990.00, NOW() - INTERVAL '30 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Amazon', 31490.00, NOW() - INTERVAL '20 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Amazon', 29990.00, NOW() - INTERVAL '10 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Amazon', 28990.00, NOW()),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Flipkart', 33490.00, NOW() - INTERVAL '30 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Flipkart', 31990.00, NOW() - INTERVAL '20 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Flipkart', 30990.00, NOW() - INTERVAL '10 days'),
  ('c3d4e5f6-a7b8-9012-cdef-123456789012', 'Flipkart', 29990.00, NOW());
-- Extended sample products data with new categories

-- Clothes & Fashion
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Levi''s Men''s Regular Fit Jeans', 'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg?auto=compress&cs=tinysrgb&w=800', 'Classic regular fit jeans with premium denim fabric. Features 5-pocket styling, button fly, and comfortable stretch. Perfect for everyday wear.', 4.4, 'Clothes & Fashion', true),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Women''s Cotton Kurti Set', 'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=800', 'Elegant cotton kurti set with beautiful prints. Includes matching dupatta. Comfortable fabric perfect for Indian summers.', 4.5, 'Clothes & Fashion', true),
  ('c3f4a5b6-d7e8-9012-cdef-333333333333', 'Men''s Casual Shirt - Slim Fit', 'https://images.pexels.com/photos/297933/pexels-photo-297933.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium cotton slim fit shirt with modern design. Easy care fabric, available in multiple colors. Perfect for office or casual outings.', 4.3, 'Clothes & Fashion', false);

-- Bags & Accessories
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Leather Laptop Backpack 15.6 inch', 'https://images.pexels.com/photos/2905238/pexels-photo-2905238.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium leather laptop backpack with multiple compartments. Water-resistant, padded laptop sleeve, USB charging port. Perfect for professionals.', 4.6, 'Bags & Accessories', true),
  ('b2a3c4d5-e6f7-8901-bcde-555555555555', 'Women''s Handbag - Premium PU Leather', 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&w=800', 'Stylish handbag with spacious interior. Multiple pockets for organization. Elegant design suitable for both office and parties.', 4.4, 'Bags & Accessories', true),
  ('b3a4c5d6-e7f8-9012-cdef-666666666666', 'Travel Duffel Bag - Large Capacity', 'https://images.pexels.com/photos/1058959/pexels-photo-1058959.jpeg?auto=compress&cs=tinysrgb&w=800', 'Spacious travel duffel with durable construction. Multiple pockets, adjustable shoulder strap, and sturdy handles. Perfect for weekend trips.', 4.3, 'Bags & Accessories', false);

-- Beauty & Makeup
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('m1b2c3d4-e5f6-7890-abcd-777777777777', 'Lakme Absolute Matte Lipstick', 'https://images.pexels.com/photos/2113855/pexels-photo-2113855.jpeg?auto=compress&cs=tinysrgb&w=800', 'Long-lasting matte lipstick with rich color. Smooth application, non-drying formula. Available in multiple shades.', 4.5, 'Beauty & Makeup', true),
  ('m2b3c4d5-e6f7-8901-bcde-888888888888', 'Maybelline Fit Me Foundation', 'https://images.pexels.com/photos/3373736/pexels-photo-3373736.jpeg?auto=compress&cs=tinysrgb&w=800', 'Lightweight liquid foundation with natural finish. Suitable for all skin types. Provides medium coverage with a flawless look.', 4.6, 'Beauty & Makeup', true),
  ('m3b4c5d6-e7f8-9012-cdef-999999999999', 'Plum Skincare Face Wash - Green Tea', 'https://images.pexels.com/photos/3762879/pexels-photo-3762879.jpeg?auto=compress&cs=tinysrgb&w=800', 'Gentle face wash with green tea extracts. Deep cleansing, removes impurities. Suitable for all skin types, paraben-free.', 4.4, 'Beauty & Makeup', false);

-- Grocery Items
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('g1r2o3c4-e5r6-7890-abcd-aaaaaaaaaaaa', 'Tata Tea Premium - 1kg Pack', 'https://images.pexels.com/photos/1793037/pexels-photo-1793037.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium quality tea leaves with rich flavor. Perfect blend for morning refreshment. Long-lasting freshness guaranteed.', 4.5, 'Grocery Items', true),
  ('g2r3o4c5-e6r7-8901-bcde-bbbbbbbbbbbb', 'Fortune Refined Sunflower Oil - 5L', 'https://images.pexels.com/photos/4198374/pexels-photo-4198374.jpeg?auto=compress&cs=tinysrgb&w=800', 'Pure refined sunflower oil for healthy cooking. Rich in Vitamin E, light and healthy. Perfect for all types of cooking.', 4.4, 'Grocery Items', false),
  ('g3r4o5c6-e7r8-9012-cdef-cccccccccccc', 'Amul Butter - 500g Pack', 'https://images.pexels.com/photos/8477984/pexels-photo-8477984.jpeg?auto=compress&cs=tinysrgb&w=800', 'Fresh and creamy butter made from pure milk. Perfect for spreading, cooking, and baking. Rich in taste and nutrition.', 4.6, 'Grocery Items', true);

-- Home & Kitchen
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('h1k2i3t4-c5h6-7890-abcd-dddddddddddd', 'Prestige Non-Stick Cookware Set - 3 Pieces', 'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium non-stick cookware set with induction base. Includes kadai, tawa, and fry pan. Easy to clean, durable construction.', 4.5, 'Home & Kitchen', true),
  ('h2k3i4t5-c6h7-8901-bcde-eeeeeeeeeeee', 'Milton Thermosteel Water Bottle - 1L', 'https://images.pexels.com/photos/2479101/pexels-photo-2479101.jpeg?auto=compress&cs=tinysrgb&w=800', 'Insulated steel water bottle keeps beverages hot/cold for 24 hours. Leak-proof design, easy to carry. Perfect for office and travel.', 4.6, 'Home & Kitchen', true),
  ('h3k4i5t6-c7h8-9012-cdef-ffffffffffff', 'Havells Ceiling Fan - 1200mm', 'https://images.pexels.com/photos/1090638/pexels-photo-1090638.jpeg?auto=compress&cs=tinysrgb&w=800', 'High-speed ceiling fan with aerodynamic design. Energy efficient, silent operation. 2-year warranty included.', 4.4, 'Home & Kitchen', false);

-- Personal Care
INSERT INTO products (id, name, image, description, rating, category, is_trending) VALUES
  ('p1c2a3r4-e5c6-7890-abcd-gggggggggggg', 'Gillette Fusion Razor with 5 Cartridges', 'https://images.pexels.com/photos/3865792/pexels-photo-3865792.jpeg?auto=compress&cs=tinysrgb&w=800', 'Premium 5-blade razor system for close and comfortable shave. Precision trimmer for hard-to-reach areas. Long-lasting cartridges.', 4.5, 'Personal Care', true),
  ('p2c3a4r5-e6c7-8901-bcde-hhhhhhhhhhhh', 'Nivea Soft Light Moisturizer - 200ml', 'https://images.pexels.com/photos/3018845/pexels-photo-3018845.jpeg?auto=compress&cs=tinysrgb&w=800', 'Light moisturizing cream with Vitamin E and Jojoba oil. Non-greasy, fast absorption. Suitable for face, body, and hands.', 4.4, 'Personal Care', false),
  ('p3c4a5r6-e7c8-9012-cdef-iiiiiiiiiiii', 'Colgate Total Advanced Toothpaste - 200g', 'https://images.pexels.com/photos/4202326/pexels-photo-4202326.jpeg?auto=compress&cs=tinysrgb&w=800', 'Advanced formula toothpaste for complete oral care. Fights germs for 12 hours. Strengthens teeth and freshens breath.', 4.6, 'Personal Care', true);

-- Sample price data for new products
INSERT INTO price_data (product_id, platform, price, discount, delivery, url) VALUES
  -- Levi's Jeans
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Amazon', 2499.00, '30% off', '1-2 days', 'https://amazon.in/levis-jeans'),
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Flipkart', 2599.00, '28% off', '2-3 days', 'https://flipkart.com/levis-jeans'),
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Myntra', 2449.00, '32% off', '2-3 days', 'https://myntra.com/levis-jeans'),

  -- Women's Kurti
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Amazon', 899.00, '40% off', '1-2 days', 'https://amazon.in/kurti-set'),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Flipkart', 949.00, '38% off', '2-3 days', 'https://flipkart.com/kurti-set'),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Myntra', 879.00, '42% off', '2-3 days', 'https://myntra.com/kurti-set'),

  -- Leather Backpack
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Amazon', 1999.00, '50% off', '2-3 days', 'https://amazon.in/laptop-backpack'),
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Flipkart', 2099.00, '48% off', '3-4 days', 'https://flipkart.com/laptop-backpack'),

  -- Women's Handbag
  ('b2a3c4d5-e6f7-8901-bcde-555555555555', 'Amazon', 1499.00, '45% off', '1-2 days', 'https://amazon.in/handbag'),
  ('b2a3c4d5-e6f7-8901-bcde-555555555555', 'Myntra', 1449.00, '47% off', '2-3 days', 'https://myntra.com/handbag'),

  -- Lakme Lipstick
  ('m1b2c3d4-e5f6-7890-abcd-777777777777', 'Amazon', 599.00, '25% off', '1-2 days', 'https://amazon.in/lakme-lipstick'),
  ('m1b2c3d4-e5f6-7890-abcd-777777777777', 'Flipkart', 619.00, '22% off', '2-3 days', 'https://flipkart.com/lakme-lipstick'),
  ('m1b2c3d4-e5f6-7890-abcd-777777777777', 'Myntra', 589.00, '26% off', '2-3 days', 'https://myntra.com/lakme-lipstick'),

  -- Maybelline Foundation
  ('m2b3c4d5-e6f7-8901-bcde-888888888888', 'Amazon', 499.00, '30% off', '1-2 days', 'https://amazon.in/maybelline-foundation'),
  ('m2b3c4d5-e6f7-8901-bcde-888888888888', 'Flipkart', 519.00, '28% off', '2-3 days', 'https://flipkart.com/maybelline-foundation'),

  -- Tata Tea
  ('g1r2o3c4-e5r6-7890-abcd-aaaaaaaaaaaa', 'Amazon', 449.00, '10% off', '1-2 days', 'https://amazon.in/tata-tea'),
  ('g1r2o3c4-e5r6-7890-abcd-aaaaaaaaaaaa', 'Flipkart', 459.00, '8% off', '2-3 days', 'https://flipkart.com/tata-tea'),

  -- Amul Butter
  ('g3r4o5c6-e7r8-9012-cdef-cccccccccccc', 'Amazon', 285.00, '5% off', '1-2 days', 'https://amazon.in/amul-butter'),
  ('g3r4o5c6-e7r8-9012-cdef-cccccccccccc', 'Flipkart', 289.00, '4% off', '2-3 days', 'https://flipkart.com/amul-butter'),

  -- Prestige Cookware
  ('h1k2i3t4-c5h6-7890-abcd-dddddddddddd', 'Amazon', 1799.00, '40% off', '2-3 days', 'https://amazon.in/prestige-cookware'),
  ('h1k2i3t4-c5h6-7890-abcd-dddddddddddd', 'Flipkart', 1849.00, '38% off', '3-4 days', 'https://flipkart.com/prestige-cookware'),

  -- Milton Water Bottle
  ('h2k3i4t5-c6h7-8901-bcde-eeeeeeeeeeee', 'Amazon', 499.00, '35% off', '1-2 days', 'https://amazon.in/milton-bottle'),
  ('h2k3i4t5-c6h7-8901-bcde-eeeeeeeeeeee', 'Flipkart', 519.00, '33% off', '2-3 days', 'https://flipkart.com/milton-bottle'),

  -- Gillette Razor
  ('p1c2a3r4-e5c6-7890-abcd-gggggggggggg', 'Amazon', 899.00, '20% off', '1-2 days', 'https://amazon.in/gillette-razor'),
  ('p1c2a3r4-e5c6-7890-abcd-gggggggggggg', 'Flipkart', 919.00, '18% off', '2-3 days', 'https://flipkart.com/gillette-razor'),

  -- Colgate Toothpaste
  ('p3c4a5r6-e7c8-9012-cdef-iiiiiiiiiiii', 'Amazon', 189.00, '15% off', '1-2 days', 'https://amazon.in/colgate-toothpaste'),
  ('p3c4a5r6-e7c8-9012-cdef-iiiiiiiiiiii', 'Flipkart', 199.00, '12% off', '2-3 days', 'https://flipkart.com/colgate-toothpaste');

-- Sample price history for some trending products
INSERT INTO price_history (product_id, platform, price, date) VALUES
  -- Levi's Jeans history
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Amazon', 2799.00, NOW() - INTERVAL '30 days'),
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Amazon', 2649.00, NOW() - INTERVAL '20 days'),
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Amazon', 2549.00, NOW() - INTERVAL '10 days'),
  ('c1f2a3b4-d5e6-7890-abcd-111111111111', 'Amazon', 2499.00, NOW()),

  -- Women's Kurti history
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Amazon', 999.00, NOW() - INTERVAL '30 days'),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Amazon', 949.00, NOW() - INTERVAL '20 days'),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Amazon', 919.00, NOW() - INTERVAL '10 days'),
  ('c2f3a4b5-d6e7-8901-bcde-222222222222', 'Amazon', 899.00, NOW()),

  -- Leather Backpack history
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Amazon', 2299.00, NOW() - INTERVAL '30 days'),
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Amazon', 2149.00, NOW() - INTERVAL '20 days'),
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Amazon', 2049.00, NOW() - INTERVAL '10 days'),
  ('b1a2c3d4-e5f6-7890-abcd-444444444444', 'Amazon', 1999.00, NOW());
