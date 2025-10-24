
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
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cuboid.svg" alt="background image"
            class="absolute bottom-0 left-[20%] w-[800px] hidden md:block" />

        <div class="max-w-7xl mx-auto px-4 py-16">
            <div class="grid lg:grid-cols-1 xl:grid-cols-[70%_30%] gap-8 lg:gap-12 items-center">

                <div class="text-white space-y-6 z-10 relative">
                    <h1 class="text-xl sm:text-3xl lg:text-4xl font-bold leading-tight">
                        DDS Retail - Your Store, Supercharged
                    </h1>
                    <p class="text-base sm:text-lg opacity-90 leading-relaxed max-w-2xl">
                        Run sales, stock, and customers with ease, anytime, anywhere. Stay in control with instant
                        insights and faster service.
                    </p>
                    <a href="http://159.203.159.79/contact-us/"
                        class="freeButton transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                        Request a Demo <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
                    </a>
                </div>

                <div class="relative z-10 flex justify-center xl:justify-end mt-6 lg:mt-0">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/phone.png" alt="logo" class="max-w-[250px] lg:max-w-full">
                </div>
            </div>
        </div>
    </section>


    <section class="bg-gray-50 py-8">
        <div class="max-w-7xl mx-auto px-4">
            <div class="text-center mb-12">
                <h2 class="text-xl sm:text-3xl lg:text-4xl font-bold text-[#2E3A65] mb-4">
                    Mobile-First Growth with DDS Retail
                </h2>
                <p class="text-[#656B61] max-w-4xl mx-auto text-sm sm:text-base">
                    Manage inventory, sales, and customers in one place. With DDS Retail, you’re always in control,
                    whether on the shop floor or on the go.
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8">
                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4 ">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/roundicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Self-Service Setup</h3>
                            <p class="text-[#656B61] text-sm">
                                Launch your store’s digital backbone in minutes with flexible cloud options built for
                                your business.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/analytics.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Inventory & Sales Automation
                            </h3>
                            <p class="text-[#656B61] text-sm">
                                Know what’s selling and what’s running low with predictive insights, automated reports,
                                and smart stock alerts that keep revenue flowing.
                            </p>
                        </div>
                    </div>
                </div>

                <div
                    class="bg-white rounded-xl shadow-md p-6 hover:shadow-xl transition-shadow duration-300 border border-[#D9D9D9]">
                    <div class="flex items-start space-x-4">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/frameicon.svg" alt="arrow" class="py-4">

                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-[#2E3A65] mb-2">Integrated Payments</h3>
                            <p class="text-[#656B61] text-sm">
                                Get paid faster and easier with MPESA, MoMo, and more, streamlining every transaction
                                from invoice to delivery.
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
                    Everything your retail business needs to sell more, save more, and work smarter
                </p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:gap-8 mb-8">
                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/instantsetup.png" alt="Access Control">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Instant Setup
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Start selling in minutes. Set up
                        teams, territories, and workflows
                        without the tech headaches.
                    </p>
                </div>
                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/realtimestock.png" alt="Analytics Dashboard">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold mb-3">
                        Real-Time Stock
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Track every product live, get instant
                        low-stock alerts, and reorder before
                        sales are lost.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/officesalecapability.png" alt="Payment Integration">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Offline Sales Capability
                    </h3>
                    <p class="text-sm sm:text-base leading-relaxed">
                        Keep selling without the internet.
                        Your data syncs automatically
                        when you’re back online
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/smartexpense.png" alt="Inventory Management">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Smart Expense Tracking
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Log and review payments
                        instantly for total cash flow
                        clarity.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/liveorderupdate.png" alt="Mobile Access">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Live Order Updates
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Watch every order move from
                        sale to delivery with real-time
                        tracking.
                    </p>
                </div>

                <div
                    class="bg-white rounded-xl p-6 sm:p-8 shadow-md transition-shadow duration-300 flex flex-col items-center text-center">
                    <div class="mb-6">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/secure-compliant.png" alt="Automated Workflows">
                    </div>
                    <h3 class="text-lg sm:text-xl font-bold  mb-3">
                        Secure & Compliant
                    </h3>
                    <p class=" text-sm sm:text-base leading-relaxed">
                        Protect your business with role-based access, automated checks, and
                        trusted accuracy.
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
                        Transform Your Retail Today
                    </h2>
                    <p class="text-[#191B44] text-base sm:text-lg mb-8 leading-relaxed">
                        Join thousands of retailers already simplifying operations and boosting profits with DDS. Sign
                        up now for a free demo.
                    </p>
                    <a href="http://159.203.159.79/contact-us/"
                        class="transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                        Get started for free <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
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
