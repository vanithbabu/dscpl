
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
    <section
      class="relative min-h-[600px] flex items-center bg-gradient-to-br from-[#479EBE] to-[#24586C] overflow-hidden">
      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cuboid.svg" alt="background image" class="absolute bottom-0 left-[20%] w-[800px]" />

      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/hexa.svg" alt="background image"
        class="absolute top-0 left-[0%] opacity-5 hidden md:block" />

      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/hexgonal.svg" alt="background image"
        class="absolute bottom-0 right-[0%] hidden md:block" />

      <div class="max-w-7xl mx-auto px-4 relative z-10 w-full">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center py-16 lg:py-0">

          <div class="text-white">
            <h1 class="text-xl sm:text-3xl md:text-[42px] font-bold leading-tight mb-6">
              <span class="text-white">Digitize Your</span>
              <span class="text-primary-navy"> Sales &</span>
              <br>
              <span class="text-primary-navy">Distribution.</span>
              <span class="text-white"> Unlock Potential</span>
            </h1>
            <p class="text-md sm:text-xl md:text-[20px] font-normal mb-8 max-w-lg">
              Connect and optimize inventory, sales, logistics, and payments in one unified cloud platform.
            </p>

            <div class="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4">
              <a href="#"
                class="freeButton transform     inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] transition duration-300 shadow-lg">
                Start Free Trial <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
              </a>
              <a href="http://159.203.159.79/contact-us/"
                class=" transform hover:scale-[1.01]  inline-flex items-center justify-center px-6 py-3 border-2 border-white text-base font-medium rounded-lg text-primary-teal bg-[#DBF4FF] hover:bg-white hover:text-primary-navy transition duration-300">
                Request a Demo
              </a>
            </div>
          </div>

          <div class="relative w-full h-[600px] overflow-hidden">
            <div class="flex flex-col animate-slide-vertical space-y-12">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/girl.png" alt="Girl"
                class="h-40 sm:h-48 md:h-56 lg:h-64 w-auto mx-auto rounded-md">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/groupmens.png" alt="Group"
                class="rounded-full h-32 sm:h-40 md:h-44 lg:h-48 mx-auto">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/packingImage.jpg" alt="Group"
                class="h-20 sm:h-20 md:h-20 lg:h-48 mx-auto rounded-md">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/girl.png" alt="Girl"
                class="h-40 sm:h-48 md:h-56 lg:h-64 w-auto mx-auto rounded-md">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/groupmens.png" alt="Group"
                class="rounded-full h-32 sm:h-40 md:h-44 lg:h-48 mx-auto">
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

        <div class="mt-10 text-center">
          <a href="http://159.203.159.79/success-stories/"
            class="inline-flex items-center justify-center px-6 py-3 text-sm font-medium rounded-lg text-white bg-gradient-to-r from-[#6CD3E7] to-[#235A66] shadow-md transform hover:scale-[1.02] transition">
            VIEW SUCCESS STORIES <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
          </a>
        </div>
      </div>
    </section>
    <section class="py-8 bg-[#E0F7FA] relative overflow-hidden m-4 rounded-xl">
      <div>
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/vector-1.svg" alt="background image" class="absolute top-60 right-[6%]" />
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/vector-1.svg" alt="background image" class="absolute top-10 left-[5%] w-[200px]" />
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/vector-1.svg" alt="background image" class="absolute bottom-0 left-[0%] w-[200px] " />
      </div>
      <div class="max-w-7xl mx-auto px-4 relative z-10">
        <div class="text-center mb-12">
          <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold text-[#281D58] ">
            Our <span
              class="bg-gradient-to-r from-[#44B1C5] to-[#281D58] bg-clip-text text-transparent">Solutions</span>
          </h2>
          <p class="mt-3 text-md text-[#191B44] max-w-2xl mx-auto">
            From small businesses to large enterprises, our platforms streamline every aspect of your distribution
            network
          </p>
        </div>

        <div class="flex flex-col lg:flex-row gap-8 justify-center items-stretch">
          <div
            class="text-center flex-1 max-w-full lg:max-w-lg bg-white rounded-xl shadow-2xl overflow-hidden transform hover:scale-[1.01] transition duration-300 ">
            <div class="p-2 sm:p-4 md:p-8">
              <h3 class="font-bold text-sm sm:text-1xl md:text-[20px]  text-primary-dark mb-2">DDS Enterprise - Built
                for Scale and Complexity
              </h3>
              <p class="text-1xl font-semibold text-[#2E3A65] mb-4">
                For large-scale manufacturers, FMCG companies & distributors
              </p>
              <p class="text-[#2E3A65] text-base sm:text-xl md:text-[18px] mb-6">
                Elevate large-scale FMCG operations with our customizable cloud platform. Automate and optimize your
                entire supply chain, sales, and payments for seamless enterprise performance.
              </p>
              <a href="http://159.203.159.79/dds-enterprise-cloud-platform/"
                class=" freeButton transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d]   shadow-lg">
                Contact Sales <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2 ">
              </a>
            </div>
            <div class="h-64 overflow-hidden m-4">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/scanning-scaled.jpg" alt="Warehouse"
                class="w-full h-full object-cover object-right " />
            </div>
          </div>

          <div
            class=" text-center flex-1 max-w-full lg:max-w-lg bg-white rounded-xl shadow-2xl overflow-hidden transform hover:scale-[1.01] transition duration-300 ">
            <div class="p-2 sm:p-4 md:p-8">
              <h3 class="font-bold text-sm sm:text-1xl md:text-[20px] text-primary-dark mb-2">DDS SaaS - Instant Retail
                Efficiency</h3>
              <p class="text-1xl font-semibold text-[#2E3A65] mb-4">
                For SME businesses & stockists
              </p>
              <p class="text-[#2E3A65] text-base sm:text-xl md:text-[18px] mb-6">
                Sign up instantly and streamline your small FMCG business. Digitize inventory, sales, and payments with
                real-time data and offline connectivity, helping you reduce costs, boost sales, and improve cash flow
                visibility.
              </p>
              <a href="http://159.203.159.79/dds-retail/"
                class="freeButton transform hover:scale-[1.01] transition duration-300 inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] transition duration-300 shadow-lg">
                Learn more <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1 ml-2">
              </a>
            </div>
            <div class="h-64 overflow-hidden m-4">
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/worker-scaled.jpg" alt="Warehouse" class="w-full h-full object-cover object-right" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-16 bg-white relative overflow-hidden">
      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cubes.svg" alt="background image"
        class="absolute bottom-0 left-[0%] hidden md:block " />
      <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/smallCube.svg" alt="background image"
        class="absolute bottom-0 right-[0%] hidden md:block " />
      <div class="max-w-7xl mx-auto px-4 flex flex-col lg:flex-row items-center justify-between gap-12">
        <div class="lg:w-1/2 text-center lg:text-left">
          <h2 class="text-xl sm:text-3xl md:text-4xl font-bold">
            <span class="text-[#2E7382]">INTEGRATION TO </span>
            <span class="text-accent-orange">OTHER SYSTEMS</span>
          </h2>
        </div>

        <div class="lg:w-1/2 relative w-full flex justify-center lg:justify-end">
          <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/Grouplogo.png" alt="DSCPL Logo" class="w-auto">
        </div>
      </div>
    </section>
    <section class="py-8 bg-white">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class="text-center text-xl sm:text-3xl font-bold text-primary-dark mb-12">
          The Numbers Behind Our Success
        </h2>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-10 text-center">
       <div class="stat-item">
        <div class="number-wrapper">
          <div class="digit-container">
            <div class="digit-roll digit-5 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="dot text-orange">.</span>
          <div class="digit-container">
            <div class="digit-roll digit-0 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="text-blue">M</span>
        </div>
        <p class="label">Orders Processed</p>
      </div>

      <div class="stat-item">
        <div class="number-wrapper">
          <div class="digit-container">
            <div class="digit-roll digit-1 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="dot text-orange">.</span>
          <div class="digit-container">
            <div class="digit-roll digit-5 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="text-blue">M</span>
        </div>
        <p class="label">Deliveries Optimized</p>
      </div>

      <div class="stat-item">
        <div class="number-wrapper">
          <span class="static-text">$</span>
          <div class="digit-container">
            <div class="digit-roll digit-5 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <div class="digit-container">
            <div class="digit-roll digit-0 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <div class="digit-container">
            <div class="digit-roll digit-0 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="text-blue">+</span>
        </div>
        <p class="label">Transactions Handled</p>
      </div>

      <div class="stat-item">
        <div class="number-wrapper">
          <div class="digit-container">
            <div class="digit-roll digit-9 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="dot text-orange">.</span>
          <div class="digit-container">
            <div class="digit-roll digit-5 text-orange">
              <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
            </div>
          </div>
          <span class="text-blue">%</span>
        </div>
        <p class="label">Average Cost Reduction</p>
      </div>
        </div>
      </div>
    </section>
    <section class="py-4 stakeholders-section  relative overflow-hidden">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class="text-center text-xl sm:text-3xl md:text-4xl font-bold text-primary-navy mb-12">
          Built For Every Stakeholder In Supply Value Chain
        </h2>
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/vector-1.svg" alt="background image" class="absolute bottom-40 right-[1%]" />
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-6 justify-items-center">
          <div class="stakeholder-card">
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/manufacturer.png" alt="DSCPL Logo" class="card_img" />
            </div>
            <h3 class="text-xl font-bold text-primary-dark mb-3">Manufacturers</h3>
            <p class="text-base text-[#6D7680]">
              Gain real-time visibility into production and orders, with ERP integration that reduces stock variances
              and speeds up reconciliation.
            </p>
          </div>
          <div class="stakeholder-card">
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/distribute.png" alt="DSCPL Logo" class="card_img">
            </div>
            <h3 class="text-xl font-bold text-primary-dark mb-3">Distributors & Wholesalers</h3>
            <p class="text-base text-[#6D7680]">
              Oversee van sales, field reps, and deliveries from one platform, while tracking outlet performance,
              inventory, and payments.
            </p>
          </div>
          <div class="stakeholder-card">
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/retails.png" alt="DSCPL Logo" class="card_img">
            </div>
            <h3 class="text-xl font-bold text-primary-dark mb-3">Retailers & Stockists</h3>
            <p class="text-base text-[#6D7680]">
              Digitize inventory with barcode scanning, access real-time stock alerts, promotions, and manage sales
              with
              mobile POS.
            </p>
          </div>
          <div class="stakeholder-card">
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/brands.png" alt="DSCPL Logo" class="card_img">
            </div>
            <h3 class="text-xl font-bold text-primary-dark mb-3">FMCG Brands</h3>
            <p class="text-base text-[#6D7680]">
              Scale effortlessly across trade channels and unlock insights into regional sales trends, pricing, and
              promotions.
            </p>
          </div>
        </div>
      </div>
    </section>
    <section class="py-10 stakeholders-section">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class=" text-xl sm:text-3xl md:text-4xl font-bold text-primary-navy mb-12 text-center">
          Powerful Features Built for Modern Distribution
        </h2>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-5 gap-6 h-auto min-h-[400px]">

          <div id="feature-1" class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="front-card-content">
                  <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/sales.svg" alt="Sales Automation Icon" class="h-[60px] w-[60px] my-10">
                  <h3 class="text-[18px] font-bold text-primary-dark my-4">Sales Automation</h3>
                  <p class="text-sm text-[#6C6C6C]">Simplified mobile and in-store selling</p>
                </div>
              </div>
              <div class="flip-card-back">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/sales.png" alt="Sales App Screenshot 1">
                <div>
                  <h4 class="text-[18px] font-bold my-4">Sales Automation</h4>
                  <p class="text-sm ">Simplified mobile and in-store selling</p>
                </div>
              </div>
            </div>
          </div>

          <div id="feature-2" class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="front-card-content">
                  <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/inventory.svg" alt="Inventory Visibility Icon"
                    class="h-[60px] w-[60px] my-10">
                  <h3 class="text-[18px] font-bold text-primary-dark my-4">Inventory Visibility</h3>
                  <p class="text-sm text-[#6C6C6C] ">Monitor your stock levels, avoid variances</p>
                </div>
              </div>
              <div class="flip-card-back">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/inventory.png" alt="Inventory App Screenshot 1">
                <div>
                  <h4 class="text-[18px] font-bold  my-4">Inventory Visibility</h4>
                  <p class="text-sm ">Monitor your stock levels, avoid variances</p>
                </div>
              </div>
            </div>
          </div>

          <div id="feature-3" class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="front-card-content">
                  <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/van.svg" alt="Smart Logistics Icon" class="h-[60px] w-[60px] my-10">
                  <h3 class="text-[18px] font-bold text-primary-dark my-4">Smart Logistics</h3>
                  <p class="text-sm text-[#6C6C6C] ">Plan, assign, and optimize delivery routes</p>
                </div>
              </div>
              <div class="flip-card-back">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/smart.png" alt="Logistics App Screenshot 1">
                <div>
                  <h4 class="text-[18px] font-bold  my-4">Smart Logistics</h4>
                  <p class="text-sm ">Plan, assign, and optimize delivery routes</p>
                </div>
              </div>
            </div>
          </div>

          <div id="feature-4" class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="front-card-content">
                  <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/reports.svg" alt="Advanced Reporting Icon" class="h-[60px] w-[60px] my-10">
                  <h3 class="text-[18px] font-bold text-primary-dark my-4">Advanced Reporting</h3>
                  <p class="text-sm text-[#6C6C6C] ">Gain insights by SKU, region, team, and channel
                    performance</p>
                </div>
              </div>
              <div class="flip-card-back">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/reporting.png" alt="Reporting App Screenshot 1">
                <div>
                  <h4 class="text-[18px] font-bold my-4">Advanced Reporting</h4>
                  <p class="text-sm ">Gain insights by SKU, region, team, and channel performance</p>
                </div>
              </div>
            </div>
          </div>

          <div id="feature-5" class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
                <div class="front-card-content">
                  <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/payment.svg" alt="Integrated Payments Icon"
                    class="h-[60px] w-[60px] my-10">
                  <h3 class="text-[18px] font-bold text-primary-dark my-4">Integrated Payments</h3>
                  <p class="text-sm text-[#6C6C6C] ">Sync with MPESA, MTN MoMo, banks, telcos</p>
                </div>
              </div>
              <div class="flip-card-back">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/payment.png" alt="Payments App Screenshot 1">
                <div>
                  <h4 class="text-[18px] font-bold my-4">Integrated Payments</h4>
                  <p class="text-sm ">Sync with MPESA, MTN MoMo, banks, telcos</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="md:py-24 dscpl-bg relative overflow-hidden">
      <div class="absolute inset-0 hidden lg:block">
        <div class="dscpl-circle-large absolute top-5 left-[52%]"></div>
        <div class="dscpl-circle-small absolute bottom-0 right-[18%]"></div>
        <div class=" absolute bottom-0 right-[42%] top-[64%]"><img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cube.svg"
            alt="background image" /></div>
        <div class=" absolute bottom-0 right-[8%] top-[17%]"><img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/cube.svg"
            alt="background image" /></div>
        <div class="dscpl-circle-small absolute bottom-0 right-[18%]"></div>
      </div>

      <div class="py-4 max-w-7xl mx-auto px-4 relative z-10">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div class="text-white space-y-6 lg:max-w-xl">
            <h2 class="text-2xl sm:text-[40px] font-bold text-white mb-4">
              Why Choose <span class="text-[#FF512F]">DSCPL?</span>
            </h2>

            <p class=" text-lg font-semibold leading-relaxed">
              Built to simplify distribution and unlock last-mile penetration with DDS Cloud Platform
            </p>

            <div class="space-y-6">
              <p class="text-base leading-relaxed">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/star.svg" alt="*" class="inline-block align-top">
                At DSCPL, we transform FMCG distribution across East Africa with the DDS cloud-based platform built
                specifically to address the region’s unique challenges. Our solutions are trusted by leading brands
                and designed for rapid deployment on secure AWS infrastructure.
              </p>
              <p class="text-base leading-relaxed">
                With seamless integration into ERPs, MPESA, MTN MoMo, and other local systems, we make it easy to
                digitize end-to-end operations. Our platform supports multiple languages and comes with dedicated
                system support, ensuring every partner gets the tools and guidance they need to operate.
              </p>
            </div>
          </div>

          <div class="grid grid-cols-2 max-[490px]:grid-cols-1 gap-6 justify-center image-block mx-auto">
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/female.png" alt="Person on phone looking at tablet"
                class="w-[165px] h-[167px] object-cover mx-auto">
            </div>
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/work.png" alt="Warehouse worker holding boxes"
                class="w-[165px] h-[167px] object-cover mx-auto">
            </div>
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/mobilegirl.png" alt="Forklift driver on phone"
                class="w-[165px] h-[167px] object-cover mx-auto">
            </div>
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/female.png" alt="Female delivery person with boxes"
                class="w-[165px] h-[167px] mx-auto">
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="bg-[#C6FFF073] py-10">
  <div class="text-center mb-10">
    <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-3">
      What our <span class="text-[#FF512F]">Customers</span> say
    </h2>
    <p class="text-base sm:text-lg font-semibold leading-relaxed text-gray-700">
      Hear how DDS transforms FMCG operations for retailers and enterprises alike.
    </p>
  </div>
<div class="overflow-hidden relative py-12">
  <div class="gap-12 animate-slide">
    <div class=" w-md bg-white shadow-lg rounded-2xl p-6 flex flex-col justify-between">
      <div class="flex items-center gap-3 mb-3">
               <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/girlCircle.png" alt="Female delivery person with boxes"/>
      <div>
        <h3 class="text-lg font-bold">Gregory Jones</h3>
        <p class="text-sm text-[#FF512F]">@twitter_nametag</p>
</div>
</div>
        <p class="text-gray-600 text-sm leading-relaxed">
          This software works outstandingly well. 
It grudgingly improves my
skills by a lot.
        </p>
        <p class="text-xs text-[#FF512F] mt-4 font-medium">8:21 PM / Dec 21, 2022</p>
    </div>

    <div class="w-md bg-white shadow-lg rounded-2xl p-6 flex flex-col justify-between">
      <div class="flex items-center gap-3 mb-3">
       <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/boycircle.png" alt="Female delivery person with boxes"/>
        <div>
          <h3 class="text-lg font-bold">Maria Gutierrez</h3>
          <p class="text-sm text-[#FF512F]">@twitter_nametag</p>
        </div>
      </div>
      <p class="text-gray-600 text-sm leading-relaxed">
        It really saves me time and effort. @YourCompany is exactly what our
business has been lacking. It's all good. Definitely worth the
investment. I would also like to say thank you to all your staff!
      </p>
      <p class="text-xs text-[#FF512F] mt-4 font-medium">8:21 PM / Dec 21, 2022</p>
    </div>

    <div class=" w-md bg-white shadow-lg rounded-2xl p-6 flex flex-col justify-between">
      <div class="flex items-center gap-3 mb-3">
               <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/girlCircle.png" alt="Female delivery person with boxes"/>
        <div>
          <h3 class="text-lg font-bold">Sylvia Taylor</h3>
          <p class="text-sm text-[#FF512F]">@twitter_nametag</p>
        </div>
      </div>
      <p class="text-gray-600 text-sm leading-relaxed">
        It really saves me time and effort. @YourCompany is exactly what our
business has been lacking.
 It's all good. Definitely worth the
investment. I would also like to say thank you to all your staff!
      </p>
      <p class="text-xs text-[#FF512F] mt-4 font-medium">8:21 PM / Dec 21, 2022</p>
    </div>
</div>
  </div>
</section>
    <section class="py-8 bg-white relative overflow-hidden">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class="text-center text-2xl sm:text-3xl md:text-4xl font-bold text-[#191B44] mb-2">
          Dashboard highlights
        </h2>
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/smallCube.svg" alt="background image" class="absolute top-80 left-[0%] " />
        <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/smallCube.svg" alt="background image"
          class="absolute bottom-80 right-[0%] w-[200px]" />

        <div class="grid grid-cols-1 gap-6 mb-6">
          <div
            class=" m-0 sm:m-4 grid md:grid-cols-1 lg:grid-cols-2 bg-gradient-to-r from-[#3EADBC4A] to-[#CBF8F04D] rounded-xl p-2 sm:p-4 md:p-8 shadow-lg border-[5px] border-white lg:col-span-1">
            <div class=" mt-0 sm:mt-4  p-2 sm:p-4">
              <h3 class="text-xl sm:text-1xl md:text-2xl font-semibold text-[#191B44] mb-3">
                One tab to rule them all
              </h3>
              <p class="text-base sm:text-xl text-gray-700">
                Monitor your inventory data in real time ⚡
              </p>
            </div>
            <div>
              <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashscreen.png" alt="dashboard">
            </div>
          </div>

          <div class="mx-4 lg:col-span-2 grid grid-cols-1 md:grid-cols-2 gap-6">
            <div
              class=" m-0 sm:m-4 bg-gradient-to-r from-[#3EADBC4A] to-[#CBF8F04D] rounded-xl p-2 sm:p-4 md:p-8 shadow-lg border-[5px] border-white">
              <h3 class="text-xl sm:text-1xl md:text-2xl font-semibold text-[#191B44] mb-3">
                Unlock growth by eliminating out of stock
              </h3>
              <p class="text-base sm:text-xl text-gray-700 mb-6">
                Forecast sales and get restocking alerts 📈
              </p>
              <div class="space-y-4">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/menucard.png" alt="menucard" class=" mt-0 sm:mt-16 mx-auto">
              </div>
            </div>

            <div
              class=" m-0 sm:m-4 bg-gradient-to-r from-[#3EADBC4A] to-[#CBF8F04D] rounded-xl p-2 sm:p-4 md:p-8 shadow-lg border-[5px] border-white">
              <div>
                <h3 class="text-xl sm:text-1xl md:text-2xl font-semibold text-[#191B44] mb-3">
                  Save time on POs and production tracking
                </h3>
                <p class="text-base sm:text-xl text-gray-700 mb-6 flex items-center">
                  Create, manage, and track purchase orders with your team 🤝
                </p>
              </div>
              <div class="space-y-4">
                <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/dashfull.png" alt="menucard" class="mt-4 sm:mt-8 md:mt-16 mx-auto">
              </div>
            </div>

          </div>
        </div>

        <div
          class="m-4 sm:m-8 bg-gradient-to-r from-[#2F9EB5] to-[#2EB5D0] rounded-xl  flex flex-col lg:flex-row items-center justify-between space-y-6 lg:space-y-0 lg:space-x-12 relative overflow-hidden">
          <img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/swap.png" alt="menucard" class="mt-4 sm:mt-8 md:mt-16 mx-auto">

          <div class="text-white lg:w-1/2 text-center lg:text-left relative z-10">
            <h3 class="text-xl sm:text-1xl md:text-2xl font-bold mb-4">
              Fast & flexible funding at your fingertips
            </h3>
            <p class="text-base sm:text-xl md:text-xl font-light mb-6">
              Request PO financing directly within the app 💰
            </p>
          </div>
        </div>
      </div>
      <div class="flex justify-center mt-8">
        <a href="#"
          class="freeButton transform hover:scale-[1.01] align-items-center inline-flex items-center justify-center px-6 py-3 text-base font-medium rounded-lg text-white  bg-gradient-to-br from-[#6CD3E7] to-[#235A66] hover:bg-[#1a5b5d] transition duration-300 shadow-lg">
          Explore now<img src="<?php echo site_url(); ?>/wp-content/uploads/2025/10/right-arrow.svg" alt="arrow" class="mt-1">
        </a>
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
                Explore how DDS's route optimization reduces fuel costs and ensures timely deliveries for businesses.
              </p>
              <div class="flex flex-wrap gap-2">
                <span class="px-3 py-1 bg-[#DCFFF1] text-[#2E7382] text-xs font-medium rounded-full">FMCG News</span>
                <span class="px-3 py-1 bg-orange-50 text-accent-orange text-xs font-medium rounded-full">Research</span>
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
                <h4 class="text-base font-bold text-primary-dark mb-2 hover:text-primary-blue cursor-pointer">
                  Why FMCG Retailers Need SaaS Now
                </h4>
                <p class="text-sm text-[#6D7680] mb-3">
                  Highlight the instant sign-up and ease of DDS SaaS, helping small businesses compete with larger
                  players.
                </p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-2 py-1 bg-[#EBF4FA] text-[#2E7382] text-xs font-medium rounded-full">FMCG</span>
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
                <h4 class="text-base font-bold text-primary-dark mb-2 hover:text-primary-blue cursor-pointer">
                  Boosting FMCG Customer Loyalty with Data
                </h4>
                <p class="text-sm text-[#6D7680] mb-3">
                  See how DDS’s customer data and analytics tools drive personalized service and up to 20% better
                  engagement.
                </p>
                <div class="flex flex-wrap gap-2">
                  <span class="px-2 py-1 bg-[#EBF4FA] text-[#2E7382] text-xs font-medium rounded-full">FMCG</span>
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
