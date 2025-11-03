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
   <section class="relative bg-gradient-to-r py-16 md:py-20 min-h-[600px] overflow-hidden"
        style="background: linear-gradient(to right, #5EBBCC 0%, #3A9DB2 50%, #235A66 100%);">

        <!-- Background arrows -->
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Leftcircle.png" alt="Left Arrow"
            class="hidden md:block absolute left-10 opacity-80" />
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Rightcircle.png" alt="Right Arrow"
            class="hidden md:block absolute right-10 opacity-80" />

        <!-- Content -->
        <div class="relative z-10 container mx-auto px-4 text-center">
            <!-- Heading -->
            <h2 class="text-xl md:text-3xl font-semibold text-white">
                Reach Our Team
            </h2>

            <!-- Subtitle -->
            <p class="mt-4 inline-block bg-cyan-600/50 text-white px-4 md:px-6 py-2 rounded-md text-base md:text-2xl font-normal leading-snug max-w-2xl"
                style="font-family: 'BentonSans Regular', sans-serif; font-style: normal;">
                We love questions and feedback – and we're always happy to help!
                Here are some ways to contact us.
            </p>

            <!-- Contact Cards -->
            <div class="mt-12 grid grid-cols-1 md:grid-cols-2 gap-6 md:gap-8 max-w-4xl mx-auto">
                <!-- Sales -->
                <div class="bg-white rounded-xl shadow p-6 md:p-8 text-center relative overflow-hidden">
                    <div class="absolute -bottom-6 -right-6 w-20 md:w-28 h-20 md:h-28 rounded-full bg-cyan-100/60">
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 mb-2">Talk to Sales</h3>
                    <p class="text-gray-600 mb-6 text-sm md:text-base">
                        Chat with our sales team to discover how our product can work best for you.
                    </p>
                    <div class="flex items-center justify-center space-x-3">
                        <div class="w-9 h-9 flex items-center justify-center bg-cyan-600 text-white rounded-full">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/callicon.svg" alt="Phone Icon" class="w-5 h-5" />
                        </div>
                        <div class="text-left">
                            <p class="text-gray-700 text-sm">Phone:</p>
                            <p class="text-base font-semibold">+254 712 345678</p>
                        </div>
                    </div>
                </div>

                <!-- Support -->
                <div class="bg-white rounded-xl shadow p-6 md:p-8 text-center relative overflow-hidden">
                    <div class="absolute -bottom-6 -right-6 w-20 md:w-28 h-20 md:h-28 rounded-full bg-cyan-100/60">
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 mb-2">Contact Customer Support</h3>
                    <p class="text-gray-600 mb-6 text-sm md:text-base">
                        We are waiting to help you and your team – so don’t hesitate to reach out!
                    </p>
                    <button
                        class="px-5 md:px-6 py-2 bg-cyan-600 text-white font-medium rounded-md hover:bg-cyan-700 transition">
                        CONTACT SUPPORT
                    </button>
                </div>
            </div>
        </div>
    </section>


    <!-- Address section -->
    <section class="bg-slate-50/60 py-14">
        <div class="container mx-auto px-12 sm:px-16 lg:px-24">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 items-start">
                <!-- Left: HQ details -->
                <div>
                    <h3 class="text-2xl font-extrabold text-slate-900">Headquarters</h3>
                    <p class="mt-1 text-slate-600">Nairobi, Kenya</p>

                    <!-- Address -->
                    <div class="mt-8 flex items-start space-x-4">
                        <div
                            class="mt-1 shrink-0 w-9 h-9 rounded-full text-cyan-700 flex items-center justify-center overflow-hidden">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/map.svg" alt="Address Icon" class="w-6 h-6 object-contain" />
                        </div>
                        <div>
                            <p class="text-xs font-semibold tracking-wider text-slate-500">ADDRESS</p>
                            <p class="mt-1 text-sm text-slate-700">10th Floor, Fortis Tower, Nairobi, Kenya</p>
                        </div>
                    </div>

                    <!-- Phone -->
                    <div class="mt-6 flex items-start space-x-4">
                        <div class="mt-1 shrink-0 w-9 h-9 rounded-full text-cyan-700 flex items-center justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/call-icon.svg" alt="Phone Icon" class="w-6 h-6 object-contain" />
                        </div>
                        <div>
                            <p class="text-xs font-semibold tracking-wider text-slate-500">PHONE</p>
                            <p class="mt-1 text-sm text-slate-700">+254 712 345678 <span
                                    class="text-slate-400 mx-1">|</span> +254 987 654321</p>
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="mt-6 flex items-start space-x-4">
                        <div class="mt-1 shrink-0 w-9 h-9 rounded-full text-cyan-700 flex items-center justify-center">
                            <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/email-icon.svg" alt="Email Icon" class="w-6 h-6 object-contain" />
                        </div>
                        <div>
                            <p class="text-xs font-semibold tracking-wider text-slate-500">EMAIL</p>
                            <p class="mt-1 text-sm text-slate-700">info@ddsolutions.tech</p>
                        </div>
                    </div>

                    <!-- Social Media -->
                    <div class="mt-8">
                        <p class="text-sm font-bold text-slate-700 mb-4">Follow us on social media</p>
                        <div class="flex space-x-4">
                            <a href="#" aria-label="Twitter"
                                class="w-9 h-9 flex items-center justify-center rounded-full border-slate-200 hover:bg-cyan-50 transition">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Twitter-1.svg" alt="Twitter" class="w-5 h-5">
                            </a>
                            <a href="#" aria-label="Facebook"
                                class="w-9 h-9 flex items-center justify-center rounded-full border-slate-200 hover:bg-cyan-50 transition">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Facebook-1.svg" alt="Facebook" class="w-5 h-5">
                            </a>
                            <a href="#" aria-label="Instagram"
                                class="w-9 h-9 flex items-center justify-center rounded-ful border-slate-200 hover:bg-cyan-50 transition">
                                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram-2.svg" alt="Instagram" class="w-5 h-5">
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Right: Map embed -->
                <div>
                    <div class="rounded-2xl border border-slate-100 shadow-sm overflow-hidden">
                        <iframe title="Map - Fortis Tower Nairobi" class="block w-full aspect-[16/9] border-2"
                            loading="lazy" style="filter: grayscale(100%) contrast(1.2) opacity(0.9);"
                            referrerpolicy="no-referrer-when-downgrade" frameborder="0" marginheight="0" marginwidth="0"
                            scrolling="no"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.812282146311!2d36.817880075620786!3d-1.2834717987017033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f10d7f36f1a0b%3A0x6b0f1c6d1d9f49c!2sFortis%20Tower!5e0!3m2!1sen!2ske!4v1699999999999!5m2!1sen!2ske">
                        </iframe>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <section class="max-w-7xl mx-auto px-6 py-12 font-benton">
        <!-- Heading -->
        <div class="text-center mb-10">
            <h2 class="text-2xl md:text-3xl font-bold text-gray-900">Get in touch today</h2>
            <p class="text-gray-600 mt-2">
                We love questions and feedback – and we’re always happy to help! Here are some ways to contact us
            </p>
        </div>

        <!-- Row: Email | Phone | Social -->
        <div class="flex flex-col md:flex-row md:justify-between md:items-center gap-8 border-b pb-6 mb-8">
            <!-- Email -->
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 flex items-center justify-center bg-gray-100 rounded-lg">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Image.png" alt="email">
                </div>
                <div>
                    <p class="text-gray-500 text-sm">Email:</p>
                    <p class="font-medium text-gray-800">info@ddsolutions.tech</p>
                </div>
            </div>

            <!-- Phone -->
            <div class="flex items-center gap-3">
                <div class="w-10 h-10 flex items-center justify-center bg-gray-100 rounded-lg">
                    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Image.png" alt="phone">
                </div>
                <div>
                    <p class="text-gray-500 text-sm">Phone:</p>
                    <p class="font-medium text-gray-800">+254 712 345678</p>
                </div>
            </div>

            <!-- Social -->
            <div>
                <p class="text-gray-700 font-bold mb-2">Reach out to us on:</p>
                <div class="flex gap-3">
                    <a href="#" class="w-9 h-9 flex items-center justify-center hover:bg-blue-500 transition">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Facebook-1.svg" alt="facebook" class="w-5 h-5">
                    </a>
                    <a href="#" class="w-9 h-9 flex items-center justify-center  hover:bg-sky-400 transition">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Twitter-1.svg" alt="twitter" class="w-5 h-5">
                    </a>
                    <a href="#" class="w-9 h-9 flex items-center justify-center hover:bg-blue-600 transition">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Instagram-2.svg" alt="linkedin" class="w-5 h-5">
                    </a>
                    <a href="#" class="w-9 h-9 flex items-center justify-center  hover:bg-red-600 transition">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/LinkedIn-1.svg" alt="youtube" class="w-5 h-5">
                    </a>
                    <a href="#" class="w-9 h-9 flex items-center justify-center hover:bg-pink-500 transition">
                        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/YouTube.svg" alt="instagram" class="w-5 h-5">
                    </a>
                </div>
            </div>
        </div>

        <!-- Image + Form -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
            <!-- Left: Image -->
            <div>
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/high-angle-woman-talking-phone-1.png" alt="Contact"
                    class="rounded-lg shadow-md w-full">
            </div>

            <!-- Right: Form -->
            <div class="rounded-lg p-6 space-y-4">
               <form id="contactForm" class="rounded-lg p-6 space-y-4" method="post">
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
    <div class="flex flex-col">
      <label class="text-gray-700 text-sm mb-4 font-bold">Name</label>
      <input type="text" name="name" placeholder="Your name" class="w-full border shadow-lg rounded-lg px-4 py-3 h-12
             text-[15px] placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500" required />
    </div>

    <div class="flex flex-col">
      <label class="text-gray-700 text-sm mb-4 font-bold">Email</label>
      <input type="email" name="email" placeholder="Your email address" class="w-full border shadow-lg rounded-lg px-4 py-3 h-12
             text-[15px] placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500" required />
    </div>
  </div>

  <div class="flex flex-col">
    <label class="text-gray-700 text-sm mb-4 font-bold">Company (Optional)</label>
    <input type="text" name="company" placeholder="Your Company name" class="w-full border shadow-lg rounded-lg px-4 py-3 h-12
           text-[15px] placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500" />
  </div>

  <div class="flex flex-col">
    <label class="text-gray-700 text-sm mb-4 font-bold">Leave us a message</label>
    <textarea name="message" placeholder="Write your message here..." class="w-full border shadow-lg rounded-lg px-4 py-3 h-36
           text-[15px] placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500" required></textarea>
  </div>

  <button type="submit" class="getStartButton flex items-center gap-2 text-white px-6 py-2 rounded-lg shadow 
  bg-gradient-to-r from-[#6CD3E7] to-[#235A66] hover:opacity-90 transition">
    Get started
    <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="w-4 h-4">
  </button>

  <p id="formMessage" class="text-sm mt-3"></p>
</form>

            </div>

        </div>
    </section>




<?php
get_footer();
