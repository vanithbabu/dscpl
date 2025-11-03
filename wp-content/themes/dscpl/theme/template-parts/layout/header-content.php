<?php
   /**
    * Template part for displaying the header content
    *
    * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
    *
    * @package dscpl
    */
   
   ?>
<header class="w-full shadow-sm">
   <div class="max-w-7xl mx-auto flex items-center justify-between px-4 py-3">
      <a href="<?php echo site_url(); ?>" class="flex items-center space-x-2">
      <img src="<?php echo get_field('header_logo', 'options')['url']; ?>" alt="logo">
      </a>
      <nav class="hidden lg:flex items-center space-x-8 text-sm font-medium text-primary-dark  max-[1094px]:hidden">
         <?php
            wp_nav_menu([
              'theme_location' => 'desktop_menu',
              'container'      => false,
              'menu_class'     => 'flex space-x-8 items-center',
              'fallback_cb'    => false,
             'walker'         => new DSCPL_Tailwind_Walker(),
            ]);
            ?>
      </nav>
      <div class="hidden max-[1094px]:block">
         <button id="menu-btn" class="text-gray-700 focus:outline-none">
            <!-- Hamburger Icon -->
            <svg id="menu-open-icon" xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 block" fill="none" viewBox="0 0 24 24"
               stroke="currentColor">
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M4 6h16M4 12h16M4 18h16" />
            </svg>
            <!-- Close Icon -->
            <svg id="menu-close-icon" xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 hidden" fill="none"
               viewBox="0 0 24 24" stroke="currentColor">
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M6 18L18 6M6 6l12 12" />
            </svg>
         </button>
      </div>
   </div>
   <div id="mobile-menu" class="menu-hidden px-4 pb-4 space-y-3 text-sm font-medium text-primary-dark">
      <?php
         wp_nav_menu([
           'theme_location' => 'desktop_menu',
           'container'      => false,
           'menu_class'     => 'flex flex-col space-y-2',
           'fallback_cb'    => false,
           'walker'         => new DSCPL_Tailwind_Mobile_Walker(),
         ]);
         ?>
   </div>
</header>
