
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

    <main>
        <section class="relative min-h-[500px] flex items-center bg-white  overflow-hidden">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/blueEllipse.svg" alt="background image"
                class="absolute bottom-0 left-[20%] w-[800px]" />

            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/bluecube.svg" alt="background image" class="absolute bottom-[30%] left-[30%]" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Linear.svg" alt="background image"
                class="absolute bottom-[14%] right-[-3%] hidden lg:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Linear.svg" alt="background image"
                class="absolute top-[15%] right-[-40%] hidden lg:block" />

            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/bluecube.svg" alt="background image"
                class="absolute top-0 right-[15%] hidden md:block" />

            <div class="max-w-7xl mx-auto px-4 relative z-10 w-full">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center py-4 lg:py-16">

                    <div class="text-white">
                        <h1 class="text-xl sm:text-3xl md:text-[42px] font-bold leading-tight mb-6">
                            <span class="text-[#2E7382]">DDS FMCG Challenges</span>
                            <br class="hidden lg:block">
                            <span class="text-[#2E7382]"> Solved by</span>
                            <span class="text-accent-orange"> DDS</span>
                        </h1>
                        <p class="text-md sm:text-xl md:text-[20px] font-normal mb-8 max-w-lg text-[#191B44]">
                            Address stockouts, manual processes, and delayed payments with DDS’s automation and
                            visibility features.
                        </p>

                        <div class="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4">
                            <a href="#"
                                class="freeButton transform hover:scale-[1.01] transition duration-300  inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] transition duration-300 shadow-lg">
                                Contact Sales <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
                            </a>
                        </div>
                    </div>

                    <div class="relative w-full">
                        <div class="mb-8 flex justify-end">
                            <a href="#"
                                class=" px-2 py-1 text-base font-medium rounded-full text-white bg-accent-orange ">
                                Challenges
                            </a>
                        </div>
                        <div class="flex flex-row space-x-2 overflow-hidden">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/africanManager.png" alt="Girl">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/curlyhair.png" alt="Group" class="mt-8">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/farm.png" alt="Girl">
                        </div>
                        <div class="mt-12">
                            <a href="#"
                                class=" px-2 py-1 text-base font-medium rounded-full text-white bg-accent-orange ">
                                Challenges
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-4 md:py-16 px-4">
            <div class="max-w-7xl mx-auto">
                <div class="text-center mb-12">
                    <h2 class="text-3xl md:text-4xl font-bold text-[#191B44] mb-3">Latest Posts</h2>
                    <p class="text-gray-500 text-sm md:text-base">Nam et rutrum ex, venenatis sollicitudin urna erat
                        volutpat.</p>
                </div>

                <div class="grid lg:grid-cols-3 gap-8">
                    <div class="lg:col-span-2">
                        <div class="bg-white rounded-lg border border-gray-200 overflow-hidden h-full flex flex-col">
                            <a href="#"
                                class="transform hover:scale-[1.01] transition duration-300  inline-flex items-center justify-center px-2 py-2 text-base font-medium rounded-lg text-white   bg-primary-blue  transition duration-300 shadow-lg w-32 m-6">
                                E-BOOKS <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/book.svg" alt="arrow" class="mt-1 ml-2">
                            </a>
                            <div class="px-6 pt-4">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/CarrerAD-scaled.jpg" alt="Team collaboration"
                                    class="w-full h-64 md:h-80 object-cover">
                            </div>

                            <div class="p-6 flex-grow flex flex-col">
                                <h3
                                    class="text-xl md:text-2xl font-bold text-[#191B44] mb-3 hover:text-blue-600 cursor-pointer transition">
                                    Partnering with DSCPL for FMCG Success
                                </h3>
                                <p class="text-gray-600 text-sm md:text-base mb-6">
                                    Lorem ipsum dolor sit amet consectetur adipiscing elit mollis sit aliquam at
                                    nullam neque ultrices.
                                </p>

                                <div
                                    class="flex   flex-col sm:flex-row  items-center justify-between pt-4 border-t border-gray-200">
                                    <div class="flex items-center space-x-2">
                                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Circleprofile.svg" alt="Team collaboration" />
                                        <span class="text-sm text-[#191B44] font-bold">Anna Maria Lopez</span>
                                    </div>
                                    <div class="flex items-center text-sm space-x-3 font-bold text-[#191B44]">
                                        <span>Mar 15, 2022</span>
                                        <span>•</span>
                                        <span>10 min read</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="lg:col-span-1 space-y-6">
                        <div class="bg-white rounded-lg  p-6 border border-gray-200">
                            <div class="flex items-center justify-between mb-6">
                                <h3 class=" text-lg md:text-2xl font-bold text-gray-900">Trending Post</h3>
                                <a href="#" class="text-xs text-gray-400 hover:text-blue-700 font-medium">View all
                                    new</a>
                            </div>

                            <div class="space-y-5">
                                <div class="pb-5 border-t border-gray-200 pt-2">
                                    <p class="text-xs text-gray-400 mb-2">SEP 04, 2018</p>
                                    <h4
                                        class="text-sm font-semibold text-gray-900 hover:text-blue-600 cursor-pointer transition leading-snug">
                                        Real-Time Analytics for FMCG Supply Chains
                                    </h4>
                                </div>

                                <div class="pb-5 ">
                                    <p class="text-xs text-gray-400 mb-2">SEP 04, 2018</p>
                                    <h4
                                        class="text-sm font-semibold text-gray-900 hover:text-blue-600 cursor-pointer transition leading-snug">
                                        Scaling FMCG with Cloud Based Solutions
                                    </h4>
                                </div>

                                <div class="pb-5">
                                    <p class="text-xs text-gray-400 mb-2">SEP 04, 2018</p>
                                    <h4
                                        class="text-sm font-semibold text-gray-900 hover:text-blue-600 cursor-pointer transition leading-snug">
                                        5 FMCG Challenges Solved by DDS
                                    </h4>
                                </div>

                                <div>
                                    <p class="text-xs text-gray-400 mb-2">SEP 04, 2018</p>
                                    <h4
                                        class="text-sm font-semibold text-gray-900 hover:text-blue-600 cursor-pointer transition leading-snug">
                                        Partnering with DSCPL for FMCG Success
                                    </h4>
                                </div>
                            </div>
                        </div>

                        <div class="bg-[#181C44] rounded-lg shadow-md p-6 text-white relative overflow-hidden">
                            <div class="relative z-10">
                                <div class="flex items-center justify-center mb-4">
                                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/whiteLogo.svg" alt="DSCPL Logo" class="h-10 w-auto">
                                </div>
                                <div class="flex items-center mb-4">
                                    <div>
                                        <h3 class="text-xl font-bold mb-3 leading-tight">
                                            Have you tried personalized Updates on WhatsApp?
                                        </h3>
                                        <p class="text-sm text-indigo-200 mb-6 leading-relaxed">
                                            Did you know that over 70% of online shopping carts are abandoned? That's a
                                            lot
                                            of
                                            potential revenue lost!
                                        </p>
                                        <button
                                            class="freeButton bg-[#448F9D]  text-white px-6 py-2.5 rounded-full text-sm font-semibold transition duration-300 shadow-lg">
                                            GET FREE DEMO
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="max-w-7xl mx-auto px-4 py-4 md:py-12">
            <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-8 gap-4">
                <h2 class="text-2xl md:text-3xl font-bold text-primary-dark">Latest articles</h2>

                <div class="flex flex-col sm:flex-row items-start sm:items-center gap-3 sm:gap-4">
                    <div class="flex flex-wrap gap-2">
                        <button
                            class="px-4 py-2 text-sm font-medium text-gray-600  bg-[#F1F3F7] rounded-md hover:text-primary-blue transition">
                            All
                        </button>
                        <button
                            class="px-4 py-2 text-sm font-medium text-white bg-primary-navy rounded-md hover:bg-primary-teal transition">
                            Entertainment
                        </button>
                        <button
                            class="px-4 py-2 text-sm font-medium text-gray-600 bg-[#F1F3F7] rounded-md hover:text-primary-blue transition">
                            Books
                        </button>
                        <button
                            class="px-4 py-2 text-sm font-medium text-gray-600 bg-[#F1F3F7] rounded-md hover:text-primary-blue transition">
                            Case Study
                        </button>
                    </div>
                </div>
            </div>
            <div class="flex flex-col sm:flex-row justify-between">
                <div class="mb-8">
                    <div class="relative max-w-xs">
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <svg class="h-5 w-5 text-black" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                fill="currentColor">
                                <path fill-rule="evenodd"
                                    d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                        <input type="text" placeholder="Article, PR, Results"
                            class="w-full pl-10 pr-10 py-2   bg-[#F3F5F6] rounded-md focus:outline-none focus:ring-2 focus:ring-primary-blue focus:border-transparent text-sm">
                        <button class="absolute inset-y-0 right-0 pr-3 flex items-center">
                            <svg class="h-5 w-5 text-black" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                fill="currentColor">
                                <path fill-rule="evenodd"
                                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                    clip-rule="evenodd" />
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="mb-6">
                    <button
                        class="px-4 py-2 text-sm font-medium text-[#44909F] border border-[#44909F] rounded-md hover:bg-[#44909F] hover:text-white transition">
                        View all
                    </button>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                <div
                    class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-300">
                    <div>
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/card3.png" alt="Warehouse" class="w-full h-48 object-cover">
                    </div>
                    <div class="p-5">
                        <div class="text-xs text-gray-500 mb-2">Anna Maria Lopez • </div>
                        <h3 class="text-lg font-bold text-primary-dark mb-3 hover:text-primary-blue cursor-pointer">
                            How to Overcome Inventory
                            Redundancies in Warehouses
                        </h3>
                        <p class="text-sm text-gray-600 mb-4 line-clamp-3">
                            Suspendisse potenti. Sed neque augue, mattis in
                            posuere quis, sagittis...

                        </p>
                        <div class="flex items-center justify-between">
                            <span class="text-xs text-gray-500">Mar 15, 2022 • 10 min read
                            </span>
                            <button
                                class="text-primary-blue hover:text-primary-teal border border-[#44909F] rounded-md p-2">
                                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                    fill="currentColor">
                                    <path fill-rule="evenodd"
                                        d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-300">
                    <div>
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/card2.png" alt="Distribution" class="w-full h-48 object-cover">
                    </div>
                    <div class="p-5">
                        <div class="text-xs text-gray-500 mb-2">Anna Maria Lopez • </div>
                        <h3 class="text-lg font-bold text-primary-dark mb-3 hover:text-primary-blue cursor-pointer">
                            How Automation is
                            Transforming FMCG
                            Distribution: A Guide for
                            Small Retailers
                        </h3>
                        <p class="text-sm text-gray-600 mb-4 line-clamp-3">
                            Explore how DSCPL’s DDS SaaS and Retail App
                            automate inventory, sales, and payments, helping
                            small retailers save time and reduce costs by up to
                            28%
                        </p>
                        <div class="flex items-center justify-between">
                            <span class="text-xs text-gray-500">Mar 25, 2025 • 10 min read</span>
                            <button
                                class="text-primary-blue hover:text-primary-teal border border-[#44909F] rounded-md p-2">
                                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                    fill="currentColor">
                                    <path fill-rule="evenodd"
                                        d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-300">
                    <div>
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/card1.png" alt="Retail" class="w-full h-48 object-cover">
                    </div>
                    <div class="p-5">
                        <div class="text-xs text-gray-500 mb-2">Anna Maria Lopez • </div>
                        <h3 class="text-lg font-bold text-primary-dark mb-3 hover:text-primary-blue cursor-pointer">
                            Automating FMCG Retail: A
                            Small Business Guide

                        </h3>
                        <p class="text-sm text-gray-600 mb-4 line-clamp-3">
                            Explore how DDS SaaS and Retail App automate
                            inventory, sales, and payments, saving small retailers
                            time and up to 28% in costs.
                        </p>
                        <div class="flex items-center justify-between">
                            <span class="text-xs text-gray-500">Mar 25, 2025 • 10 min read</span>
                            <button
                                class="text-primary-blue hover:text-primary-teal border border-[#44909F] rounded-md p-2">
                                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                                    fill="currentColor">
                                    <path fill-rule="evenodd"
                                        d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex items-center justify-center gap-2 mt-12">
                <button
                    class="w-10 h-10 flex items-center justify-center bg-[#E5FFFC] rounded-full  hover:bg-gray-50 transition">
                    <svg class="w-5 h-5 text-gray-600" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                        fill="currentColor">
                        <path fill-rule="evenodd"
                            d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
                            clip-rule="evenodd" />
                    </svg>
                </button>
                <button
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-[#E5FFFC]  hover:bg-gray-50 transition text-sm font-medium">
                    01
                </button>
                <button
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-[#448F9D] text-white text-sm font-medium">
                    02
                </button>
                <button
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-[#E5FFFC]  hover:bg-gray-50 transition text-sm font-medium">
                    03
                </button>
                <span class="px-2 text-gray-400">...</span>
                <button
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-[#E5FFFC]  hover:bg-gray-50 transition text-sm font-medium">
                    15
                </button>
                <button
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-[#E5FFFC] hover:bg-gray-50 transition text-sm font-medium">
                    16
                </button>
                <button
                    class="w-10 h-10 flex items-center justify-center  bg-[#E5FFFC] rounded-full  hover:bg-gray-50 transition">
                    <svg class="w-5 h-5 text-gray-600" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                        fill="currentColor">
                        <path fill-rule="evenodd"
                            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                            clip-rule="evenodd" />
                    </svg>
                </button>
            </div>
        </section>
        <section class="py-4 md:py-32 px-4 bg-[#F4FFFE] relative">
            <div class="max-w-7xl mx-auto">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/blueCircle.svg" alt="background image" class="absolute left-[8%]" />
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/blueCircle.svg" alt="background image"
                    class="absolute right-[1%]  hidden lg:block" />
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/teleicon.svg" alt="background image"
                    class="absolute left-[40%] top-[5%] hidden md:block" />
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/teleicon.svg" alt="background image"
                    class="absolute left-[35%] bottom-[0%] hidden md:block" />
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/teleicon.svg" alt="background image"
                    class="absolute left-[3%] bottom-[35%] hidden md:block" />
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/teleicon.svg" alt="background image"
                    class="absolute right-[5%] bottom-[5%] hidden md:block" />
                <div class="bg-[#448F9D] rounded-2xl overflow-hidden shadow-lg mb-12 hidden lg:block">
                    <div class="grid sm:grid-cols-1 md:grid-cols-2 gap-0">
                        <div class="p-8 md:p-12 lg:p-16 text-white flex flex-col justify-center">
                            <h2 class="text-2xl md:text-3xl lg:text-4xl font-bold mb-4">
                                Discover Our Exciting New Feature!
                            </h2>
                            <p class="text-base md:text-lg mb-6 opacity-90">
                                Experience innovation that transforms how you work.<br class="hidden xl:block" /> Don't
                                miss out!
                            </p>
                            <div>
                                <button
                                    class="bg-primary-navy text-white px-6 py-3 rounded-lg font-semibold hover:bg-primary-dark transition-colors inline-flex items-center">
                                    Get started
                                    <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M9 5l7 7-7 7" />
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <div>
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/brawnhairgirl.png" alt="Person using mobile device"
                                class="absolute bottom-[42%] w-20 sm:w-40 md:w-80 lg:w-auto" />
                        </div>
                    </div>
                </div>
                <div class="bg-[#448F9D] rounded-2xl overflow-hidden shadow-lg mb-12 block lg:hidden">
                    <div class="grid sm:grid-cols-1 md:grid-cols-2 gap-0">
                        <div class="p-4 md:p-12 lg:p-16 text-white flex flex-col justify-center">
                            <h2 class="text-2xl md:text-3xl lg:text-4xl font-bold mb-4">
                                Discover Our Exciting New Feature!
                            </h2>
                            <p class="text-base md:text-lg mb-6 opacity-90">
                                Experience innovation that transforms how you work.<br class="hidden xl:block" />
                                Don't miss out!
                            </p>
                            <div>
                                <button
                                    class="bg-primary-navy text-white px-6 py-3 rounded-lg font-semibold hover:bg-primary-dark transition-colors inline-flex items-center">
                                    Get started
                                    <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M9 5l7 7-7 7" />
                                    </svg>
                                </button>
                            </div>
                        </div>

                        <div class="flex justify-center items-center relative p-6">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/brawnhairgirl.png" alt="Person using mobile device"
                                class="w-40 sm:w-60 md:w-80 lg:w-auto h-auto object-contain" />
                        </div>
                    </div>
                </div>
                <div class="text-center max-w-2xl mx-auto">
                    <h2 class="text-3xl md:text-4xl font-bold text-primary-navy mb-3">
                        Subscribe to Our Newsletter
                    </h2>
                    <p class="text-gray-500 mb-8 text-sm">
                        Get the latest product updates, company news, and special offers delivered right to your
                        inbox.
                    </p>

                    <div class="flex flex-col sm:flex-row gap-0 justify-center items-center pb-8">
                        <input type="email" placeholder="Your email"
                            class="w-full sm:w-80 px-6 py-4 rounded-full sm:rounded-r-none border border-gray-200 focus:outline-none focus:ring-2 focus:ring-primary-teal focus:border-transparent text-sm bg-white shadow-sm">
                        <button
                            class="w-full sm:w-auto bg-[#448F9D] text-white px-10 py-4 rounded-full sm:rounded-l-none font-semibold transition-colors whitespace-nowrap shadow-sm mt-3 sm:mt-0">
                            Subscribe
                        </button>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-4">
            <div class="max-w-7xl mx-auto px-4">
                <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold text-primary-navy mb-8">
                    Latest from FMCG News
                </h2>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div class="flex flex-col">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/truck.png" alt="FMCG Delivery"
                            class="w-full h-auto max-h-64 object-cover rounded-lg" onerror="this.style.display='none'">
                        <div class="py-6">
                            <div class="flex flex-wrap items-center text-sm text-[#2E7382] mb-3 font-medium">
                                <span>John Alvarez • Feb 18, 2022 • 19 min read</span>
                            </div>
                            <h3
                                class="text-base sm:text-base md:text-xl font-bold text-primary-dark mb-3 hover:text-primary-blue cursor-pointer">
                                Optimizing FMCG Delivery Routes with DDS →
                            </h3>
                            <p class="text-base text-[#6D7680] mb-4">
                                Explore how DDS's route optimization reduces fuel costs and ensures timely
                                deliveries
                                for businesses.
                            </p>
                            <div class="flex flex-wrap gap-2">
                                <span
                                    class="px-3 py-1 bg-[#DCFFF1] text-[#2E7382] text-xs font-medium rounded-full">FMCG
                                    News</span>
                                <span
                                    class="px-3 py-1 bg-orange-50 text-accent-orange text-xs font-medium rounded-full">Research</span>
                            </div>
                        </div>
                    </div>

                    <div class="space-y-6">
                        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-4 items-start">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/saas.png" alt="Retail" class="w-full h-auto rounded-lg"
                                onerror="this.style.display='none'">
                            <div class="p-4 sm:col-span-2">
                                <div class="flex flex-wrap items-center text-xs text-[#2E7382] mb-2 font-medium">
                                    <span>Sarah McKenzie • Jun 11, 2022</span>
                                </div>
                                <h4
                                    class="text-base font-bold text-primary-dark mb-2 hover:text-primary-blue cursor-pointer">
                                    Why FMCG Retailers Need SaaS Now
                                </h4>
                                <p class="text-sm text-[#6D7680] mb-3">
                                    Highlight the instant sign-up and ease of DDS SaaS, helping small businesses
                                    compete
                                    with larger
                                    players.
                                </p>
                                <div class="flex flex-wrap gap-2">
                                    <span
                                        class="px-2 py-1 bg-[#EBF4FA] text-[#2E7382] text-xs font-medium rounded-full">FMCG</span>
                                    <span
                                        class="px-2 py-1 bg-orange-50 text-accent-orange text-xs font-medium rounded-full">Research</span>
                                </div>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-4 items-start">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/warehouse.png" alt="Analytics" class="w-full h-auto rounded-lg"
                                onerror="this.style.display='none'">
                            <div class="p-4 sm:col-span-2">
                                <div class="flex flex-wrap items-center text-xs text-[#2E7382] mb-2 font-medium">
                                    <span>Anna Maria Lopez • Mar 8, 2022</span>
                                </div>
                                <h4
                                    class="text-base font-bold text-primary-dark mb-2 hover:text-primary-blue cursor-pointer">
                                    Boosting FMCG Customer Loyalty with Data
                                </h4>
                                <p class="text-sm text-[#6D7680] mb-3">
                                    See how DDS’s customer data and analytics tools drive personalized service and
                                    up to
                                    20% better
                                    engagement.
                                </p>
                                <div class="flex flex-wrap gap-2">
                                    <span
                                        class="px-2 py-1 bg-[#EBF4FA] text-[#2E7382] text-xs font-medium rounded-full">FMCG</span>
                                    <span
                                        class="px-2 py-1 bg-orange-50 text-accent-orange text-xs font-medium rounded-full">Research</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
 <?php
get_footer();
