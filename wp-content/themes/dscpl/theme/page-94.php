
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
  <section class="relative bg-no-repeat bg-cover bg-center"
        style="background-image: url('<?php echo site_url(); ?>/wp-content/uploads/2025/10/saasframe.svg');">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 sm:py-16 lg:py-32">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12 items-center pt-0 lg:pt-20">

                <div class="text-[#191B44] space-y-6 z-10 relative text-center lg:text-left">
                    <h1 class="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-bold leading-tight">
                        Power Your Retail Growth with DDS SaaS
                    </h1>
                    <p class="text-sm sm:text-base md:text-lg lg:text-xl opacity-90 leading-relaxed">
                        Smart, self-service software to help growing retail businesses in East Africa digitize sales,
                        inventory, and payments, without complex IT setups.
                    </p>
                    <a href="#"
                        class="transform hover:scale-[1.02] transition duration-300 inline-flex items-center justify-center px-5 sm:px-6 py-2.5 sm:py-3 text-sm sm:text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:from-[#5bc0d4] hover:to-[#1a4a52] shadow-lg">
                        Get started now
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Arrow right.svg" alt="arrow" class="mt-1 ml-2 w-4 sm:w-5">
                    </a>
                </div>

            </div>
        </div>
    </section>

    <section class="bg-gray-50 py-8">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-12">
                <h2 class="text-xl sm:text-3xl lg:text-4xl font-bold text-[#2E3A65] mb-4">
                    Purpose-Built for Retailers on the Move
                </h2>
                <p class="text-[#656B61] max-w-4xl mx-auto text-sm sm:text-base">
                    Take the guesswork out of retail. DDS SaaS gives you real-time control over sales, stock, and
                    payments,
                    so you can grow without the chaos.
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8">
                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4 ">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/roundicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Launch in Days, Not Weeks</h3>
                            <p class="text-[#656B61] text-sm">
                                Deploy quickly with guided onboarding and minimal tech dependencies.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/analytics.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Automated Stock &
                                Sales Insights</h3>
                            <p class="text-[#656B61] text-sm">
                                Track what’s moving, what’s not, and make smarter restocking decisions.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/frameicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Seamless Payment
                                Integrations</h3>
                            <p class="text-[#656B61] text-sm">
                                Accept M-PESA, MTN MoMo, and other payment modes with automated reconciliation.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-[#F4FFFE8A] py-8">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-12">
                <h2 class="text-xl sm:text-3xl lg:text-4xl font-bold text-primary-navy mb-4">
                    Key Features
                </h2>
                <p class="text-[#656B61] text-base sm:text-lg">
                    Everything You Need to Run Smarter Retail
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8 mb-8">
                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/box.svg" alt="Analytics Dashboard">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Fast & Flexible Setup
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Get started easily with a cloud deployment tailored to your store operations and
                        team structure.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/redlap.svg" alt="Payment Integration">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Live Inventory Tracking
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        See your stock status in real-time.
                        Set low-stock alerts and auto-trigger
                        restock reminders.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cart.svg" alt="Inventory Management">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Offline Sales Capability
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Keep selling even when the internet’s
                        down. All data syncs once
                        you’re back online.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/mobile.svg" alt="Mobile Access">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Smart Expense Management
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Monitor daily expenses, supplier payouts,
                        and payment cycles in one dashboard.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/map.svg" alt="Automated Workflows">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Centralized Order Control
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Track, approve, and fulfill orders
                        with full visibility across locations.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/compliance.png" alt="Access Control">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Built-in Compliance Checks
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Maintain accuracy with role-based
                        access, secure transaction logs,
                        and inventory validation.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-gradient-to-r from-[#4A9FB8] to-[#5BA8BE] overflow-hidden py-4 lg:py-8">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid lg:grid-cols-5 gap-8 lg:gap-12 items-center">
                <div class="lg:col-span-3 bg-white rounded-2xl shadow-2xl p-2 sm:p-4 lg:p-8">
                    <h2 class="text-xl sm:text-3xl lg:text-3xl font-bold text-[#191B44] mb-4 leading-tight">
                        Transform How You Sell, Stock, and Scale
                    </h2>
                    <p class="text-[#191B44] text-base sm:text-lg mb-8 leading-relaxed">
                        Join the growing community of retailers using DDS SaaS to digitize daily operations, reduce
                        costs, and unlock sales growth across East Africa.
                    </p>
                    <a href="#"
                        class="transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                        Discover More <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Arrow right.svg" alt="arrow" class="mt-1 ml-2">
                    </a>
                </div>

                <div class=" lg:block lg:col-span-2">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashscreens.svg" alt="arrow" class="mt-1 ml-2">
                </div>

            </div>
        </div>
    </section>


<?php
get_footer();
