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
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/logo.svg" alt="logo">
      </a>

      <nav class="flex items-center space-x-8 text-sm font-medium text-primary-dark max-[1094px]:hidden">
        <div class="relative">
          <button id="desktop-about-btn" class="hover:text-primary-blue flex items-center focus:outline-none">
            About Us
            <svg class="w-4 h-4 ml-1 mt-1 transition-transform duration-300" xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20" fill="currentColor">
              <path fill-rule="evenodd"
                d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                clip-rule="evenodd" />
            </svg>
          </button>

          <div id="desktop-about-dropdown"
            class="absolute hidden right-0 z-20 mt-1 w-64 bg-white shadow-xl rounded-lg border border-gray-100 dropdown-triangle"
            style="min-width: 250px;">
            <a href="<?php echo site_url(); ?>/about-us"
              class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold border-b border-[#c0b9b9]">
              About us
            </a>
            <a href="#"
              class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold border-b border-[#c0b9b9]">
              Core Values
            </a>
            <a href="#" class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold">
              Partners
            </a>
          </div>
        </div>

        <div class="relative">
          <button id="desktop-solutions-btn"
            class="desktop-solutions-btn hover:text-primary-blue flex items-center focus:outline-none">
            Solutions
            <svg class="w-4 h-4 ml-1 mt-1 transition-transform duration-300" xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20" fill="currentColor">
              <path fill-rule="evenodd"
                d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                clip-rule="evenodd" />
            </svg>
          </button>

          <div id="desktop-solutions-dropdown"
            class="desktop-solutions-dropdown absolute hidden right-0 z-20 mt-1 w-64 bg-white shadow-xl rounded-lg border border-gray-100 dropdown-triangle">
            <a href="<?php echo site_url(); ?>/dds-enterprise-cloud-platform/"
              class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold border-b border-[#c0b9b9]">
              DDS Enterprise Cloud Platform
            </a>
            <a href="<?php echo site_url(); ?>/dds-saas-platform-for-smes/"
              class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold border-b border-[#c0b9b9]">
              DDS SaaS Platform for SMEs
            </a>
            <a href="<?php echo site_url(); ?>/dds-retail/" class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold">
              DDS Retail
            </a>
          </div>
        </div>

        <a href="<?php echo site_url(); ?>/success-stories/" class="hover:text-primary-blue">Success Stories</a>
        <a href="<?php echo site_url(); ?>/career/" class="hover:text-primary-blue">Careers</a>
        <a href="<?php echo site_url(); ?>/resources/" class="hover:text-primary-blue">Resources</a>
        <div class="max-[1094px]:hidden">
          <a href="<?php echo site_url(); ?>/contact-us/"
            class="bg-primary-navy text-white px-4 py-2 rounded-md text-sm font-medium hover:bg-primary-teal transition">
            Contact Us
          </a>
        </div>
      </nav>

      <div class="hidden max-[1094px]:block">
        <button id="menu-btn" class="text-gray-700 focus:outline-none">
          <svg id="menu-icon" xmlns="http://www.w3.org/2000/svg" class="h-7 w-7" fill="none" viewBox="0 0 24 24"
            stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>
    </div>

    <div id="mobile-menu" class="menu-hidden px-4 pb-4 space-y-3 text-sm font-medium text-primary-dark">
      <div>
        <button id="mobile-about-btn"
          class="flex items-center justify-between w-full text-left hover:text-primary-blue focus:outline-none py-1">
          About Us
          <svg id="mobile-about-arrow" class="w-4 h-4 transition-transform duration-300 transform"
            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd"
              d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </button>
        <div id="mobile-about-dropdown" class="hidden pl-4 pt-1 space-y-2 text-sm text-gray-600">
          <a href="<?php echo site_url(); ?>/about-us" class="block hover:text-gray-800">About us</a>
          <a href="#" class="block hover:text-gray-800">Core Values</a>
          <a href="#" class="block hover:text-gray-800">Partners</a>
        </div>
      </div>

      <div>
        <button id="mobile-solutions-btn"
          class="flex items-center justify-between w-full text-left hover:text-primary-blue focus:outline-none py-1">
          Solutions
          <svg id="mobile-solutions-arrow" class="w-4 h-4 transition-transform duration-300 transform"
            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd"
              d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
              clip-rule="evenodd" />
          </svg>
        </button>
        <div id="mobile-solutions-dropdown" class="hidden pl-4 pt-1 space-y-2 text-sm text-gray-600">
          <a href="<?php echo site_url(); ?>/dds-enterprise-cloud-platform/" class="block hover:text-gray-800">DDS Enterprise Cloud Platform </a>
          <a href="<?php echo site_url(); ?>/dds-saas-platform-for-smes/" class="block hover:text-gray-800">DDS SaaS Platform for SMEs</a>
          <a href="./retail.html" class="block hover:text-gray-800">DDS Retail</a>
        </div>
      </div>

      <a href="<?php echo site_url(); ?>/success-stories/" class="block hover:text-primary-blue">Success Stories</a>
      <a href="<?php echo site_url(); ?>/career/" class="block hover:text-primary-blue">Careers</a>
      <a href="<?php echo site_url(); ?>/resources/" class="block hover:text-primary-blue">Resources</a>
      <a href="<?php echo site_url(); ?>/contact-us/" class="block bg-primary-navy text-white px-4 py-2 rounded-md text-center">Contact Us</a>
    </div>

  </header>