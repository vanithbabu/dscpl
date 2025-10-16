/**
 * Front-end JavaScript
 *
 * The JavaScript code you place here will be processed by esbuild. The output
 * file will be created at `../theme/js/script.min.js` and enqueued in
 * `../theme/functions.php`.
 *
 * For esbuild documentation, please see:
 * https://esbuild.github.io/
 */
const menuBtn = document.getElementById("menu-btn");
const menuIcon = document.getElementById("menu-icon");
const mobileMenu = document.getElementById("mobile-menu");

const desktopSolutionsBtn = document.getElementById("desktop-solutions-btn");
const desktopSolutionsDropdown = document.getElementById(
  "desktop-solutions-dropdown"
);

const desktopAboutBtn = document.getElementById("desktop-about-btn");
const desktopAboutDropdown = document.getElementById("desktop-about-dropdown");

const mobileSolutionsBtn = document.getElementById("mobile-solutions-btn");
const mobileSolutionsDropdown = document.getElementById(
  "mobile-solutions-dropdown"
);
const mobileSolutionsArrow = document.getElementById("mobile-solutions-arrow");

const mobileAboutBtn = document.getElementById("mobile-about-btn");
const mobileAboutDropdown = document.getElementById("mobile-about-dropdown");
const mobileAboutArrow = document.getElementById("mobile-about-arrow");

let isMobileMenuOpen = false;

function toggleMobileMenu() {
  isMobileMenuOpen = !isMobileMenuOpen;

  if (isMobileMenuOpen) {
    mobileMenu.classList.remove("menu-hidden");
    mobileMenu.classList.add("menu-visible");
    menuIcon.innerHTML = `
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M6 18L18 6M6 6l12 12" />
        `;
  } else {
    mobileMenu.classList.remove("menu-visible");
    mobileMenu.classList.add("menu-hidden");
    menuIcon.innerHTML = `
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M4 6h16M4 12h16M4 18h16" />
        `;

    closeMobileDropdowns();
  }
}

function closeMobileDropdowns() {
  mobileSolutionsDropdown.classList.add("hidden");
  mobileSolutionsArrow.classList.remove("rotate-180");
  mobileAboutDropdown.classList.add("hidden");
  mobileAboutArrow.classList.remove("rotate-180");
}

function closeMobileMenu() {
  if (isMobileMenuOpen) {
    isMobileMenuOpen = false;
    mobileMenu.classList.remove("menu-visible");
    mobileMenu.classList.add("menu-hidden");
    menuIcon.innerHTML = `
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M4 6h16M4 12h16M4 18h16" />
        `;
    closeMobileDropdowns();
  }
}

menuBtn.addEventListener("click", toggleMobileMenu);

window.addEventListener("resize", () => {
  if (window.innerWidth >= 1095) {
    closeMobileMenu();
  }
});

desktopSolutionsBtn.addEventListener("click", (e) => {
  e.stopPropagation();
  desktopSolutionsDropdown.classList.toggle("hidden");
  desktopAboutDropdown.classList.add("hidden");
});

desktopAboutBtn.addEventListener("click", (e) => {
  e.stopPropagation();
  desktopAboutDropdown.classList.toggle("hidden");
  desktopSolutionsDropdown.classList.add("hidden");
});

mobileSolutionsBtn.addEventListener("click", (e) => {
  e.stopPropagation();
  if (isMobileMenuOpen) {
    mobileSolutionsDropdown.classList.toggle("hidden");
    mobileSolutionsArrow.classList.toggle("rotate-180");
  }
});

mobileAboutBtn.addEventListener("click", (e) => {
  e.stopPropagation();
  if (isMobileMenuOpen) {
    mobileAboutDropdown.classList.toggle("hidden");
    mobileAboutArrow.classList.toggle("rotate-180");
  }
});

document.addEventListener("click", (event) => {
  if (
    !desktopSolutionsBtn.contains(event.target) &&
    !desktopSolutionsDropdown.contains(event.target)
  ) {
    desktopSolutionsDropdown.classList.add("hidden");
  }
  if (
    !desktopAboutBtn.contains(event.target) &&
    !desktopAboutDropdown.contains(event.target)
  ) {
    desktopAboutDropdown.classList.add("hidden");
  }

  if (
    isMobileMenuOpen &&
    !menuBtn.contains(event.target) &&
    !mobileMenu.contains(event.target)
  ) {
    closeMobileMenu();
  }
});

mobileMenu.querySelectorAll("a").forEach((link) => {
  link.addEventListener("click", () => {
    closeMobileMenu();
  });
});
const flipCards = document.querySelectorAll(".flip-card");

flipCards.forEach((card) => {
  card.addEventListener("click", (e) => {
    if (e.target.closest(".flip-card-back")) return;

    flipCards.forEach((c) => {
      if (c !== card && c.classList.contains("flipped")) {
        c.classList.remove("flipped");
      }
    });

    card.classList.toggle("flipped");
  });
});
