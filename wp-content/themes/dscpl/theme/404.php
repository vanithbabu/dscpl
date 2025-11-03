<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package dscpl
 */

get_header();
?>

	<section id="primary">
	   <div class="bg-[#EAFFFE] w-full overflow-hidden">
<div class="flex  flex-col min-h-screen items-center justify-center p-8 sm:p-12  text-center  w-full mx-4">
        <h1
            class="text-7xl sm:text-8xl font-sans font-extrabold bg-gradient-to-r from-[#44B1C5] to-[#281D58] bg-clip-text text-transparent mb-4">
            404
        </h1>

        <p class="text-gray-500 text-lg mb-8">
            Oops! The page you're looking for does not exist.
        </p>
        </div>
    </div>
	</section><!-- #primary -->

<?php
get_footer();
