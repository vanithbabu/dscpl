   
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
   <section class="relative overflow-hidden">
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/career-bg.png" alt="" aria-hidden="true"
            class="pointer-events-none select-none absolute inset-0 -z-10 h-full w-full object-cover object-bottom" />
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <div class="grid lg:grid-cols-2 gap-10 lg:gap-14 items-center pt-16 pb-24 lg:pt-24 lg:pb-40">
                <div class="text-white">
                    <h1 class="text-3xl sm:text-4xl lg:text-5xl font-extrabold leading-tight">
                        Join DSCPL to Shape the<br class="hidden sm:block"> Future of FMCG
                    </h1>
                    <p class="mt-5 max-w-xl text-base sm:text-lg/relaxed text-white/90">
                        Be part of a team revolutionizing supply chain<span> solutions across Africa </span>
                    </p>
                    <div class="mt-8">
                        <a href="#jobs"
                            class="freeButton inline-flex items-center gap-2 rounded-md px-5 py-3 text-sm font-semibold text-white shadow-sm ring-1 ring-inset ring-black/10 focus:outline-none focus-visible:ring-2 focus-visible:ring-white/70 hover:opacity-95 [background:linear-gradient(84.35deg,_#6CD3E7_-2.47%,_#235A66_100%)]">
                            View Job Openings
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="" aria-hidden="true"
                                class="h-4 w-4 object-contain" loading="lazy" />
                        </a>
                    </div>
                </div>
                <div class="relative flex items-center justify-center">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/career-main-page.png" />
                </div>
            </div>
        </div>
    </section>


    <section class="relative bg-white overflow-hidden">
        <!-- Background pattern -->
        <div
            class="pointer-events-none absolute inset-0 bg-[radial-gradient(circle_at_20%_10%,#eef2ff_1px,transparent_1px),radial-gradient(circle_at_80%_60%,#eef2ff_1px,transparent_1px)] bg-[length:24px_24px,28px_28px] opacity-60">
        </div>

        <div class="relative mx-auto max-w-7xl px-6 py-16 lg:py-24">
            <div class="grid items-center gap-16 lg:grid-cols-2">

                <!-- Left Text Section -->
                <div class="max-w-xl">
                    <h2 class="text-3xl font-semibold tracking-tight text-[#2E3A65] sm:text-4xl">
                        Who are we ?
                    </h2>

                    <p class="mt-6 text-base font-semibold text-slate-700">
                        DSCP<span class="tracking-tight">L</span> is a technology leader automating FMCG
                        distribution since 2020.
                    </p>

                    <p class="mt-4 text-base leading-7 text-slate-700">
                        We build digital platforms like DDS to empower retailers and enterprises.
                    </p>

                    <p class="mt-6 text-base font-semibold leading-7 text-[#2E3A65]">
                        Our mission is to create resilient, innovative supply chains that drive growth.
                    </p>
                </div>

                <!-- Right Image Section -->
                <div class="relative w-full flex justify-center">
                    <div class="relative">
                        <!-- Background layer (bottom-most) -->
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/contact-sectonBG.svg" alt="Decorative background"
                            class="absolute z-0 -top-8 -right-8 w-[800px] sm:w-[960px] md:w-[1120px] opacity-80" />

                        <!-- Delivery person (middle layer) -->
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/delivery-person.png" alt="Delivery person"
                            class="relative z-30 left-[-30%] h-[260px] sm:h-[300px] md:h-[340px] object-contain mx-auto" />

                        <!-- Dashboard overlay (top layer) -->
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashboard-1.png" alt="Dashboard preview"
                            class="absolute z-20 right-2 top-[10%] w-[60%] sm:right-4 sm:top-[15%] sm:w-[50%] md:-right-10 md:top-[20%] md:w-[320px] drop-shadow-lg" />
                    </div>
                </div>


            </div>
        </div>
    </section>


    <section class="relative bg-white">
        <div class="mx-auto max-w-6xl px-6 py-16 lg:py-24">
            <!-- subtle background nodes -->
            <div
                class="pointer-events-none absolute inset-0 bg-[radial-gradient(circle_at_20%_10%,#eef2ff_1px,transparent_1px),radial-gradient(circle_at_80%_60%,#eef2ff_1px,transparent_1px)] bg-[length:24px_24px,28px_28px] opacity-60">
            </div>

            <div class="relative grid items-center gap-20 lg:grid-cols-2">
                <!-- Map card with corner accents -->
                <div class="relative w-full max-w-xl">
                    <!-- top-left accent -->
                    <span aria-hidden="true" class="absolute -left-4 -top-4 h-16 w-16 rounded-xl
         bg-[_linear-gradient(106.78deg,_#479EBE_38.93%,_#24586C_106.53%)]">
                    </span>
                    <!-- bottom-right accent -->
                    <span aria-hidden="true" class="absolute -right-6 -bottom-8 h-20 w-20 rounded-xl
         bg-[_linear-gradient(106.78deg,_#479EBE_38.93%,_#24586C_106.53%)]">
                    </span>


                    <!-- card -->
                    <div class="relative overflow-hidden rounded-2xl ring-1 ring-black/5 shadow-md">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/NairoMap.jpg" alt="Map centered on Nairobi, Kenya"
                            class="block h-[280px] w-full object-cover md:h-[320px]" />
                    </div>
                </div>

                <!-- Text side -->
                <div class="max-w-xl">
                    <h2 class="text-3xl font-semibold tracking-tight text-[#2E3A65] sm:text-4xl">
                        Where Are We?
                    </h2>


                    <p class="mt-6 text-base font-bold leading-7 text-slate-700">
                        Based in Nairobi, Kenya, we’re at the heart of East Africa’s innovation hub.
                    </p>

                    <p class="mt-4 text-base leading-7 text-slate-700">
                        We operate across Kenya, Uganda, and Tanzania, serving thousands of FMCG businesses.
                    </p>

                    <p class="mt-6 text-base font-bold leading-7 text-slate-900">
                        <span class="text-[#2E3A65]">
                            Our vision extends across Africa, with plans to expand and transform the continent.
                        </span>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="relative overflow-hidden bg-[#F3F9FD]">
        <!-- Left decorative logo -->
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/RIghtComp.svg" alt=""
            class="pointer-events-none absolute -left-10 top-6 hidden h-50 w-50 opacity-30 sm:block md:-left-6 lg:left-2 xl:left-6" />

        <!-- Right decorative logo -->
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/LeftComp.svg" alt=""
            class="pointer-events-none absolute right-2 top-8 hidden h-21 w-21 opacity-30 sm:block md:right-4 lg:right-10" />

        <div class="mx-auto max-w-7xl px-5 py-14 sm:px-6 md:py-16 lg:px-8">
            <!-- Header -->
            <div class="text-center">
                <h2 class="text-[22px] font-extrabold tracking-tight text-[#11223A] sm:text-3xl">
                    Benefits &amp; Perks
                </h2>
                <p class="mx-auto mt-3 mb-20 max-w-2xl text-[13px] leading-6 text-[#718199] sm:text-[15px]">
                    Celebrate your competitive benefit package that might include health and dental, family
                    leave, paid vacation, and a 401k.
                </p>
            </div>
            <div class="grid grid-cols-1 gap-12 sm:gap-7 md:mt-12 md:grid-cols-3">
                <!-- Card 1 -->
                <article
                    class="relative rounded-2xl bg-white p-6 pb-7 pt-12 text-center shadow-[0_10px_30px_rgba(17,34,58,0.08)]">
                    <div class="absolute left-1/2 top-0 -translate-x-1/2 -translate-y-1/2">
                        <div class="flex h-20 w-20 items-center justify-center rounded-full  ">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/event1.png" alt="Stability icon"
                                class="w-full select-none" />
                        </div>
                    </div>
                    <h3 class="text-[15px] font-bold text-[#034D82]">Stability &amp; Planning</h3>
                    <p class="mt-2 text-[13px] leading-6 text-[#6B7C93]">Provide details about a key benefit, its
                        impact, and the opportunities it offers.</p>
                </article>

                <!-- Card 2 -->
                <article
                    class="relative rounded-2xl bg-white p-6 pb-7 pt-12 text-center shadow-[0_10px_30px_rgba(17,34,58,0.08)]">
                    <div class="absolute left-1/2 top-0 -translate-x-1/2 -translate-y-1/2">
                        <div class="flex h-20 w-20 items-center justify-center rounded-full ">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Health-Family.png" alt="Growth icon"
                                class="h-100 w-100 object-contain select-none" />
                        </div>
                    </div>
                    <h3 class="text-[15px] font-bold text-[#034D82]">Professional Growth</h3>
                    <p class="mt-2 text-[13px] leading-6 text-[#6B7C93]">Provide details about a key benefit, its
                        impact, and the opportunities it offers.</p>
                </article>

                <!-- Card 3 -->
                <article
                    class="relative rounded-2xl bg-white p-6 pb-7 pt-12 text-center shadow-[0_10px_30px_rgba(17,34,58,0.08)]">
                    <div class="absolute left-1/2 top-0 -translate-x-1/2 -translate-y-1/2">
                        <div class="flex h-20 w-20 items-center justify-center rounded-full ">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Health-Family.png" alt="Health and family icon"
                                class="h-100 w-100 object-contain select-none" />
                        </div>
                    </div>
                    <h3 class="text-[15px] font-bold text-[#034D82]">Health &amp; Family</h3>
                    <p class="mt-2 text-[13px] leading-6 text-[#6B7C93]">Provide details about a key benefit, its
                        impact, and the opportunities it offers.</p>
                </article>
            </div>

        </div>
    </section>

    <section class="bg-white py-20">
        <div class="max-w-7xl mx-auto px-6 grid grid-cols-1 md:grid-cols-2 items-center gap-10">
            <!-- Left Content -->
            <div>
                <h2 class="text-2xl md:text-3xl font-bold text-[#0A2342] mb-4">
                    You’ll Love Our Work Style
                </h2>
                <p class="text-gray-600 mb-4">
                    Introduce your video and provide a sense of your company’s vibe and workflow.
                </p>
                <p class="text-gray-600 mb-8">
                    Tell applicants how they’ll mesh with your current team – and why they’ll love collaborating with
                    their future colleagues.
                </p>
                <button
                    class=" freeButton inline-flex items-center gap-2 bg-gradient-to-r from-[#25A4B5] to-[#006C90] text-white font-medium px-5 py-3 rounded-md shadow hover:opacity-90 transition">
                    Watch the video
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow icon" />
                </button>
            </div>

            <!-- Right Video Thumbnail -->
            <div class="relative rounded-xl overflow-hidden shadow-lg">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/CarrerAD-scaled.jpg" alt="Team working together"
                    class="w-full h-full object-cover" />
                <!-- Play Button Overlay -->
                <div class="absolute inset-0 flex items-center justify-center">
                    <div
                        class="w-16 h-16 bg-white bg-opacity-80 rounded-full flex items-center justify-center shadow-md">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="#0A2342" viewBox="0 0 24 24" class="w-7 h-7">
                            <path d="M8 5v14l11-7z" />
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-white">
        <div class="mx-auto max-w-7xl px-4 py-12 sm:py-16">
            <div class="text-center">
                <h2 class="text-2xl font-extrabold tracking-tight text-slate-900 sm:text-3xl">
                    More Sweet Perks
                </h2>
            </div>
            <div class="relative mt-10 hidden h-24 lg:block">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Uparrow.svg" alt=""
                    class="pointer-events-none absolute left-[15%] top-[79%]  -translate-y-1/2  opacity-90">

                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Downarrow.svg" alt=""
                    class="pointer-events-none absolute left-[41%] bottom-[-120%] -translate-y-1/2  opacity-90">

                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Uparrow.svg" alt=""
                    class="pointer-events-none absolute left-[66%] top-[79%]  -translate-y-1/2  opacity-90">
            </div>
            <div class="mt-8 grid gap-12 sm:grid-cols-2 lg:mt-6 lg:grid-cols-4">
                <div class="text-center">
                    <div class="mx-auto mb-3 flex h-14 w-14 items-center justify-center">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/free-lunch.svg" alt="Free Lunch icon"
                            class="h-6 w-6 object-contain" />
                    </div>
                    <h3 class="text-lg font-semibold text-slate-900">Free Lunch</h3>
                    <p class="mx-auto mt-2 max-w-xs text-sm leading-6 text-slate-600">
                        Aliquam facilisis egestas sapien, nec tempor leo tristique at.
                    </p>
                </div>

                <div class="text-center">
                    <div class="mx-auto mb-3 flex h-14 w-14 items-center justify-center">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/urban-office.svg" alt="Urban Office icon" class="object-contain" />
                    </div>
                    <h3 class="text-lg font-semibold text-slate-900">Urban Office</h3>
                    <p class="mx-auto mt-2 max-w-xs text-sm leading-6 text-slate-600">
                        Curabitur sit amet maximus ligula. Nam a nulla ante. Nam sodales.
                    </p>
                </div>

                <div class="text-center">
                    <div class="mx-auto mb-3 flex h-14 w-14 items-center justify-center">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/remote-work.svg" alt="Remote Work icon" class="object-contain " />
                    </div>
                    <h3 class="text-lg font-semibold text-slate-900">Remote Work</h3>
                    <p class="mx-auto mt-2 max-w-xs text-sm leading-6 text-slate-600">
                        Phasellus quis eleifend ex. Morbi nec fringilla nibh.
                    </p>
                </div>

                <div class="text-center">
                    <div class="mx-auto mb-3 flex h-14 w-14 items-center justify-center">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/job-security.svg" alt="Job Security icon"
                            class="h-6 w-6 object-contain" />
                    </div>
                    <h3 class="text-lg font-semibold text-slate-900">Job Security</h3>
                    <p class="mx-auto mt-2 max-w-xs text-sm leading-6 text-slate-600">
                        Curabitur sit amet maximus ligula. Nam a nulla ante, Nam sodales purus.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="relative bg-white">
        <!-- Corner logos (decorative) -->
        <div class="pointer-events-none absolute left-2 mt-6 top-6 hidden sm:block">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/RIghtComp.svg" alt="" class="h-50 w-50 opacity-80" />
        </div>
        <div class="pointer-events-none absolute right-2 top-6 hidden sm:block">
            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/LeftComp.svg" alt="" class="h-25 w-25 opacity-80" />
        </div>

        <!-- Container -->
        <div class="mx-auto max-w-7xl px-4 mb-12 sm:px-6 lg:px-8 py-12 md:py-16">
            <!-- Header -->
            <div class="text-center">
                <h2 class="text-2xl sm:text-3xl md:text-4xl font-semibold tracking-tight text-slate-800">
                    Defining Our Culture
                </h2>
                <p class="mt-3 mb-20 text-sm sm:text-base text-slate-500">
                    Our values guide us in creating impactful solutions and a thriving workplace.
                </p>
            </div>

            <!-- Cards -->
            <div class="mt-10 grid grid-cols-1 md:grid-cols-3 gap-10">
                <!-- Card -->
                <article
                    class="flex flex-col w-[60%] rounded-2xl border border-slate-100 bg-white p-6 shadow-sm  transition-shadow duration-200 hover:shadow-md">
                    <div class="rounded-xl pt-1 bg-[#80CEC8] border-t border-[#80CEC8]">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/GP2.jpg" alt="Innovation"
                            class="aspect-[4/4] w-full rounded-lg object-cover" />
                    </div>
                    <div class="mt-5 grow">
                        <div class="flex items-baseline gap-3">
                            <span class="text-teal-600 font-semibold tracking-wider text-lg">01</span>
                            <h3 class="text-xl font-bold text-slate-900">/Innovation</h3>
                        </div>
                        <p class="mt-3 text-sm leading-6 text-slate-600">
                            We pioneer cutting-edge solutions for FMCG challenges. Join us to push boundaries and drive
                            meaningful change.
                        </p>
                    </div>
                </article>

                <!-- Card -->
                <article
                    class="flex flex-col w-[60%] rounded-2xl border border-slate-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
                    <div class="rounded-xl pt-1 bg-[#80CEC8] border-t border-[#80CEC8]">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/GP3.jpg" alt="Collaboration"
                            class="aspect-[4/4] w-full rounded-lg object-cover" />
                    </div>
                    <div class="mt-5 grow">
                        <div class="flex items-baseline gap-3">
                            <span class="text-teal-600 font-semibold tracking-wider text-lg">02</span>
                            <h3 class="text-xl font-bold text-slate-900">/Collaboration</h3>
                        </div>
                        <p class="mt-3 text-sm leading-6 text-slate-600">
                            We thrive on teamwork, fostering partnerships internally and externally. Be part of a
                            supportive, connected community.
                        </p>
                    </div>
                </article>

                <!-- Card -->
                <article
                    class="flex flex-col w-[60%] rounded-2xl border border-slate-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
                    <div class="rounded-xl pt-1 bg-[#80CEC8] border-t border-[#80CEC8]">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/GP1.jpg" alt="Integrity"
                            class="aspect-[4/4] w-full rounded-lg object-cover" />
                    </div>
                    <div class="mt-5 grow">
                        <div class="flex items-baseline gap-3">
                            <span class="text-teal-600 font-semibold tracking-wider text-lg">03</span>
                            <h3 class="text-xl font-bold text-slate-900">/Integrity</h3>
                        </div>
                        <p class="mt-3 text-sm leading-6 text-slate-600">
                            We uphold transparency and ethical practices in all we do. Work with a team that values
                            trust and accountability.
                        </p>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <section class="bg-[#F3FAFF]">
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-14 ">
            <div id="teamScroller"
                class="flex gap-7 mb-6 overflow-x-auto scroll-smooth snap-x snap-mandatory pb-2 [-ms-overflow-style:none] [scrollbar-width:none] [&::-webkit-scrollbar]:hidden">
                <article
                    class="relative snap-start shrink-0 w-[280px] sm:w-[300px] md:w-[340px] h-[360px] rounded-2xl overflow-hidden bg-slate-200">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/ImageWiz4-scaled.jpg" alt="Robert Johnson" class="h-full w-full object-cover">
                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    <span
                        class="absolute left-4 bottom-12 text-[10px] font-bold uppercase tracking-[0.12em] text-white/85">CEO</span>
                    <div class="absolute left-4 bottom-4">
                        <p class="text-white text-lg sm:text-xl font-extrabold drop-shadow">Robert Johnson</p>
                    </div>
                </article>
                <article
                    class="relative snap-start shrink-0 w-[280px] sm:w-[300px] md:w-[340px] h-[360px] rounded-2xl overflow-hidden bg-slate-200">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/ImageWiz2-scaled.jpg" alt="Alexandra Jones" class="h-full w-full object-cover">
                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    <span
                        class="absolute left-4 bottom-12 text-[10px] font-bold uppercase tracking-[0.12em] text-white/85">Product
                        Manager</span>
                    <div class="absolute left-4 bottom-4">
                        <p class="text-white text-lg sm:text-xl font-extrabold drop-shadow">Alexandra Jones</p>
                    </div>
                </article>
                <article
                    class="relative snap-start shrink-0 w-[280px] sm:w-[300px] md:w-[340px] h-[360px] rounded-2xl overflow-hidden bg-slate-200">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/ImageWiz3-scaled.jpg" alt="Steven Purcell" class="h-full w-full object-cover">
                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    <span
                        class="absolute left-4 bottom-12 text-[10px] font-bold uppercase tracking-[0.12em] text-white/85">Senior
                        Developer</span>
                    <div class="absolute left-4 bottom-4">
                        <p class="text-white text-lg sm:text-xl font-extrabold drop-shadow">Steven Purcell</p>
                    </div>
                </article>
                <article
                    class="relative snap-start shrink-0 w-[280px] sm:w-[300px] md:w-[340px] h-[360px] rounded-2xl overflow-hidden bg-slate-200">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/ImageWiz2-scaled.jpg" alt="Alexa Green" class="h-full w-full object-cover">
                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    <span
                        class="absolute left-4 bottom-12 text-[10px] font-bold uppercase tracking-[0.12em] text-white/85">Designer</span>
                    <div class="absolute left-4 bottom-4">
                        <p class="text-white text-lg sm:text-xl font-extrabold drop-shadow">Alexa Green</p>
                    </div>
                </article>

            </div>
            <div class="flex items-end justify-between gap-6">
                <div>
                    <h2 class="text-3xl font-extrabold tracking-tight text-[#0F172A]">Meet the Team</h2>
                    <p class="mt-1 text-slate-500">The people who make everything happen</p>
                </div>

                <div class="flex items-center gap-3">
                    <button id="teamPrev"
                        class="grid h-9 w-9 place-items-center rounded-lg border border-[#44909F] bg-white text-slate-700 transition hover:bg-slate-50 active:scale-95 focus:outline-none focus:ring-2 focus:ring-slate-300"
                        type="button" aria-label="Previous">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/left-arrow.svg" alt="" class="h-4 w-4 shrink-0" />
                    </button>

                    <button id="teamNext"
                        class="grid h-9 w-9 place-items-center rounded-lg border border-[#44909F] bg-white text-slate-700 transition hover:bg-slate-50 active:scale-95 focus:outline-none focus:ring-2 focus:ring-slate-300"
                        type="button" aria-label="Action">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow-blue.svg" alt="" class="h-4 w-4 shrink-0" />
                    </button>
                </div>
            </div>
        </div>
    </section>
   

    <section class="bg-white">
        <div class="mx-auto max-w-[1200px] px-6 pt-16 pb-20">
            <!-- Heading -->
            <header class="text-center">
                <h2 class="text-[34px] leading-[44px] font-extrabold text-[#16223C] tracking-[-0.02em]">
                    Open Positions
                </h2>
                <p class="mt-3 text-[15px] leading-[24px] text-[#7A889E]">
                    Is one of these a perfect match for who you are and what you do?
                </p>
            </header>

            <!-- Content grid -->
            <div class="mt-12 grid grid-cols-1 gap-8 lg:grid-cols-[280px_minmax(0,1fr)]">
                <!-- Sidebar -->
                <aside>
                    <div class="w-full rounded-[12px] border border-[#E6ECF2] overflow-hidden">
                        <!-- Sidebar header -->
                        <div class="flex items-center gap-2 bg-[#F6FAFE] px-5 py-4 border-b border-[#E6ECF2]">
                            <span
                                class="inline-flex h-4 w-4 items-center justify-center rounded text-white text-[10px] leading-none"><img
                                    src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/famicons_list-outline.svg" /></span>
                            <span class="text-[15px] font-semibold text-[#334155]">Categories</span>
                        </div>
                        <!-- Items -->
                        <nav class="py-1">
                            <a class="block px-5 py-[10px] text-[15px] text-[#5B6B82] hover:bg-[#F8FAFC]" href="#">HR
                                &amp; Admin</a>
                            <a class="block px-5 py-[10px] bg-[#F1F8FF] text-[15px] text-[#0F172A] font-medium"
                                href="#">
                                <span class="flex items-center justify-between">
                                    <span>Engineering</span>
                                    <span class="text-[#64748B]">(3)</span>
                                </span>
                            </a>
                            <a class="block px-5 py-[10px] text-[15px] text-[#5B6B82] hover:bg-[#F8FAFC]"
                                href="#">Support</a>
                            <a class="block px-5 py-[10px] text-[15px] text-[#5B6B82] hover:bg-[#F8FAFC]"
                                href="#">Design</a>
                            <a class="block px-5 py-[10px] text-[15px] text-[#5B6B82] hover:bg-[#F8FAFC]"
                                href="#">Digital Marketing</a>
                        </nav>
                    </div>
                </aside>

                <!-- List -->
                <div class="space-y-5">
                    <!-- Card 1 -->
                    <a href="#" class="block rounded-[12px] border border-[#E6ECF2] bg-white
         shadow-[0_1px_0_0_rgba(0,0,0,0.04),0_0_0_1px_rgba(0,0,0,0.02)]
         hover:shadow-[0_2px_6px_0_rgba(0,0,0,0.06),0_0_0_1px_rgba(0,0,0,0.03)]
         transition-shadow duration-200">

                        <div class="flex flex-col gap-5 md:flex-row md:items-center md:justify-between px-6 py-6">
                            <div class="text-[#16223C] text-[18px] leading-[26px]">Embedded Engineer</div>
                            <div class="flex items-center gap-10">
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#F0632F]">Experience
                                    </div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2 Years</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#E24444]">Deadline</div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2021-05-08
                                    </div>
                                </div>
                                <div class="shrink-0">
                                    <span
                                        class="inline-flex h-10 w-12 items-center justify-center rounded-xl border border-[#44909F] text-[#6B7280]">
                                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow-blue.svg" alt="Go to details"
                                            class="h-4 w-4 object-contain pointer-events-none select-none"
                                            loading="lazy" decoding="async" />
                                    </span>
                                </div>
                            </div>
                        </div>
                    </a>

                    <!-- Card 2 -->
                    <a href="#" class="block rounded-[12px] border border-[#E6ECF2] bg-white
         shadow-[0_1px_0_0_rgba(0,0,0,0.04),0_0_0_1px_rgba(0,0,0,0.02)]
         hover:shadow-[0_2px_6px_0_rgba(0,0,0,0.06),0_0_0_1px_rgba(0,0,0,0.03)]
         transition-shadow duration-200">
                        <div class="flex flex-col gap-5 md:flex-row md:items-center md:justify-between px-6 py-6">
                            <div class="text-[#16223C] text-[18px] leading-[26px]">Software Engineer</div>
                            <div class="flex items-center gap-10">
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#F0632F]">Experience
                                    </div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2 Years</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#E24444]">Deadline</div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2021-05-08
                                    </div>
                                </div>
                                <div class="shrink-0">
                                    <span
                                        class="inline-flex h-10 w-12 items-center justify-center rounded-xl border border-[#44909F] text-[#6B7280]">
                                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow-blue.svg" alt="Go to details"
                                            class="h-4 w-4 object-contain pointer-events-none select-none"
                                            loading="lazy" decoding="async" />
                                    </span>
                                </div>
                            </div>
                        </div>
                    </a>

                    <!-- Card 3 -->
                    <a href="#" class="block rounded-[12px] border border-[#E6ECF2] bg-white
         shadow-[0_1px_0_0_rgba(0,0,0,0.04),0_0_0_1px_rgba(0,0,0,0.02)]
         hover:shadow-[0_2px_6px_0_rgba(0,0,0,0.06),0_0_0_1px_rgba(0,0,0,0.03)]
         transition-shadow duration-200">
                        <div class="flex flex-col gap-5 md:flex-row md:items-center md:justify-between px-6 py-6">
                            <div class="text-[#16223C] text-[18px] leading-[26px]">Paid Advertising Specialist</div>
                            <div class="flex items-center gap-10">
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#F0632F]">Experience
                                    </div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2 Years</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-[13px] leading-[16px] font-semibold text-[#E24444]">Deadline</div>
                                    <div class="text-[16px] leading-[22px] font-semibold text-[#16223C]">2021-05-08
                                    </div>
                                </div>
                                <div class="shrink-0">
                                    <span
                                        class="inline-flex h-10 w-12 items-center justify-center rounded-xl border border-[#44909F] text-[#6B7280]">
                                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow-blue.svg" alt="Go to details"
                                            class="h-4 w-4 object-contain pointer-events-none select-none"
                                            loading="lazy" decoding="async" />
                                    </span>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-white py-20">
        <div class="max-w-[1200px] mx-auto px-4">
            <!-- Title -->
            <h2 class="text-center text-[32px] md:text-[36px] font-bold text-[#0A2342] mb-6 md:mb-10 leading-tight">
                What are our team members saying
            </h2>

            <!-- Mobile controls between title and cards -->
            <div class="flex items-center justify-between md:hidden mb-6">
                <button aria-label="Previous"
                    class="w-10 h-10 flex items-center justify-center border border-[#E0E7F1] rounded-2xl bg-white shadow-sm hover:bg-[#F5F9FF] transition">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="#0A2342" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                    </svg>
                </button>
                <button aria-label="Next"
                    class="w-10 h-10 flex items-center justify-center border border-[#E0E7F1] rounded-2xl bg-white shadow-sm hover:bg-[#F5F9FF] transition">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="#0A2342" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
                    </svg>
                </button>
            </div>

            <!-- Carousel wrapper -->
            <div class="relative flex flex-col md:flex-row items-center justify-center gap-6 md:gap-14">
                <!-- Left Arrow desktop -->
                <button aria-label="Previous"
                    class="hidden md:flex absolute -left-10 top-1/2 -translate-y-1/2 z-20 w-[48px] h-[48px] items-center justify-center border border-[#E0E7F1] rounded-2xl bg-white shadow-sm hover:bg-[#F5F9FF] transition">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="#0A2342" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
                    </svg>
                </button>

                <!-- Testimonial Card 1 -->
                <div
                    class="w-full md:w-[520px] bg-white rounded-2xl border border-[#E4EAF1] shadow-[0_4px_12px_rgba(0,0,0,0.05)] p-6 md:p-10">
                    <div class="flex items-start gap-4 mb-5">
                        <div
                            class="w-[48px] h-[48px] rounded-full border border-[#E4EAF1] flex items-center justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/circle-avatar.svg" alt="user" class="w-[40px] h-[40px]" />
                        </div>
                        <div>
                            <h3 class="font-semibold text-[#0A2342] text-[16px]">Bill Carter</h3>
                            <p class="text-[#FF4D29] text-sm">Product Designer at Moqups</p>
                        </div>
                    </div>
                    <div class="bg-[#F8FBFF] rounded-xl p-6 relative">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="#FF4D29" viewBox="0 0 24 24"
                            class="w-6 h-6 mb-2 opacity-90">
                            <path
                                d="M7.17 6A5.001 5.001 0 0 0 2 11v7a2 2 0 0 0 2 2h5v-7H4v-2a3 3 0 0 1 3-3h.17zM19.17 6A5.001 5.001 0 0 0 14 11v7a2 2 0 0 0 2 2h5v-7h-5v-2a3 3 0 0 1 3-3h.17z" />
                        </svg>
                        <p class="text-[#333F51] text-[15px] leading-relaxed">
                            By adding employee testimonials, you can highlight the rewards –
                            both personal and professional – of being part of your team.
                        </p>
                    </div>
                </div>

                <!-- Testimonial Card 2 -->
                <div
                    class="w-full md:w-[520px] bg-white rounded-2xl border border-[#E4EAF1] shadow-[0_4px_12px_rgba(0,0,0,0.05)] p-6 md:p-10">
                    <div class="flex items-start gap-4 mb-5">
                        <div
                            class="w-[48px] h-[48px] rounded-full border border-[#E4EAF1] flex items-center justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/circle-avatar.svg" alt="user" class="w-[40px] h-[40px]" />
                        </div>
                        <div>
                            <h3 class="font-semibold text-[#0A2342] text-[16px]">Stacy Sullivan</h3>
                            <p class="text-[#FF4D29] text-sm">Lead Developer at Moqups</p>
                        </div>
                    </div>
                    <div class="bg-[#F8FBFF] rounded-xl p-6 relative">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="#FF4D29" viewBox="0 0 24 24"
                            class="w-6 h-6 mb-2 opacity-90">
                            <path
                                d="M7.17 6A5.001 5.001 0 0 0 2 11v7a2 2 0 0 0 2 2h5v-7H4v-2a3 3 0 0 1 3-3h.17zM19.17 6A5.001 5.001 0 0 0 14 11v7a2 2 0 0 0 2 2h5v-7h-5v-2a3 3 0 0 1 3-3h.17z" />
                        </svg>
                        <p class="text-[#333F51] text-[15px] leading-relaxed">
                            By adding employee testimonials, you can highlight the rewards –
                            both personal and professional – of being part of your team.
                        </p>
                    </div>
                </div>

                <!-- Right Arrow desktop -->
                <button aria-label="Next"
                    class="hidden md:flex absolute -right-10 top-1/2 -translate-y-1/2 z-20 w-[48px] h-[48px] items-center justify-center border border-[#E0E7F1] rounded-2xl bg-white shadow-sm hover:bg-[#F5F9FF] transition">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                        stroke="#0A2342" class="w-5 h-5">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
                    </svg>
                </button>
            </div>
        </div>
    </section>

    <section class="relative overflow-hidden bg-white">
        <div class="relative mx-auto max-w-6xl px-4 py-12 sm:py-16 lg:py-20">
            <!-- Heading -->
            <div class="mx-auto mb-8 max-w-2xl text-center">
                <h2 class="text-3xl font-extrabold tracking-tight text-slate-900 sm:text-4xl">Apply Now</h2>
                <p class="mt-3 text-slate-600">Add your talent and experience to our growing team!</p>
            </div>

            <!-- Card -->
            <div class="grid gap-8 rounded-xl border border-slate-200 bg-white p-5 shadow-md sm:p-8 lg:grid-cols-2">
                <!-- Form -->
                <form class="order-2 lg:order-1">
                    <div class="grid gap-5 sm:grid-cols-2">
                        <!-- Name -->
                        <div>
                            <label for="name" class="mb-1.5 block text-sm font-medium text-slate-700">
                                Name <span class="text-rose-600">*</span>
                            </label>
                            <input id="name" name="name" type="text" placeholder="Your name"
                                class="block w-full rounded-lg border border-slate-300 bg-white px-3.5 py-2.5 text-slate-900 placeholder-slate-400 outline-none ring-0 transition focus:border-teal-500 focus:ring-2 focus:ring-teal-200" />
                        </div>

                        <!-- Email -->
                        <div>
                            <label for="email" class="mb-1.5 block text-sm font-bold text-slate-700">
                                Email Address <span class="text-rose-600">*</span>
                            </label>
                            <input id="email" name="email" type="email" placeholder="Your email address"
                                class="block w-full rounded-lg border border-slate-300 bg-white px-3.5 py-2.5 text-slate-900 placeholder-slate-400 outline-none ring-0 transition focus:border-teal-500 focus:ring-2 focus:ring-teal-200" />
                        </div>

                        <!-- Phone -->
                        <div>
                            <label for="phone" class="mb-1.5 block text-sm font-bold text-slate-700">
                                Phone Number <span class="text-rose-600">*</span>
                            </label>
                            <input id="phone" name="phone" type="tel"
                                class="block w-full rounded-lg border border-slate-300 bg-white px-3.5 py-2.5 text-slate-900 placeholder-slate-400 outline-none ring-0 transition focus:border-teal-500 focus:ring-2 focus:ring-teal-200" />
                        </div>

                        <!-- Job Position -->
                        <div>
                            <label for="position" class="mb-1.5 block text-sm font-bold text-slate-700">
                                Job Position <span class="text-rose-600">*</span>
                            </label>
                            <input id="position" name="position" type="text"
                                class="block w-full rounded-lg border border-slate-300 bg-white px-3.5 py-2.5 text-slate-900 placeholder-slate-400 outline-none ring-0 transition focus:border-teal-500 focus:ring-2 focus:ring-teal-200" />
                        </div>

                        <!-- CV Upload -->
                        <div class="sm:col-span-2">
                            <label for="cv" class="mb-1.5 block text-sm font-bold text-slate-700">Attach CV</label>

                            <div class="flex items-center gap-3">
                                <!-- Visually hidden input for a11y -->
                                <input id="cv" name="cv" type="file" class="sr-only" />

                                <!-- Faux input container (clickable) -->
                                <label for="cv"
                                    class="flex grow items-center rounded-lg border border-slate-300 bg-white px-3.5 py-2.5 text-sm">
                                    <span id="cv-placeholder" class="truncate text-slate-500">Select file</span>
                                </label>

                                <!-- Separate button outside the input box -->
                                <label for="cv"
                                    class="freeButton inline-flex cursor-pointer items-center justify-center rounded-lg px-4 py-2.5 text-sm font-semibold text-white shadow-sm transition focus:outline-none focus:ring-2 focus:ring-teal-300 bg-[linear-gradient(84.35deg,_#6CD3E7_-2.47%,_#3A9DB2_54.68%,_#235A66_100%)]">
                                    Select File
                                </label>
                            </div>
                        </div>

                        <script>
                            (function () {
                                const input = document.getElementById('cv');
                                const placeholder = document.getElementById('cv-placeholder');
                                input.addEventListener('change', () => {
                                    const name = input.files && input.files[0] ? input.files[0].name : 'Select file';
                                    placeholder.textContent = name;
                                    placeholder.classList.toggle('text-slate-900', !!input.files.length);
                                    placeholder.classList.toggle('text-slate-500', !input.files.length);
                                });
                            })();
                        </script>



                        <!-- Submit + Terms -->
                        <div class="sm:col-span-2">
                            <button type="submit"
                                class="inline-flex items-center gap-2 rounded-lg px-5 py-2.5 font-semibold text-white shadow-sm transition focus:outline-none focus:ring-2 focus:ring-teal-300 bg-[linear-gradient(84.35deg,_#6CD3E7_-2.47%,_#235A66_100%)]">
                                Submit
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="" class="shrink-0 object-contain" />
                            </button>
                            <label class="mt-4 flex items-start gap-3 text-sm text-slate-600">
                                <input type="checkbox"
                                    class="mt-1 h-4 w-4 rounded border-slate-300 text-teal-600 focus:ring-teal-500">
                                <span>I have read and agree with the Terms &amp; Conditions</span>
                            </label>
                        </div>
                    </div>
                </form>

                <!-- Image -->
                <div class="order-1 flex items-center justify-center lg:order-2">
                    <div class="relative aspect-[3/2] w-full overflow-hidden rounded-xl">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/packingImage.jpg" alt="Team working in warehouse"
                            class="h-full w-full object-cover" />
                    </div>
                </div>
            </div>
        </div>
    </section>
      <script>
        const scroller = document.getElementById('teamScroller');
        const prev = document.getElementById('teamPrev');
        const next = document.getElementById('teamNext');
        const step = 360;
        prev?.addEventListener('click', () => scroller.scrollBy({ left: -step, behavior: 'smooth' }));
        next?.addEventListener('click', () => scroller.scrollBy({ left: step, behavior: 'smooth' }));
    </script>
<?php
get_footer();
