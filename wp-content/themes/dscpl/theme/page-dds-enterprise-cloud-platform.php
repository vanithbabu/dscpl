
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
 <section class="relative bg-gradient-to-br from-[#4497B4] to-[#71C5E1] overflow-hidden">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cloud.svg" alt="arrow" class="absolute top-[22%] right-44 hidden lg:block">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cloud.svg" alt="arrow" class="absolute top-[28%] right-[36%] hidden lg:block w-20">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cloud.svg" alt="arrow" class="absolute bottom-20 right-[38%] hidden lg:block">

        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/wheel.svg" alt="arrow" class="absolute bottom-0 left-[20%] hidden lg:block">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/wheel.svg" alt="arrow" class="absolute top-0 left-[42%] hidden lg:block">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/wheel.svg" alt="arrow" class="absolute bottom-8 right-[10%] hidden lg:block">

        <div class="max-w-7xl mx-auto px-4 py-16 lg:py-32">
            <div class="grid lg:grid-cols-2 gap-8 lg:gap-12 items-center  pt-0 lg:pt-20 ">
                <div class="text-white space-y-6 z-10 relative">
                    <h1 class="text-xl sm:text-3xl lg:text-4xl font-bold leading-tight">
                        DDS Cloud for Seamless and Scalable Distribution
                    </h1>
                    <p class="text-base sm:text-lg opacity-90 leading-relaxed">
                        A robust enterprise cloud platform purpose-built for large-scale distribution businesses
                        -
                        manufacturers, wholesalers, and field heavy teams.
                    </p>
                    <a href="http://159.203.159.79/contact-us/"
                        class="freeButton transform hover:scale-[1.01] transition duration-300  inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] transition duration-300 shadow-lg">
                        Request a Demo <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
                    </a>
                </div>

                <div class="relative z-10 flex justify-center lg:justify-end mt-6 ml-0 lg:ml-32 ">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/laptop.png" alt="logo">
                </div>
            </div>
        </div>
    </section>

    <section class="bg-gray-50 py-8">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-12">
                <h2 class="text-xl sm:text-3xl lg:text-4xl font-bold text-[#2E3A65] mb-4">
                    DESIGNED FOR COMPLEXITY. DELIVERED WITH SIMPLICITY.
                </h2>
                <p class="text-[#656B61] max-w-4xl mx-auto text-sm sm:text-base">
                    DDS Enterprise Cloud modernizes your entire distribution lifecycle, unifying planning, sales,
                    logistics, and payments into one intelligent system. Gain real-time visibility, automate operations,
                    and scale effortlessly across territories.
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8">
                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4 ">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/roundicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">28% Lower Operational Costs</h3>
                            <p class="text-[#656B61] text-sm">
                                Reduce overhead with automation across inventory, logistics, and payments.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/analytics.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Real-Time Analytics</h3>
                            <p class="text-[#656B61] text-sm">
                                Access live data to drive faster, smarter decisions at every level.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/frameicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Effortless Scalability</h3>
                            <p class="text-[#656B61] text-sm">
                                Easily expand users, regions, and operations without complexity.
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
                    Transform your supply chain with cloud-driven control, speed, and insight.
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8 mb-8">
                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/real-time.png" alt="Analytics Dashboard">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Real-Time Analytics & Dashboards
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Track sales, orders, and performance metrics live. Get region-wise breakdowns and KPIs to steer
                        daily decisions.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/erp-payment.png" alt="Payment Integration">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Seamless ERP & Payment Integrations
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Compatible with your existing infrastructure. Plug into MPESA, MTN MoMo, and other regional
                        gateways for secure, real-time transactions.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/centralized-inventory-management.png" alt="Inventory Management">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Centralized Inventory Management
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Eliminate stockouts and overstocking. Get complete visibility from central warehouses to
                        last-mile delivery agents.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/mobile_web.png" alt="Mobile Access">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Mobile + Web Access for Field Teams
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Empower field sales, delivery, and inventory teams with mobile-first interfaces—online or
                        offline.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/AutomatedWorkflows.png" alt="Automated Workflows">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Automated Workflows
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Replace repetitive tasks with automated order-to-cash flows, route assignments, and compliance
                        triggers.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Role-Based.png" alt="Access Control">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Role-Based Access & Controls
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Set up permissions and access levels based on location, function, or seniority, across your
                        entire workforce.
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
                        Unify, Automate, and Scale with Confidence
                    </h2>
                    <p class="text-[#191B44] text-base sm:text-lg mb-8 leading-relaxed">
                        DDS Enterprise is already powering the region’s fastest-growing distribution networks. Ready to
                        simplify your operations and unlock cost savings?
                    </p>
                    <a href="http://159.203.159.79/contact-us/"
                        class="freeButton transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                        Join Us <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
                    </a>
                </div>

                <div class=" lg:block lg:col-span-2">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashboard.png" alt="arrow" class="mt-1 ml-2">
                </div>

            </div>
        </div>
    </section>

   

<?php
get_footer();
