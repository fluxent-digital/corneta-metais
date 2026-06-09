/* ============================================
   CORNETA METAIS — Main JavaScript
   Navbar scroll, mobile menu, smooth scroll
   ============================================ */

document.addEventListener('DOMContentLoaded', () => {
  initNavbar();
  initSmoothScroll();
  initAnimations();
  initLightbox();
  initFAQ();
});

/* =========================
   NAVBAR
   ========================= */
function initNavbar() {
  const navbar = document.querySelector('.navbar');
  if (!navbar) return;

  const isInnerPage = navbar.classList.contains('navbar--inner');

  // Scroll effect
  function handleScroll() {
    if (window.scrollY > 50) {
      navbar.classList.add('scrolled');
    } else {
      navbar.classList.remove('scrolled');
    }
  }

  // Don't toggle scroll on inner pages - they always have background
  if (!isInnerPage) {
    window.addEventListener('scroll', handleScroll, { passive: true });
    handleScroll();
  }

  // Hamburger menu
  const hamburger = document.querySelector('.navbar__hamburger');
  const mobileOverlay = document.querySelector('.navbar__mobile-overlay');

  if (hamburger && mobileOverlay) {
    hamburger.addEventListener('click', () => {
      hamburger.classList.toggle('open');
      mobileOverlay.classList.toggle('open');
      navbar.classList.toggle('menu-open');
      document.body.style.overflow = mobileOverlay.classList.contains('open') ? 'hidden' : '';
    });

    // Close on link click
    mobileOverlay.querySelectorAll('.navbar__link').forEach(link => {
      link.addEventListener('click', () => {
        hamburger.classList.remove('open');
        mobileOverlay.classList.remove('open');
        navbar.classList.remove('menu-open');
        document.body.style.overflow = '';
      });
    });

    // Close on escape
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape' && mobileOverlay.classList.contains('open')) {
        hamburger.classList.remove('open');
        mobileOverlay.classList.remove('open');
        navbar.classList.remove('menu-open');
        document.body.style.overflow = '';
      }
    });
  }

  // Active link
  const currentPage = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.navbar__link').forEach(link => {
    const href = link.getAttribute('href');
    if (href === currentPage || (currentPage === '' && href === 'index.html') || (currentPage === '/' && href === 'index.html')) {
      link.classList.add('active');
    }
  });
}

/* =========================
   SMOOTH SCROLL
   ========================= */
function initSmoothScroll() {
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      e.preventDefault();
      const target = document.querySelector(this.getAttribute('href'));
      if (target) {
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    });
  });
}

/* =========================
   FAQ ACCORDION
   ========================= */
function initFAQ() {
  const faqItems = document.querySelectorAll('.faq-item');
  if (!faqItems.length) return;

  faqItems.forEach(item => {
    const question = item.querySelector('.faq-item__question');
    if (!question) return;

    question.addEventListener('click', () => {
      const isActive = item.classList.contains('active');

      // Close all other items
      faqItems.forEach(other => {
        if (other !== item) {
          other.classList.remove('active');
          const otherBtn = other.querySelector('.faq-item__question');
          if (otherBtn) otherBtn.setAttribute('aria-expanded', 'false');
        }
      });

      // Toggle current item
      item.classList.toggle('active', !isActive);
      question.setAttribute('aria-expanded', !isActive ? 'true' : 'false');
    });
  });
}

/* =========================
   SCROLL ANIMATIONS
   ========================= */
function initAnimations() {
  const revealElements = document.querySelectorAll('.reveal, .reveal-left, .reveal-right, .reveal-scale, .reveal-stagger');

  if (!revealElements.length) return;

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('revealed');
        observer.unobserve(entry.target);
      }
    });
  }, {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  });

  revealElements.forEach(el => observer.observe(el));
}
/* =========================
   LIGHTBOX
   ========================= */
function initLightbox() {
  const galleryImages = document.querySelectorAll('.gallery-grid__item img, .about__photo img');
  if (!galleryImages.length) return;

  // Create lightbox markup
  const lightbox = document.createElement('div');
  lightbox.className = 'lightbox';
  lightbox.innerHTML = `
    <div class="lightbox__overlay"></div>
    <div class="lightbox__content">
      <img src="" alt="" class="lightbox__image">
      <button class="lightbox__close" aria-label="Close lightbox">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
      </button>
    </div>
  `;
  document.body.appendChild(lightbox);

  const lightboxImg = lightbox.querySelector('.lightbox__image');
  const lightboxOverlay = lightbox.querySelector('.lightbox__overlay');
  const closeBtn = lightbox.querySelector('.lightbox__close');

  function openLightbox(src, alt) {
    lightboxImg.src = src;
    lightboxImg.alt = alt || '';
    lightbox.classList.add('active');
    document.body.style.overflow = 'hidden';
  }

  function closeLightbox() {
    lightbox.classList.remove('active');
    document.body.style.overflow = '';
  }

  // Add click event to all gallery images
  galleryImages.forEach(img => {
    img.style.cursor = 'pointer';
    img.addEventListener('click', () => {
      openLightbox(img.src, img.alt);
    });
  });

  // Close events
  closeBtn.addEventListener('click', closeLightbox);
  lightboxOverlay.addEventListener('click', closeLightbox);
  
  // Keyboard event
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape' && lightbox.classList.contains('active')) {
      closeLightbox();
    }
  });
}
