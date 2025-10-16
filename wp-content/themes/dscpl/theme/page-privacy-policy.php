
<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no `home.php` file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package dscpl
 */

get_header();
?>
 <section class="bg-white">
    <div class=" min-h-screen  mt-8">
    <div class="bg-[#F5FDFF] backdrop-blur-sm rounded-none sm:rounded-2xl shadow-sm px-4 py-6 sm:p-10 w-full max-w-7xl mx-auto">
      <!-- Inner White Box -->
      <section class="bg-white rounded-lg shadow-sm border border-gray-100 p-4 sm:p-8">
        <!-- Title -->
        <h2 class="text-base sm:text-lg font-semibold text-gray-800 mb-2">
          Privacy Policy
        </h2>

        <p class="font-semibold text-gray-700 mb-1 text-sm sm:text-base">
          Your Agreement
        </p>

        <!-- Scrollable Text -->
        <div class="max-h-[45vh] sm:max-h-[300px] overflow-y-auto pr-2 text-gray-700 text-sm leading-relaxed space-y-3">
          <p class="font-medium">1. Introduction</p>
          <p>
            Welcome to Digital Distribution Solutions.
          </p>
          <p>
            Digital Distribution Solutions (“us”, “we”, or “our”) operates
            <a href="https://ddsolutions.tech" class="text-blue-600 underline">https://ddsolutions.tech</a>
            (hereinafter referred to as “Service”).
          </p>
          <p>
            Our Privacy Policy governs your visit to
            <a href="https://ddsolutions.tech" class="text-blue-600 underline">https://ddsolutions.tech</a>,
            and explains how we collect, safeguard, and disclose information that results from your use of our Service.
          </p>
          <p>
            We use your data to provide and improve Service. By using the Service, you agree to the collection and use
            of information in accordance with this policy.
          </p>
          <p>
            In this Privacy Policy, the terms used have the same meanings as in our Terms and Conditions.
          </p>
          <p>
            Our Terms and Conditions (“Terms”) govern all use of our Service and together with the Privacy Policy
            constitute your agreement with us (“agreement”).
          </p>

          <p class="font-medium pt-2">2. Definitions</p>
          <p>
            SERVICE means the
            <a href="https://ddsolutions.tech" class="text-blue-600 underline">https://ddsolutions.tech</a>
            website operated by Digital Distribution Solutions.
          </p>
          <p>
            PERSONAL DATA means data about a living individual who can be identified from those data (or from those and
            other information either in our possession or likely to come into our possession).
          </p>
        </div>

        <!-- Divider -->
        <div class="border-t border-gray-200 mt-6 pt-4"></div>

        <!-- Checkbox + Buttons -->
        <div class="mt-3 flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <label class="flex items-start sm:items-center gap-3 text-sm text-gray-700">
            <input
              type="checkbox"
              class="mt-1 sm:mt-0 w-5 h-5 rounded border-gray-300 accent-blue-600 cursor-pointer"
            />
            <span class="font-semibold leading-snug">
              I confirm that I have read and accept the terms and conditions and privacy policy.
            </span>
          </label>

          <div class="flex items-center gap-3 sm:gap-4 sm:justify-end">
            <button class="w-full sm:w-auto text-sm px-4 py-2 text-gray-700 hover:text-gray-900 hover:bg-gray-50 rounded-md">
              Cancel
            </button>
            <button
              class="w-full sm:w-auto px-6 py-2 text-sm rounded-md bg-gray-200 text-gray-500 cursor-not-allowed"
              aria-disabled="true"
            >
              Accept
            </button>
          </div>
        </div>
      </section>
    </div>
</div>
  </section>
<?php
get_footer();
