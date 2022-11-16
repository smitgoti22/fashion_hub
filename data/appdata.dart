import 'package:fashion_hub/screens/Home/Cart_Screen/cart_screen.dart';
import 'package:fashion_hub/screens/Home/Categories/categories_screen.dart';
import 'package:fashion_hub/screens/Home/favorite_screen.dart';
import 'package:fashion_hub/screens/Home/profile_screen.dart';
import 'package:flutter/material.dart';

import '../screens/Home/home_screen.dart';

/// Welcome data

List welcomedata = [
  {
    'image' : 'assets/welcome_screen/wel_1.png',
    'title' : 'Online Order',
    'desc' : 'You can see the product with all angles, true and convenient'
  },
  {
    'image' : 'assets/welcome_screen/wel_2.png',
    'title' : 'Easy Payment',
    'desc' : 'You just need to take a photo or upload and we will find similar products for you.'
  },
  {
    'image' : 'assets/welcome_screen/wel_3.png',
    'title' : 'Fast Delivery',
    'desc' : 'You just need to take a photo or upload and we will find similar products for you.'
  }
];

/// Home Screen

List snaphomeimage = [
  {
    'image' :"https://images.unsplash.com/photo-1559070081-648fb00b2ed1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGFjY2Vzc29yaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    'title' : 'Fashion Sale',
    'subtitle' : 'See More >'
  },
  {
    'image' : "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbiUyMHNhbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    'title' : 'KidsWare Sale',
    'subtitle' : 'See More >'
  },
  {
    'image' : "https://images.unsplash.com/photo-1576053139778-7e32f2ae3cfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFjY2Vzc29yaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    'title' : 'Watch Sale',
    'subtitle' : 'See More >'
  },
  {
    'image' : "https://images.unsplash.com/photo-1580571961449-f1d0e40daf50?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdHdhcmV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    'title' : 'Footware Sale',
    'subtitle' : 'See More >'
  }];


List cataloguehomedata = [
  {
    'image': "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    'title': "Women's\nFashion",
  },
  {
    'image': "https://images.unsplash.com/photo-1620834767726-61b1986287ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbiUyMGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    'title': "Men's\nFashion",
  },
  {
    'image': "https://images.unsplash.com/photo-1609252925148-b0f1b515e111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    'title': "Phones",
  },
  {
    'image': "https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29tcHV0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    'title': "Computers",
  },
  {
    'image': "https://images.unsplash.com/photo-1612817288484-6f916006741a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    'title': "Beauty",
  },
];

