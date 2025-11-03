
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
        <section class="relative min-h-[600px] flex items-center bg-[#286A81] overflow-hidden">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cuboid.png" alt="background image"
                class="absolute  left-[20%] w-[500px] hidden md:block" />

            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/hexagonal-top.png" alt="background image"
                class="absolute top-0 left-[0%] opacity-5 hidden md:block" />

            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/hexagonal-bottom.png" alt="background image"
                class="absolute bottom-0 right-[0%] hidden md:block" />

            <div class="max-w-7xl mx-auto px-4 relative z-10 w-full">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center py-16 lg:py-0">

                    <div class="text-white">
                        <h1 class="text-xl sm:text-3xl md:text-[42px] font-bold leading-tight mb-6">
                            Success Stories with DDS
                        </h1>
                        <p class="text-md sm:text-xl md:text-[20px] font-normal mb-2 max-w-lg">
                            "Love how easy and fast shopping is with DDS App! Great deals, smooth checkout, and quick
                            delivery—my go-to app for everything I need!"
                        </p>
                        <p class="text-md sm:text-xl md:text-[20px] font-normal mb-8 max-w-lg">
                            John Doe - CEO Abc Company Ltd
                        </p>
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/profile.png" alt="arrow">
                        <p class="text-md sm:text-xl md:text-[20px] font-bold mb-8 max-w-lg">
                            Join other 320+ retailers now
                        </p>

                        <div class=" space-y-4 sm:space-y-0 sm:space-x-4">
                            <a href="#"
                                class="freeButton transform hover:scale-[1.01] transition duration-300  inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] transition duration-300 shadow-lg">
                                Request a Demo <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow"
                                    class="mt-1 ml-2">
                            </a>
                        </div>
                    </div>

                    <div class="w-full ">
                        <div class="flex flex-row items-center gap-4">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/african-american-manager.png" alt="Group"
                                class="w-20 sm:w-40 md:w-80 lg:w-auto" />

                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/calm-curly-brunette.png" alt="ceo"
                                class="w-20 sm:w-40 md:w-60 lg:w-auto xl:mt-40 xl:pt-16" />

                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/calm-curly-brunette.png" alt="half" class="hidden lg:block xl:mt-40 xl:pt-16" />
                              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/calm-curly-brunette.png" alt="half" class="hidden lg:block xl:mt-40 xl:pt-16" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-12 bg-white">
            <div class="mx-auto px-4">
                <h2 class="text-center text-xl sm:text-3xl md:text-[22px] font-bold tracking-wide text-[#448F9D] mb-8">
                    TRUSTED BY LEADING FMCG BRANDS
                </h2>

                <div class="overflow-hidden relative">
                    <div class="flex items-center gap-12 animate-slide">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/microsoft.svg" alt="Microsoft"
                            class="h-[35px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/metallb.svg" alt="Microsoft"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/linked.svg" alt="MetalLB"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram.svg" alt="LinkedIn"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/applepay.svg" alt="Instagram" class="h-[40px] w-[163px] object-contain" />
                      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/microsoft.svg" alt="Microsoft"
                            class="h-[35px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/metallb.svg" alt="Microsoft"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/linked.svg" alt="MetalLB"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram.svg" alt="LinkedIn"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/applepay.svg" alt="Instagram" class="h-[40px] w-[163px] object-contain" />
                      
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/microsoft.svg" alt="Microsoft"
                            class="h-[35px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/metallb.svg" alt="Microsoft"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/linked.svg" alt="MetalLB"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram.svg" alt="LinkedIn"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/applepay.svg" alt="Instagram" class="h-[40px] w-[163px] object-contain" />
                      
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/microsoft.svg" alt="Microsoft"
                            class="h-[35px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/metallb.svg" alt="Microsoft"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/linked.svg" alt="MetalLB"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram.svg" alt="LinkedIn"
                            class="h-[40px] w-[163px] object-contain" />
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/applepay.svg" alt="Instagram" class="h-[40px] w-[163px] object-contain" />
                      
                    </div>
                </div>
            </div>
        </section>
        <section class="bg-white py-8 md:py-12 relative">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/vector.svg" alt="background image" class="absolute top-[30%] right-[15%]" />
            <div class="max-w-7xl mx-auto px-4">
                <div class="flex flex-col md:flex-row items-start sm:items-center justify-between gap-6 mb-8">
                    <div class="max-w-xl">
                        <h3 class="text-2xl sm:text-3xl lg:text-4xl font-extrabold text-primary-navy leading-tight">
                            100+ of our <br class="hidden xl:block" /> users love our <br class="hidden lg:block" />
                            service.
                        </h3>
                        <p class="mt-3 text-md sm:text-base text-gray-600">
                            They trust us for speed, ease of use, and great<br class="hidden sm:block" /> support.
                            Experience it for yourself.
                        </p>
                    </div>
                    <div class="flex flex-col items-end gap-3">
                        <div class="flex items-center gap-3 bg-[#E9FBFF] rounded-md px-3 py-2 shadow-sm">
                            <div class="flex gap-0.5 text-yellow-400">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                            </div>
                            <span class="text-xs text-primary-navy font-semibold pl-4">Rated 5 stars in reviews.</span>
                        </div>

                        <div
                            class="flex items-center gap-3 bg-[#E9FBFF] rounded-md px-3 py-2 shadow-sm -mr-8 sm:-mr-12">
                            <div class="flex gap-0.5 text-yellow-400">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                            </div>
                            <span class="text-xs text-primary-navy font-semibold pl-4">Rated 5 stars in reviews.</span>
                        </div>

                        <div class="flex items-center gap-3 bg-[#E9FBFF] rounded-md px-3 py-2 shadow-sm">
                            <div class="flex gap-0.5 text-yellow-400">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                            </div>
                            <span class="text-xs text-primary-navy font-semibold pl-4">Rated 5 stars in reviews.</span>
                        </div>
                    </div>
                </div>
                <div class="flex justify-center">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Twitterpost.png" alt="orders">
                </div>
            </div>
        </section>
        <section class="bg-[#3A8B97] py-8">
            <div class="max-w-7xl mx-auto px-6 lg:px-8">
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 text-center text-white 
                lg:divide-x divide-[#2E7382]">
                    <div>
                        <div class="flex justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/FrameCube.svg" alt="orders">
                        </div>
                        <h3 class="text-lg font-medium">Orders created</h3>
                        <p class="text-2xl font-bold">0.0M</p>
                    </div>
                    <div>
                        <div class="flex justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/FrameDoodle.svg" alt="delivery">
                        </div>
                        <h3 class="text-lg font-medium">Delivery journeys</h3>
                        <p class="text-2xl font-bold">0.0M</p>
                    </div>
                    <div>
                        <div class="flex justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/FrameNote.svg" alt="transactions">
                        </div>
                        <h3 class="text-lg font-medium">Transactions handled</h3>
                        <p class="text-2xl font-bold">$000 +</p>
                    </div>
                    <div>
                        <div class="flex justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/arrowFrame.svg" alt="cost">
                        </div>
                        <h3 class="text-lg font-medium">Reduction in cost</h3>
                        <p class="text-2xl font-bold">00%</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-8  relative overflow-hidden m-4 rounded-xl">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/gravity.svg" alt="background image"
                class="absolute bottom-0 left-[0%] w-[200px] " />
            <div class="max-w-7xl mx-auto px-4 relative z-10">
                <div class="text-center mb-12">
                    <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold text-[#281D58] ">
                        Loved by<span class="text-primary-blue">100s
                            of</span>
                        Partners
                    </h2>
                    <div
                        class="relative inline-block my-6 w-full max-w-3xl mx-auto rounded-md overflow-hidden shadow-lg">
                        <video id="demoVideo" class="w-full" poster="<?php echo site_url(); ?>/wp-content/uploads/2025/10/partner.png">
                            <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4" />
                            <track id="subtitleTrack" label="English" kind="subtitles" srclang="en"
                                src="https://gist.githubusercontent.com/akshaymarch7/9c5af41a10db15b2c67f978ede36cc/raw/7b476a1d0b0b3e44858916eb8ffab10abca1d563/sample.vtt"
                                default />
                            Your browser does not support the video tag.
                        </video>

                        <img id="playOverlay" src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/play.svg" alt="bluetube"
                            class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-10 sm:w-12 md:w-16 lg:w-auto cursor-pointer transition-opacity duration-300" />

                        <div
                            class="absolute bottom-0 left-0 right-0 bg-[#0097A7] flex items-center gap-3 px-3 py-2 text-white">
                            <div class="flex-grow h-[2px] bg-white/50 relative cursor-pointer" id="progressContainer">
                                <div id="progressBar" class="absolute top-0 left-0 h-full bg-white w-0"></div>
                            </div>

                            <button id="subtitleBtn"
                                class="text-sm font-bold hover:bg-white/30 px-1 rounded border border-white">
                                CC
                            </button>

                            <button id="volumeBtn" class="text-lg hover:text-gray-200">🔊</button>
                        </div>
                    </div>
                    <p class="mt-3 text-[17px] text-[#120B46] max-w-2xl mx-auto">
                        "From inventory headaches to 9-figure dreams: <span class="text-md font-bold">DSCPL has been
                            our
                            game
                            changer"</span>
                    </p>
                    <p class="mt-3 text-md font-bold text-[#6B6688] max-w-2xl mx-auto">
                        Andrew Kemp, CEO at Bare Kind, Ex-Finance Professional
                    </p>
                    <a href="#"
                        class="freeButton mt-4 transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                        Request a Demo<img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
                    </a>
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
                            DDS Retail App is already empowering thousands of retailers in East Africa. Sign up and
                            unlock 25% savings and 20% sales growth.
                        </p>
                        <a href="#"
                            class="transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] shadow-lg">
                            Get started for free<img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow"
                                class="mt-1 ml-2">
                        </a>
                    </div>

                    <div class=" lg:block lg:col-span-2">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashboard.png" alt="arrow" class="mt-1 ml-2">
                    </div>

                </div>
            </div>
        </section>
    </main>


 <?php
get_footer();
