<?php
   /**
    * Template part for displaying the footer content
    *
    * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
    *
    * @package dscpl
    */
   
   ?>
<footer class="bg-primary-dark text-white">
   <div class="max-w-7xl mx-auto px-4 py-10 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
      <div class="space-y-4">
         <div class="flex items-center space-x-2">
            <img src="<?php echo get_field('footer_logo', 'options')['url']; ?>" alt="DSCPL Logo" class="h-10 w-auto">
         </div>
         <p class="text-sm text-gray-300">
            <?php echo get_field('short_description', 'options'); ?>
         </p>
         <?php
            // Check if the repeater field has rows
            if (have_rows('add_social_media_link', 'option')): ?>
         <div class="flex space-x-3 mt-2">
            <?php while (have_rows('add_social_media_link','option')): the_row(); 
               $logo = get_sub_field('logo'); // returns array
               $link = get_sub_field('link'); // URL
               ?>
            <a href="<?php echo esc_url($link); ?>" target="_blank" rel="noopener" class="flex items-center justify-center">
            <?php if (!empty($logo)): ?> 
            <img  src="<?php echo esc_url($logo['url']); ?>" alt="<?php echo esc_attr($logo['alt']); ?>">
            <?php endif; ?>
            </a>
            <?php endwhile; ?>
         </div>
         <?php endif; ?>
      </div>
      <div>
         <h3 class="text-white font-semibold mb-4">  <?php echo get_field('second_column_heading', 'options'); ?></h3>
         <?php
            if (have_rows('second_column_add_page', 'option')): ?>
         <ul class="space-y-2 text-gray-300 text-sm">
            <?php while (have_rows('second_column_add_page','option')): the_row(); 
               $page_link = get_sub_field('page_link'); // returns array
            if ($page_link): 
                $link_url = $page_link['url'];
                $link_title = $page_link['title'];
                $link_target = $page_link['target'] ? $page_link['target'] : '_self';
            ?>
                <li>
                    <a href="<?php echo esc_url($link_url); ?>" target="<?php echo esc_attr($link_target); ?>" class="hover:text-white">
                        <?php echo esc_html($link_title); ?>
                    </a>
                </li>
            <?php endif; ?>
            <?php endwhile; ?>
         </ul>
         <?php endif; ?>
      </div>
      <div>
         <h3 class="text-white font-semibold mb-4">  <?php echo get_field('third_column_heading', 'options'); ?></h3>
         <?php
            if (have_rows('third_column_add_page', 'option')): ?>
         <ul class="space-y-2 text-gray-300 text-sm">
            <?php while (have_rows('third_column_add_page','option')): the_row(); 
              $page_link = get_sub_field('page_link'); // returns array
            if ($page_link): 
                $link_url = $page_link['url'];
                $link_title = $page_link['title'];
                $link_target = $page_link['target'] ? $page_link['target'] : '_self';
            ?>
                <li>
                    <a href="<?php echo esc_url($link_url); ?>" target="<?php echo esc_attr($link_target); ?>" class="hover:text-white">
                        <?php echo esc_html($link_title); ?>
                    </a>
                </li>
            <?php endif; ?>
            <?php endwhile; ?>
         </ul>
         <?php endif; ?>
      </div>
      <div>
         <div class="bg-accent-orange p-4 rounded-lg text-sm space-y-2">
            <h3 class="text-white font-semibold mb-4"> <?php echo get_field('fourth_column_heading', 'options'); ?></h3>
           <?php if (have_rows('add_info', 'option')): ?>
    <?php while (have_rows('add_info', 'option')): the_row(); 
        $logo = get_sub_field('logo');      // Image field
        $type = get_sub_field('type');      // Select field (Text, Phone, Email)
        $content = get_sub_field('content');// Text field
    ?>

        <?php if ($type == 'Text'): ?>
            <p class="flex items-start space-x-2">
                <?php if (!empty($logo)): ?>
                    <img src="<?php echo esc_url($logo['url']); ?>" alt="address" class="w-5 h-5">
                <?php endif; ?>
                <span><?php echo esc_html($content); ?></span>
            </p>

        <?php elseif ($type == 'Phone'): ?>
            <p class="flex items-center space-x-2">
                <?php if (!empty($logo)): ?>
                    <img src="<?php echo esc_url($logo['url']); ?>" alt="call" class="w-5 h-5">
                <?php endif; ?>
                <a href="tel:<?php echo esc_attr($content); ?>" class="hover:text-gray-200">
                    <?php echo esc_html($content); ?>
                </a>
            </p>

        <?php elseif ($type == 'Email'): ?>
            <p class="flex items-center space-x-2">
                <?php if (!empty($logo)): ?>
                    <img src="<?php echo esc_url($logo['url']); ?>" alt="mail" class="w-5 h-5">
                <?php endif; ?>
                <a href="mailto:<?php echo esc_attr($content); ?>" class="underline hover:text-gray-200">
                    <?php echo esc_html($content); ?>
                </a>
            </p>
        <?php endif; ?>

    <?php endwhile; ?>
<?php endif; ?>
         </div>
      </div>
   </div>
   <div class="border-t-2 border-dashed border-white-600 mt-8 py-4 mx-6 text-center text-white-400 text-sm">
      <p>
         Copyright &copy; 2025 Digital Distribution Solutions |
         <a href="<?php echo site_url(); ?>/terms-and-conditions/" class="underline hover:text-white">Terms and Conditions</a> |
         <a href="<?php echo site_url(); ?>/privacy-policy/" class="underline hover:text-white">Privacy Policy</a>
      </p>
   </div>
</footer>
