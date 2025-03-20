gsap.from(".header-left h1,.header-left p, .header-left a", { 
    duration: 3, 
    x: -100, 
    opacity: 0, 
    ease: "power2.out" 
  });

  gsap.from(".header-right img", { 
    duration: 3, 
    x: 100, 
    opacity: 0, 
    ease: "power2.out" 
  });

  gsap.from(".about-header h2", {
    duration: 1,
    opacity: 0,
    y: -50,
    scrollTrigger: {
      trigger: ".about-section",
      start: "top 80%",
      toggleActions: "play none none none",
    },
  });

  gsap.from(".about-image", {
    duration: 1,
    opacity: 0,
    x: -100,
    delay: 0.5,
    scrollTrigger: {
      trigger: ".about-section",
      start: "top 80%",
      toggleActions: "play none none none",
    },
  });

  gsap.from(".features-card", {
    duration: 1,
    opacity: 0,
    y: 50,
    stagger: 0.3,
    scrollTrigger: {
      trigger: ".features-section", 
      start: "top 80%",
      toggleActions: "play none none none",
    },
  });

  gsap.from(".contact-form", {
    duration: 1,
    opacity: 0,
    y: 50,
    scrollTrigger: {
      trigger: ".contact-section", 
      start: "top 80%",
      toggleActions: "play none none none",
    },
  });

  gsap.from("footer", {
    duration: 1,
    y: 50,
    opacity: 0,
    scrollTrigger: {
      trigger: "footer", 
      start: "top 90%",
      toggleActions: "play none none none",
    },
  });