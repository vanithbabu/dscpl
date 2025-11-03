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

     <section class="relative bg-white py-20 overflow-hidden">
        <div class="relative max-w-7xl mx-auto px-6 grid grid-cols-1 md:grid-cols-2 items-center gap-10">

            <!-- LEFT -->
            <div class="relative z-20">
                <h2 class="text-3xl md:text-4xl font-bold text-[#197E85] mb-3">About DSCPL</h2>
                <p class="text-gray-700 text-lg leading-relaxed mb-9">
                    Automating FMCG Distribution <br />for a Seamless Supply Chain
                </p>

                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/leftlines.svg" alt="Left Line" class="hidden lg:block absolute bottom-[-90%] right-[47%]
         translate-x-[calc(-1*var(--lx))] translate-y-[var(--ly)]
         w-[clamp(320px,24vw,520px)]
         origin-bottom-left [scale:2.30]
         pointer-events-none select-none" style="--lx:28px; --ly:22px" />


            </div>

            <!-- RIGHT -->
            <div class="relative">
                <!-- Tight wrapper: becomes the anchor box for lines -->
                <div class="relative mx-auto w-full max-w-2xl">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/worldmap.png" alt="World Map with Devices"
                        class="block w-full h-auto mb-9" />

                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/rightlines.svg" alt="Right Line" class="hidden lg:block absolute
         top-[-30%] right-[-18%]
         -translate-x-1/2 -translate-y-1/2
         translate-x-[var(--rx)] translate-y-[var(--ry)]
         w-[220px] md:w-[280px] lg:w-[320px]
         pointer-events-none select-none z-20" style="--rx: 36px; --ry: -16px" />

                </div>
            </div>
        </div>
    </section>

    <section class="bg-white py-12 px-6 md:px-16">
        <!-- About Section -->
        <div class="text-center mb-12">
            <h2 class="text-2xl font-bold text-gray-800">About DSCPL</h2>
            <p class="mt-3 text-sm md:text-base bg-teal-50 text-teal-700 inline-block px-4 py-2 rounded">
                Pioneering the future of FMCG distribution with innovative, seamless solutions.
            </p>
        </div>

        <div class="grid md:grid-cols-2 gap-12 items-center">
            <!-- Left Content -->
            <div>
                <h3 class="text-xl md:text-2xl font-bold text-gray-900 flex items-center gap-2">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/our-story.svg" alt="Our story icon" class="h-5  md:h-5 align-middle">
                    <span class="text-black">OUR STORY</span>
                </h3>


                <ul class="mt-6 space-y-5 text-gray-700 leading-relaxed">
                    <li class="flex items-start">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/selection.svg" alt="Selection" class="mt-2 shrink-0" />
                        <div class="ml-2">
                            <span class="font-semibold text-teal-700">Digital Supply Chain Platform Limited
                                is one of the leading technology and software automation companies serving clients in
                                East
                                Africa in the Distribution Sector.</span>
                        </div>
                    </li>

                    <li class="flex items-start">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/selection.svg" alt="Selection" class="mt-2 shrink-0" />
                        <div class="ml-2">
                            We are pioneers in the integration of technology in distribution enabling our customers to
                            deliver exceptional value. We are trusted partners in the journey of digital transformation
                            for FMCGs
                        </div>
                    </li>

                    <li class="flex items-start">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/selection.svg" alt="Selection" class="mt-2 shrink-0" />
                        <div class="ml-2">
                            Our story began in 2020. We discovered the gap in streamlining and improving distribution
                            systems and channels and seized the opportunity to build supply chain systems that are
                            resilient, provide real-time insights and foster collaboration within the whole value chain.
                        </div>
                    </li>

                    <li class="flex items-start">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/selection.svg" alt="Selection" class="mt-2 shrink-0" />
                        <div class="ml-2">
                            <span class="font-semibold text-teal-700">Digital Supply Chain Platform Limited
                                was incorporated to create various digital platforms to meet these core objectives. We
                                are
                                your preferred partner in your digital transformation journey</span>
                        </div>
                    </li>
                </ul>

            </div>

            <!-- Right Image -->
            <div class="flex justify-center">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/map.png" alt="Africa distribution map" class="max-w-sm w-full">
            </div>

        </div>
    </section>

    <section class="relative bg-[#E2F8F6A6] py-20 overflow-hidden">
        <!-- Decorative background shapes -->
        <div class="pointer-events-none">
            <div class="absolute left top-24 w-60 h-40 bg-[#E3F3F2] opacity-60 rounded-lg"></div>
            <div class="absolute right top-32 w-80 h-48 bg-[#E3F3F2] opacity-50 rounded-lg"></div>
            <div class="absolute left-1/4 bottom-20 w-72 h-44 bg-[#E3F3F2] opacity-40 rounded-lg"></div>
        </div>

        <div class="max-w-6xl mx-auto px-6 text-center relative">
            <h2 class="text-2xl md:text-3xl font-extrabold text-[#0F1B3D] mb-16">
                OUR PURPOSE &amp; PRINCIPLES
            </h2>

            <div class="flex flex-col gap-16">
                <!-- OUR MISSION (card then badge on right) -->
                <div class="grid grid-cols-1 md:grid-cols-[1fr_auto] items-center">
                    <!-- Card column -->
                    <div class="justify-self-center w-full max-w-4xl">
                        <div class="relative bg-white rounded-lg shadow-lg p-8 md:p-10">
                            <!-- teal strip -->
                            <div class="absolute inset-y-0 left-0 w-3 bg-[#0AA2C0] rounded-l-lg"></div>

                            <!-- centered content -->
                            <div class="text-center">
                                <h3 class="text-lg md:text-xl font-semibold text-[#0AA2C0] mb-4">OUR MISSION</h3>
                                <p class="mx-auto max-w-prose text-gray-700 leading-relaxed md:leading-8">
                                    We support and collaborate with FMCGs on their digital transformation journey by
                                    providing
                                    platforms that enable informed decision‑making, optimal resource allocation, and
                                    improved profit margins.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Badge column (right) -->
                    <div class="hidden md:block justify-self-start">
                        <div class="relative w-24 h-24 lg:w-28 lg:h-28">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/rightbadge.svg" alt="badge"
                                class="absolute inset-0 pl-4 w-full h-full block">
                            <div class="absolute inset-0 flex items-center justify-center">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/target.svg" alt="mission icon"
                                    class="block pr-2 w-8 h-8 lg:w-10 lg:h-10 object-contain">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- OUR VISION (badge left then card) -->
                <div class="grid grid-cols-1 md:grid-cols-[auto_1fr] items-center">
                    <!-- Badge column (left) -->
                    <div class="hidden md:block justify-self-end">
                        <div class="relative w-24 h-24 lg:w-28 lg:h-28">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/leftbadge.svg" alt="badge"
                                class="absolute pr-4 inset-0 w-full h-full block">
                            <div class="absolute inset-0 flex items-center justify-center">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/eye.svg" alt="vision icon"
                                    class="block pl-3 pb-1 w-8 h-8 lg:w-10 lg:h-10 object-contain">
                            </div>
                        </div>
                    </div>

                    <!-- Card column -->
                    <div class="justify-self-center w-full max-w-4xl">
                        <div class="relative bg-white rounded-lg shadow-lg p-8 md:p-10">
                            <!-- teal strip -->
                            <div class="absolute inset-y-0 right-0 w-3 bg-[#0AA2C0] rounded-r-lg"></div>

                            <!-- centered content -->
                            <div class="text-center">
                                <h3 class="text-lg md:text-xl font-semibold text-[#0AA2C0] mb-4">OUR VISION</h3>
                                <p class="mx-auto max-w-prose text-gray-700 leading-relaxed md:leading-8">
                                    We are committed to full automation and digitization of distribution processes for
                                    FMCGs across East Africa
                                    to support efficiency, profitability and growth.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end rows -->
            </div>
        </div>
    </section>

    <section class="bg-[#448F9D]">
        <div class="text-center relative">
            <div class="absolute inset-0 flex justify-center pointer-events-none">
                <h2 class="text-6xl md:text-8xl font-bold text-white opacity-10 uppercase select-none ">
                    OUR VALUES
                </h2>
            </div>
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/LeftComp-1.svg" alt="background image"
                class="absolute top-5 left-3 w-[150px] hidden md:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/LeftComp-1.svg" alt="background image"
                class="absolute top-[40%] right-40 w-[100px] hidden md:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Ellipses.png" alt="background image"
                class="absolute bottom-[20%] right-[21%]  hidden xl:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Ellipses.png" alt="background image"
                class="absolute bottom-[20%] left-[2%]  hidden xl:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Ellipses.png" alt="background image"
                class="absolute bottom-[20%] left-[34%]  hidden xl:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Ellipses.png" alt="background image"
                class="absolute top-[19%] right-[40%]  hidden xl:block" />
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Ellipses.png" alt="background image"
                class="absolute top-[20%] left-[19%]  hidden xl:block" />
            <div
                class="absolute top-[14%] left-[17%] bg-[#52B2C44D] text-white text-4xl font-bold rounded-full w-20 h-20 flex items-center justify-center  hidden xl:flex">
                01
            </div>
            <div
                class="absolute top-24 right-[47%] bg-[#52B2C44D] text-white text-4xl font-bold rounded-full w-20 h-20 flex items-center justify-center opacity-70 hidden xl:flex">
                02
            </div>
            <div
                class="absolute bottom-[33%] left-0 bg-[#52B2C44D] text-white text-4xl font-bold rounded-full w-20 h-20 flex items-center justify-center opacity-70 hidden xl:flex">
                03
            </div>
            <div
                class="absolute bottom-[33%] left-[32%] bg-[#52B2C44D] text-white text-4xl font-bold rounded-full w-20 h-20 flex items-center justify-center opacity-70 hidden xl:flex">
                04
            </div>
            <div
                class="absolute bottom-[33%] right-[28%] bg-[#52B2C44D] text-white text-4xl font-bold rounded-full w-20 h-20 flex items-center justify-center opacity-70 hidden xl:flex z-20">
                05
            </div>

            <div class="py-8 lg:pb-32 mx-auto">
                <h2 class="text-3xl md:text-4xl font-bold text-white mb-12 relative z-10">
                    OUR VALUES
                </h2>

                <div class="flex flex-col xl:flex-row justify-center items-center gap-8  xl:gap-20 mt-16 ">
                    <div class="bg-white shadow-lg rounded-lg p-8 text-center w-72 md:w-80 z-20">
                        <h3 class="text-[#3A8B97] font-bold text-lg mb-2">Innovation</h3>
                        <p class="text-gray-600 text-sm">
                            We bring new creative automated
                            solutions to solve customer problems.
                        </p>
                    </div>

                    <div class="bg-white shadow-lg rounded-lg p-8 text-center w-72 md:w-80 xl:ms-6 z-20">
                        <h3 class="text-[#3A8B97] font-bold text-lg mb-2">Excellence</h3>
                        <p class="text-gray-600 text-sm">
                            We are committed to delivering
                            cutting-edge technology and expertise.
                        </p>
                    </div>
                </div>

                <div
                    class="grid md:grid-cols-1 lg:grid-cols-1 xl:grid-cols-3 gap-10 place-items-center mt-10 sm:mt-10 md:mt-10 xl:mt-32 ">
                    <div class="bg-white shadow-lg rounded-lg p-8 text-center w-72 md:w-80 xl:ms-6 z-20">
                        <h3 class="text-[#3A8B97] font-bold text-lg mb-2">Integrity</h3>
                        <p class="text-gray-600 text-sm">
                            We secure customer data entrusted to us ensuring
                            confidentiality, completeness, accuracy and validity.
                        </p>
                    </div>

                    <div class="bg-white shadow-lg rounded-lg p-8 text-center w-72 md:w-80 z-20">
                        <h3 class="text-[#3A8B97] font-bold text-lg mb-2">Agility</h3>
                        <p class="text-gray-600 text-sm">
                            We are quick to adapt and pivot responsively to customers’ needs.
                        </p>
                    </div>

                    <div class="bg-white shadow-lg rounded-lg p-8 text-center w-72 md:w-80 z-20">
                        <h3 class="text-[#3A8B97] font-bold text-lg mb-2">Collaboration</h3>
                        <p class="text-gray-600 text-sm p-2">
                            We partner with our clients to achieve operational excellence &
                            customer-centric solutions.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="relative overflow-hidden bg-[#F5FCFF] pt-8">
        <!-- Big ring, top-left -->
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/small-orange.svg" alt=""
            class="pointer-events-none select-none absolute -left-30 -top-55  hidden sm:block z-0" />
        <!-- Small ring, mid-left -->
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/big-orange.svg" alt=""
            class="pointer-events-none select-none absolute left-0 top-64 w-[9%] hidden sm:block z-0 opacity-90" />

        <div class="relative z-10 mx-auto max-w-6xl px-4 py-12 sm:py-16 lg:py-20">
            <div class="grid grid-cols-1 items-start gap-8 md:grid-cols-[320px_1fr] lg:gap-14">
                <!-- Left: pill CTA -->
                <div class="flex md:block">
                    <a href="#impact" class="group relative inline-flex items-center gap-4 rounded-2xl bg-white pl-6 pr-12 py-2 shadow-sm ring-1 ring-black/5 hover:shadow-md transition
                  mx-auto md:mx-0">
                        <span class="text-[#0E1C2F] text-lg font-semibold tracking-wide">OUR IMPACT</span>
                        <span
                            class="grid h-10 w-10 place-items-center rounded-full bg-[#FFA669] text-white transition group-hover:translate-x-0.5"
                            aria-hidden="true">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="" class="h-5 w-5 object-contain" />
                        </span>
                        <span
                            class="absolute inset-0 rounded-full ring-2 ring-transparent group-focus-visible:ring-[#FFA669]"></span>
                    </a>
                </div>

                <!-- Right: bullets -->
                <div class="text-[#0A2342] leading-relaxed space-y-6">
                    <div class="flex gap-3">
                        <span class="mt-2 inline-block w-2.5 h-2.5 rounded-full bg-[#F9A26C] shrink-0"></span>
                        <p class="m-0">Since our inception, DSCPL has made significant strides in transforming FMCG
                            distribution.</p>
                    </div>

                    <div class="flex gap-3">
                        <span class="mt-2 inline-block w-2.5 h-2.5 rounded-full bg-[#F9A26C] shrink-0"></span>
                        <p class="m-0">
                            Our DDS platforms have processed <strong>2.5 million invoices</strong>, scheduled
                            <strong>2.8 million delivery journeys</strong>, and handled transactions worth over
                            <strong>$10 million</strong>, serving more than <strong>5,000 users</strong> across Kenya,
                            Uganda, and Tanzania.
                        </p>
                    </div>

                    <div class="flex gap-3">
                        <span class="mt-2 inline-block w-2.5 h-2.5 rounded-full bg-[#F9A26C] shrink-0"></span>
                        <p class="m-0">
                            By automating processes, businesses have achieved up to <strong>28% cost reductions</strong>
                            and
                            <strong>20% improvements</strong> in customer engagement.
                        </p>
                    </div>

                    <div class="flex gap-3">
                        <span class="mt-2 inline-block w-2.5 h-2.5 rounded-full bg-[#F9A26C] shrink-0"></span>
                        <p class="m-0">
                            From empowering small retailers with instant SaaS to enabling enterprises with scalable
                            cloud
                            platforms, DSCPL is redefining efficiency and connectivity in the FMCG supply chain.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="w-full">
        <div class="grid grid-cols-1 md:grid-cols-2 min-h-[500px]">

            <!-- Left Content Box -->
            <div class="bg-[#448F9D] flex items-center">
                <div
                    class="relative w-full h-full p-8 md:p-16 text-white flex flex-col justify-center text-base md:text-lg">

                    <!-- Background pattern -->
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Pattern.png" alt="Background Pattern"
                        class="absolute inset-0 w-full h-full object-cover pointer-events-none" />

                    <h2 class="relative text-3xl md:text-5xl leading-snug font-benton font-bold">
                        Join Us in <br class="hidden md:block">
                        <span>Transforming FMCG</span>
                    </h2>

                    <h3 class="relative mt-6 text-lg md:text-xl font-bold leading-relaxed">
                        Ready to streamline your supply chain and <br class="hidden md:block">
                        <span>unlock new growth opportunities?</span>
                    </h3>

                    <h2 class="relative mt-4 text-base md:text-lg flex items-start gap-3">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/check.svg" alt="bullet" class="w-5 h-5 mt-1" />
                        Explore our DDS solutions or contact our team to see how DSCPL can power your FMCG success.
                    </h2>

                    <!-- Buttons -->
                    <div class="relative mt-8 flex flex-col sm:flex-row gap-4">
                        <a href="#" style="background: linear-gradient(84.35deg, #6CD3E7 -2.47%, #235A66 100%);"
                            class="freeButton px-6 py-3 text-white font-medium rounded-md text-center transition duration-300 ease-in-out hover:brightness-90 text-base md:text-lg inline-flex items-center gap-2">
                            SIGN UP NOW
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" />
                        </a>


                        <a href="http://159.203.159.79/contact-us/"
                            class="px-6 py-3 border border-white hover:bg-white hover:text-[#3A9DB2] text-white font-medium rounded-md text-center transition text-base md:text-lg">
                            CONTACT SALES
                        </a>
                    </div>
                </div>
            </div>


            <!-- Right Image Box -->
            <div class="bg-[#E6F4F6] flex items-center justify-center p-6 md:p-12">
                <!-- Card with top-right & bottom-left curved -->
                <div class="bg-[#448F9D] overflow-hidden shadow-lg max-w-md
              rounded-tr-[4rem] rounded-bl-[4rem]">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/pakage1.png" alt="FMCG Worker"
                        class="w-full h-full object-cover rounded-tr-[1.5rem] rounded-bl-[1.5rem]" />
                </div>
            </div>


        </div>
    </section>

    <section class="bg-white">
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-12">
            <!-- Heading -->
            <h2 class="text-xl sm:text-2xl font-semibold text-slate-900 mb-6">
                Latest from FMCG News
            </h2>

            <!-- Grid -->
            <div class="grid gap-8 lg:grid-cols-3">
                <!-- Left: Featured card -->
                <article
                    class="lg:col-span-2 group rounded-2xl overflow-hidden border border-slate-200 shadow-sm hover:shadow-md transition-shadow">
                    <a href="#" class="block">
                        <div class="aspect-[19/6] w-full overflow-hidden bg-slate-100">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/truck.png" alt="Warehouse worker scanning packages"
                                class="h-full w-full object-cover transition-transform duration-300 group-hover:scale-[1.02]" />
                        </div>
                    </a>

                    <div class="p-6 sm:p-7">
                        <!-- Meta row -->
                        <div class="flex flex-wrap items-center gap-x-3 gap-y-2 text-sm text-slate-600 mb-3">
                            <span class="font-medium text-slate-900">John Alvarez</span>
                            <span aria-hidden="true">•</span>
                            <time datetime="2022-02-18">Feb 18, 2022</time>
                            <span aria-hidden="true">•</span>
                            <span>19 min read</span>
                        </div>

                        <h3
                            class="text-2xl sm:text-3xl font-semibold text-slate-900 group-hover:text-indigo-600 transition-colors">
                            Optimizing FMCG Delivery Routes with DDS
                        </h3>

                        <p class="mt-3 text-slate-700">
                            Explore how DDS’s route optimization reduces fuel costs and ensures timely deliveries for
                            businesses.
                        </p>

                        <div class="mt-5 flex items-center gap-3">
                            <span
                                class="inline-flex items-center rounded-full bg-slate-100 px-2.5 py-1 text-xs font-medium text-slate-700">FMCG
                                News</span>
                            <span
                                class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-1 text-xs font-medium text-amber-800">Research</span>
                        </div>
                    </div>
                </article>

                <!-- Right: Stacked list -->
                <div class="space-y-8">
                    <!-- Small card 1 -->
                    <article class="group flex gap-5">
                        <a href="#" class="shrink-0 w-36 sm:w-40 md:w-44 overflow-hidden rounded-xl bg-slate-100">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/saas.png" alt="Retail worker with clipboard"
                                class="h-full w-full object-cover transition-transform duration-300 group-hover:scale-[1.03]" />
                        </a>
                        <div class="min-w-0">
                            <div class="flex flex-wrap items-center gap-x-3 gap-y-1 text-xs text-slate-600">
                                <span class="font-medium text-slate-900">Sarah McKenzie</span>
                                <span aria-hidden="true">•</span>
                                <time datetime="2022-06-11">Jun 11, 2022</time>
                            </div>

                            <a href="#">
                                <h3
                                    class="mt-1 text-lg font-semibold text-slate-900 group-hover:text-indigo-600 transition-colors">
                                    Why FMCG Retailers Need SaaS Now
                                </h3>
                            </a>

                            <p class="mt-2 line-clamp-3 text-slate-700">
                                Highlight the instant sign‑up and ease of DDS SaaS, helping small businesses compete
                                with larger players.
                            </p>

                            <div class="mt-3 flex items-center gap-2">
                                <span
                                    class="inline-flex items-center rounded-full bg-slate-100 px-2 py-0.5 text-[11px] font-medium text-slate-700">FMCG</span>
                                <span
                                    class="inline-flex items-center rounded-full bg-amber-100 px-2 py-0.5 text-[11px] font-medium text-amber-800">Research</span>
                            </div>
                        </div>
                    </article>

                    <!-- Small card 2 -->
                    <article class="group flex gap-5">
                        <a href="#" class="shrink-0 w-36 sm:w-40 md:w-44 overflow-hidden rounded-xl bg-slate-100">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/warehouse.png" alt="Hand using a tablet"
                                class="h-full w-full object-cover transition-transform duration-300 group-hover:scale-[1.03]" />
                        </a>
                        <div class="min-w-0">
                            <div class="flex flex-wrap items-center gap-x-3 gap-y-1 text-xs text-slate-600">
                                <span class="font-medium text-slate-900">Anna Maria Lopez</span>
                                <span aria-hidden="true">•</span>
                                <time datetime="2022-03-08">Mar 8, 2022</time>
                            </div>

                            <a href="#">
                                <h3
                                    class="mt-1 text-lg font-semibold text-slate-900 group-hover:text-indigo-600 transition-colors">
                                    Building FMCG Customer Loyalty with Data
                                </h3>
                            </a>

                            <p class="mt-2 line-clamp-3 text-slate-700">
                                See how DDS’s customer data and analytics tools drive personalized service and up to 20%
                                better engagement.
                            </p>

                            <div class="mt-3 flex items-center gap-2">
                                <span
                                    class="inline-flex items-center rounded-full bg-slate-100 px-2 py-0.5 text-[11px] font-medium text-slate-700">FMCG</span>
                                <span
                                    class="inline-flex items-center rounded-full bg-amber-100 px-2 py-0.5 text-[11px] font-medium text-amber-800">Research</span>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>



<?php
get_footer();