/// featured
List featuredProducts = [
  {
    'image': 'https://m.media-amazon.com/images/I/51IXexMKqqL._UX466_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/51h1CKHz70L._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/51Wvty2QP3L._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/615ugUlXFvL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/51mSfaCiZIL._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/71rJPUDA5WL._UX679_.jpg',
    'title': "Shasmi Women's Georgette Digital Printed Maxi Dress for Women (Maxi Dress 39)",
    'price' : '₹664.00',
    'dprice' : '₹2,499.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",
  },
  {
    'image': 'https://m.media-amazon.com/images/I/91g6xATRjKL._UY550_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/81iNpdeU6dL._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/81jZ05Shk6L._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/9199nFmnZQL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/A1HdOOqtLTL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/A1fo9hbEnhL._UY741_.jpg',
    'title': 'Western Dresses for Women |A-Line Knee-Length Dress | Indo Western',
    'price' : '₹499.00',
    'dprice' : '₹999.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/61akA1Lfz5L._UY741_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/51+Yn8iEovL._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/61Hss2fUVsL._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/61ggUeNeODL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/61t-PYuS7pL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/81em5jEUCKL._UY741_.jpg',
    'title': "Sheetal Associates Women's Ruffle Sleeves Bodycon Slit Maxi Dress",
    'price' : '₹349.00',
    'dprice' : '₹599.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/61tbmtkOBUL._UX679_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/61dJFEiSZ0L._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/61-wjTC4pIL._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/61yIKOFMPHL._UX679_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/71-r4LwMD9L._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/818deiR84XL._UX679_.jpg',
    'title': "Janasya Women's Woven Cotton Western Dress",
    'price' : '₹629.00',
    'dprice' : '₹849.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/61ALQKAE3dL._UY741_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/616XItMMqML._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/614KbNGmV5L._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/717mPWn2pZL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/61qH0QRaMnL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/61GI+1WqK6L._UY741_.jpg',
    'title': "Rayon Bodycon Women's Long Dress Womens Girls Maxi a line one Piece Urbanic Style",
    'price' : '₹999.00',
    'dprice' : '₹1899.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/71Jbu6h8DxL._UX679_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/61EOd4xsknL._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/71qM9nCs61L._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/71tqFCkRaAL._UX679_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/71sEYKKYLxL._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/71nBZ0WVzJL._UX679_.jpg',
    'title': "Harpa Women's Polyester a-line Knee-Length Dress",
    'price' : '₹1949.00',
    'dprice' : '₹5999.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
];

/// product images

List productImages = [
  currunt_item[currunt_index]['image'],
  currunt_item[currunt_index]['i1'],
  currunt_item[currunt_index]['i2'],
  currunt_item[currunt_index]['i3'],
  currunt_item[currunt_index]['i4'],
  currunt_item[currunt_index]['i5'],
];

/// product size
List productSize = [
  "XXS",
  "XS",
  "S",
  "M",
  "L",
  "XL",
];

/// bottom navigation data

List bottomdata = [
  {
    'screen' : 'Home',
    'activeicon' : 'assets/home.png',
    'inactiveicon' : 'assets/home (1).png',
  },
  {
    'screen' : 'Categories',
    'activeicon' : 'assets/menu (2).png',
    'inactiveicon' : 'assets/menu (1).png',
  },
  {
    'screen' : 'Favorite',
    'activeicon' : 'assets/healthcare.png',
    'inactiveicon' : 'assets/love.png',
  },

  {
    'screen' : 'Profile',
    'activeicon' : 'assets/user (1).png',
    'inactiveicon' : 'assets/user.png',
  },
];

List bottomscreens = [
  const HomeScreen(),
  const CatagouriesScreen(),
  const FavouriteScreen(),
  const ProfileScreen(),
  const CartScreen()
];
List catalog_subcatagory = [
    'Westernwear',
    'Ethnic & Fusionwear',
    'Footwear',
    'Lingerie',
    'Bags, Wallets & Cluthes',
    'Jewellery',
    'Other Accessories',
    'Beauty & Personal Care',
    'Sports & Activewear',
    'Luggage & Trolleys',
    'Sleepwear & Longewear',
    'Watches',
    'Winterwear Store',
    'Gift Card'
];

List cataloguedata = [
  {
    'image' : 'assets/freestocks-_3Q3tsJ01nc-unsplash-removebg-preview.png',
    'title' : 'WOMEN',
    'subtitle' : 'Top & Tees, Kurtas & Suits... ',
  },

  {
    'image' : 'assets/spencer-davis-LKqlstiEw8I-unsplash-removebg-preview.png',
    'title' : 'MEN',
    'subtitle' : 'T-Shirts, Shirts, Jeans, Shoes...',
  },

  {
    'image' : 'assets/edward-cisneros-r_Tnjj6TB30-unsplash-removebg-preview.png',
    'title' : 'KIDS',
    'subtitle' : 'Clothing, Footwear, Brands...',
  },

  {
    'image' : 'assets/becca-tapert-dO3qTKxwik0-unsplash-removebg-preview.png',
    'title' : 'KITCHEN',
    'subtitle' : 'Sofa, Bedsheets, Cushion...',
  },

  {
    'image' : 'assets/sonia-roselli-tWng4d9Njxo-unsplash-removebg-preview.png',
    'title' : 'BEAUTY',
    'subtitle' : 'Makeup, Fragrances, Groom...',
  },

  {
    'image' : 'assets/ady-teenagerinro-sQ0xXxQdfeY-unsplash-removebg-preview.png',
    'title' : 'GADGETS',
    'subtitle' : 'Head phones, Mobile covers...',
  },
];


/// sub catagory

List subcatagory = [
  'All',
  'Dress',
  'Sweater',
  'Jeans',
  'Tops',
  'T-shirt',
  'Kurta',
  'Sleeve',
];

/// sub catagory
List subcatagoryProducts = [
  {
    'image': 'https://m.media-amazon.com/images/I/91xJ8fEwa4L._UX679_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/51h1CKHz70L._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/51Wvty2QP3L._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/615ugUlXFvL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/51mSfaCiZIL._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/71rJPUDA5WL._UX679_.jpg',
    'title': "Shasmi Women's Georgette Digital Printed Maxi Dress for Women (Maxi Dress 39)",
    'price' : '₹664.00',
    'dprice' : '₹2,499.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",
  },
  {
    'image': 'https://m.media-amazon.com/images/I/81-OiPWQYeL._UY741_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/81iNpdeU6dL._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/81jZ05Shk6L._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/9199nFmnZQL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/A1HdOOqtLTL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/A1fo9hbEnhL._UY741_.jpg',
    'title': 'Western Dresses for Women |A-Line Knee-Length Dress | Indo Western',
    'price' : '₹499.00',
    'dprice' : '₹999.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/716HZvqMrIL._UY679_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/51+Yn8iEovL._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/61Hss2fUVsL._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/61ggUeNeODL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/61t-PYuS7pL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/81em5jEUCKL._UY741_.jpg',
    'title': "Sheetal Associates Women's Ruffle Sleeves Bodycon Slit Maxi Dress",
    'price' : '₹349.00',
    'dprice' : '₹599.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/81G1xeLvjzL._UX679_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/61dJFEiSZ0L._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/61-wjTC4pIL._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/61yIKOFMPHL._UX679_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/71-r4LwMD9L._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/818deiR84XL._UX679_.jpg',
    'title': "Janasya Women's Woven Cotton Western Dress",
    'price' : '₹629.00',
    'dprice' : '₹849.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/81XQqkSOaeL._AC_UL320_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/616XItMMqML._UY741_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/614KbNGmV5L._UY741_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/717mPWn2pZL._UY741_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/61qH0QRaMnL._UY741_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/61GI+1WqK6L._UY741_.jpg',
    'title': "Rayon Bodycon Women's Long Dress Womens Girls Maxi a line one Piece Urbanic Style",
    'price' : '₹999.00',
    'dprice' : '₹1899.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
  {
    'image': 'https://m.media-amazon.com/images/I/71J+dD2uOOL._UY741_.jpg',
    'i1' : 'https://m.media-amazon.com/images/I/61EOd4xsknL._UX679_.jpg',
    'i2' : 'https://m.media-amazon.com/images/I/71qM9nCs61L._UX679_.jpg',
    'i3' : 'https://m.media-amazon.com/images/I/71tqFCkRaAL._UX679_.jpg',
    'i4' : 'https://m.media-amazon.com/images/I/71sEYKKYLxL._UX679_.jpg',
    'i5' : 'https://m.media-amazon.com/images/I/71nBZ0WVzJL._UX679_.jpg',
    'title': "Harpa Women's Polyester a-line Knee-Length Dress",
    'price' : '₹1949.00',
    'dprice' : '₹5999.00',
    'desc' : "Women's Casual V-Neck Pullover Sweater long Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...",

  },
];

List colorlist = [
  Colors.black,
  Colors.pink,
  Colors.blue,
  Colors.amber,
  Colors.green,
  Colors.grey,
  Colors.red,
];

List catagoryselector = [
  'Dresses',
  'T-Shirt',
  'Tops',
  'Kurti',
  'Plaza',
  'Jeans'
];

List brandselector = [
  'Nova',
  'Relaxo',
  'Nike',
  'Puma',
  'Laxco',
];

List sortselector = [
  'Featured',
  'Newest',
  'Popular',
  'Trending',
  'Ratings',
];

List deleverymethod = [
  {
    'image' : 'assets/dhl-icon-21197.png',
    'price' : '\$15',
    'time' : '1-2 days'
  },
  {
    'image' : 'assets/FedEx_Logo.png',
    'price' : '\$25',
    'time' : '1-2 days'
  },
  {
    'image' : 'assets/Blue_Dart_logo_transparent.png',
    'price' : '\$15',
    'time' : '1-2 days'
  },
];