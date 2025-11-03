

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
        <section class="mx-auto px-4 sm:px-6 lg:px-8 py-8 lg:py-12">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-6 lg:gap-8">
                <aside class="lg:col-span-3 order-2 lg:order-1">
                    <div class="bg-white p-4 lg:sticky lg:top-4">
                        <div class="flex items-center mb-4 pb-3  bg-[#F4FFFE]">
                            <svg class="w-5 h-5 mr-2 text-gray-600" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M4 6h16M4 12h16M4 18h16"></path>
                            </svg>
                            <h3 class="font-bold text-gray-800 text-sm uppercase px-3">TABLE OF CONTENTS</h3>
                        </div>
                        <nav class="space-y-2">
                            <a href="#"
                                class="block text-sm text-gray-700 hover:text-primary-blue hover:bg-gray-50 px-3 py-1 rounded transition">
                                1. The Growing Need for Automation in FMCG Retail
                            </a>
                            <a href="#"
                                class="block text-sm text-gray-700 hover:text-primary-blue hover:bg-gray-50 px-3 py-1 rounded transition">
                                2. How DDS Automation
                                Benefits Small
                                Retailers in FMCG Retail
                            </a>
                            <a href="#"
                                class="block text-sm text-gray-700 hover:text-primary-blue hover:bg-gray-50 px-3 py-1 rounded transition">
                                3. Steps to Implement Automation with DDS
                            </a>
                            <a href="#"
                                class="block text-sm text-gray-700 hover:text-primary-blue hover:bg-gray-50 px-3 py-1 rounded transition">
                                4. Success Stories: Small
                                Retailers Thriving with DDS
                            </a>
                            <a href="#"
                                class="block text-sm text-gray-700 hover:text-primary-blue hover:bg-gray-50 px-3 py-1 rounded transition">
                                5. Conclusion: Start
                                Automating Today
                            </a>
                        </nav>
                    </div>
                </aside>
                <div class="lg:col-span-6 order-1 lg:order-2">
                    <div class="flex items-center text-xs sm:text-sm mb-4 flex-wrap gap-2">
                        <a href="#" class="text-black hover:text-primary-blue">BLOG</a>
                        <span class="text-gray-500 ">></span>
                        <a href="#" class="text-primary-blue font-bold">FMCG</a>
                    </div>
                    <a href="#" class="px-2 bg-[#DFF1F0] rounded-md mb-8">FMCG</a>
                    <article class="bg-white">
                        <header class="mb-6">
                            <h1 class="text-xl sm:text-3xl lg:text-4xl font-bold text-gray-900 mb-4">
                                How Automation is Transforming
                                FMCG Distribution: A Guide for
                                Small Retailers
                            </h1>
                            <div
                                class="flex flex-col sm:flex-row items-center sm:justify-between text-sm text-gray-600 mb-4">
                                <span class=" flex items-center mr-2"><img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/profile-1.png"
                                        alt="clockicon" class="mr-2"> Joan Doe-Smith</span>
                                <span class="flex items-center mr-2"><img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/calendar.svg"
                                        alt="clockicon" class="mr-2"> Mar 15, 2022</span>
                                <span class="flex items-center">
                                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/clockicon.svg" alt="clockicon" class="mr-2">
                                    10 min read
                                </span>
                            </div>
                        </header>

                        <div class="prose max-w-none mb-8">
                            <p class="text-gray-700 leading-relaxed mb-2">
                                Small FMCG retailers often struggle with manual processes that lead
                                to in efficiencies, stockouts, and delayed payments. Automation is
                                revolutionizing this landscape, and DSCPL’s Digital Distribution
                                Solutions (DDS) offer practical tools to help. This guide explores how
                                automation can transform your retail business, with actionable
                                insights to get started.
                            </p>
                        </div>

                        <div class="mb-4 rounded-lg overflow-hidden">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/checking.png" alt="FMCG Retail Automation" class="w-full h-auto">
                        </div>

                        <div>
                            <h2 class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-4 ">
                                1. Manual Processes Are Holding You Back
                            </h2>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                Many small FMCG retailers rely on manual methods to manage
                                inventory, track sales, and process payments. This often leads to
                                errors, like miscounting stock or losing sales due to unavailable
                                products. Manual processes also consume valuable time that could
                                be spent engaging with customers or growing your business.

                            </p>
                        </div>

                        <div>
                            <p class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-2">
                                2. Stockouts and Overstock Hurt Your Bottom
                                Line
                            </p>
                        </div>

                        <p class="text-gray-700 leading-relaxed mb-4">
                            Without real-time visibility into inventory, small retailers frequently
                            face stockouts or overstock issues. A stockout can mean lost sales,
                            while overstock ties up capital and increases waste, especially for
                            perishable goods. Automation tools provide instant updates on stock
                            levels, helping you maintain the right inventory balance and reduce
                            costs by up to 25%, as seen with solutions like the DDS Retail App.
                        </p>
                        <div>
                            <p class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-2">
                                3. Effortless Inventory Management
                            </p>
                        </div>

                        <p class="text-gray-700 leading-relaxed mb-4">
                            The DDS Retail App transforms how small retailers manage
                            inventory. Using barcode scanning via your smartphone, you can
                            update stock levels in real-time, even offline. Low stock alerts
                            notify you before products run out, preventing missed sales.
                            This automation can reduce inventory costs by up to 25%, freeing
                            up resources to invest in other areas of your business.
                        </p>
                        <div class="mb-4 rounded-lg overflow-hidden">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/braid.png" alt="FMCG Retail Automation" class="w-full h-auto">
                        </div>
                        <div>
                            <h2 class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-2">
                                4. Streamlined Sales and Payment
                                Processing
                            </h2>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                With DDS SaaS, you can process sales quickly using a mobile
                                point-of-sale (POS) system. The platform supports multiple
                                payment methods, including [MPESA]
                                (https://www.safaricom.co.ke/personal/m-pesa) and [MTN MoMo]
                                (https://www.mtn.com), allowing you to collect payments on the
                                spot.
                            </p>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                This reduces delays in revenue collection, improves cash flow,
                                and minimizes the risks associated with cash handling, making
                                your operations more secure and efficient.
                            </p>
                        </div>
                        <div>
                            <h2 class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-2">
                                5. Actionable Insights for Growth
                            </h2>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                DDS platforms provide real-time reports on sales, inventory, and
                                customer trends through mobile-friendly dashboards. For
                                example, you can identify your best-selling products or busiest
                                sales days, enabling data-driven decisions.
                            </p>
                            <div class="mb-4 rounded-lg overflow-hidden">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/headphone.png" alt="FMCG Retail Automation"
                                    class="w-full h-auto">
                            </div>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                Small retailers using DDS have seen up to a 20% increase in sales
                                by leveraging these insights to offer personalized promotions and
                                improve stock planning.
                            </p>

                        </div>
                        <div>
                            <h2 class="text-xl sm:text-2xl font-bold text-[#2E3A65] mb-2">
                                Embrace the Future of FMCG Retail
                            </h2>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                Automation is no longer a luxury—it’s a necessity for small FMCG
                                retailers aiming to stay competitive. DSCPL’s DDS Retail App and
                                SaaS Platform offer affordable, user-friendly tools to streamline
                                your operations, from inventory management to payment
                                processing.
                            </p>
                            <p class="text-gray-700 leading-relaxed mb-4">
                                By automating these tasks, you can save time, reduce costs, and
                                focus on what matters most: growing your business and
                                delighting your customers.
                            </p>
                        </div>
                    </article>
                </div>
                <aside class="lg:col-span-3 order-3">
                    <div class="space-y-6">
                        <div class="bg-white rounded-lg border border-gray-200 p-4">
                            <div class="flex items-center justify-between mb-4 pb-3 border-b border-gray-200">
                                <h3 class="font-bold text-gray-800 text-xl">Trending Post</h3>
                                <a href="#" class="text-xs text-gray-500 hover:underline">View all new</a>
                            </div>
                            <div class="space-y-4">
                                <a href="#" class="block group">
                                    <div class="text-xs text-gray-500 mb-1">SEP 04 2018</div>
                                    <h4
                                        class="text-sm font-bold text-gray-800 group-hover:text-primary-blue transition line-clamp-2">
                                        Real-Time Analytics
                                        for FMCG Supply
                                        Chains
                                    </h4>
                                </a>
                                <a href="#" class="block group">
                                    <div class="text-xs text-gray-500 mb-1">SEP 04 2018</div>
                                    <h4
                                        class="text-sm font-bold text-gray-800 group-hover:text-primary-blue transition line-clamp-2">
                                        Scaling FMCG with
                                        Cloud-Based
                                        Solutions
                                    </h4>
                                </a>
                                <a href="#" class="block group">
                                    <div class="text-xs text-gray-500 mb-1">SEP 04 2018</div>
                                    <h4
                                        class="text-sm font-bold text-gray-800 group-hover:text-primary-blue transition line-clamp-2">
                                        5 FMCG Challenges
                                        Solved by DDS
                                    </h4>
                                </a>
                                <a href="#" class="block group">
                                    <div class="text-xs text-gray-500 mb-1">SEP 04 2018</div>
                                    <h4
                                        class="text-sm font-bold text-gray-800 group-hover:text-primary-blue transition line-clamp-2">
                                        Partnering with DSCPL for FMCG
                                        Success
                                    </h4>
                                </a>
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
                </aside>
            </div>
            <div class="max-w-3xl mx-auto mt-6">
                <div class="bg-[#2E7382] rounded-2xl shadow-xl p-6 sm:p-8 lg:p-10 relative overflow-hidden">
                    <div class="absolute top-4 right-3 w-[280px] h-[280px] bg-[#CCCCCC2B] rounded-full hidden lg:block">
                    </div>
                    <div class="absolute  right-2 w-8 h-8 bg-[#CCCCCC2B] rounded-full hidden md:block">
                    </div>
                    <div class="absolute  right-80 w-8 h-8 bg-[#CCCCCC2B] rounded-full hidden md:block">
                    </div>
                    <div class="absolute top-40 left-[50%] w-10 h-10 bg-[#CCCCCC2B] rounded-full hidden md:block">
                    </div>
                    <div class="absolute bottom-4 left-[60%] w-6 h-6 bg-[#CCCCCC2B] rounded-full hidden md:block">
                    </div>
                    <div class="absolute bottom-4 right-4 w-6 h-6 bg-[#CCCCCC2B] rounded-full hidden md:block">
                    </div>
                    <div class="relative z-10 grid grid-cols-1 lg:grid-cols-2 gap-6 items-center">
                        <div class="text-white">
                            <h2 class="text-2xl sm:text-3xl font-bold mb-4">Take The First Step</h2>
                            <p class="text-white mb-6 text-sm sm:text-xl">
                                Sign up for DDS SaaS today and start automating your retail operations.
                            </p>
                            <button
                                class="bg-white text-teal-700 px-6 py-3 rounded-lg font-semibold hover:bg-teal-50 transition duration-300 shadow-lg text-sm sm:text-base">
                                Get a Free Trial
                            </button>
                        </div>

                        <div class="flex justify-center lg:justify-end">
                            <div class="relative w-48 h-48 sm:w-56 sm:h-56 rounded-full overflow-hidden">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/yellow.png" alt="Retail Team"
                                    class="w-full h-full object-cover">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-[#EFF8F7] p-4 flex items-center gap-3">
                    <span class="text-gray-400 font-bold text-sm sm:text-base">Share</span>
                    <a href="#"
                        class="w-8 h-8 bg-[#609FA3] hover:bg-teal-700 text-white rounded flex items-center justify-center transition duration-300">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                            <path
                                d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" />
                        </svg>
                    </a>
                    <a href="#"
                        class="w-8 h-8 bg-[#609FA3] hover:bg-teal-700 text-white rounded flex items-center justify-center transition duration-300">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                            <path
                                d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z" />
                        </svg>
                    </a>
                    <a href="#"
                        class="w-8 h-8 bg-[#609FA3] hover:bg-teal-700 text-white rounded flex items-center justify-center transition duration-300">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Email.svg" alt="mail" />
                    </a>
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
                                    See how DDS’s customer data and analytics tools drive personalized service
                                    and up to
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
        <section class="relative bg-[#44909F] py-12 sm:py-16 lg:py-20">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/rocket.svg" alt="background image"
                class="absolute bottom-5 left-[20%] hidden lg:block" />
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12 ">
                    <div class="text-white">
                        <div class="flex items-start gap-4 sm:gap-6">
                            <div>
                                <h2 class="text-2xl sm:text-3xl lg:text-4xl font-bold mb-3 sm:mb-4">
                                    Subscribe to Our <br class=" hidden lg:block" />Newsletter
                                </h2>
                            </div>
                        </div>
                    </div>

                    <div>
                        <p class="text-sm sm:text-base lg:text-lg mb-6 text-teal-50 leading-relaxed">
                            Get the latest product updates, company news, and special offers delivered right to your
                            inbox.
                        </p>

                        <div class="flex flex-col sm:flex-row gap-0  pb-8">
                            <input type="email" placeholder="youremail123@gmail.com"
                                class="w-full sm:w-80 px-6 py-4 rounded-md sm:rounded-r-none border border-gray-200 focus:outline-none focus:ring-2 focus:ring-primary-teal focus:border-transparent text-sm bg-white shadow-sm">
                            <button
                                class="w-full sm:w-auto bg-primary-teal text-white px-10 py-4 rounded-md sm:rounded-l-none font-semibold transition-colors whitespace-nowrap shadow-sm mt-3 sm:mt-0">
                                Subscribe
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

<?php
get_footer();
