function toggleMenu() {
  const menu = document.querySelector(".menu-links");
  const icon = document.querySelector(".hamburger-icon");
  menu.classList.toggle("open");
  icon.classList.toggle("open");
}

//Loading Page
window.onload = function() {
  setTimeout(function() {
    document.querySelector('.terminal-loader').style.display = 'none';
  }, 2000); // Hide after 5 seconds
};



// Fading for Experience
const experienceItems = document.querySelectorAll('.experience-item');

// Create an intersection observer to detect when elements come into view
const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible'); // Add the 'visible' class when the element is in view
    }
  });
}, { threshold: 0.5 }); // Trigger when 50% of the element is in the viewport

// Observe each experience item
experienceItems.forEach(item => {
  observer.observe(item);
});

///Projects Java Script 1234

document.addEventListener("DOMContentLoaded", function () {
  const scrollContainer = document.querySelector(".scroll-container");

  const addProject = () => {
    const newProject = document.createElement("div");
    newProject.classList.add("details-container", "color-container");
    newProject.innerHTML = `
      <div class="article-container">
        <img src="./assets/new-project.png" alt="New Project" class="project-img" />
      </div>
      <h2 class="experience-sub-title project-title">New Project</h2>
      <div class="btn-container">
        <button class="btn btn-color-2 project-btn" onclick="location.href='https://github.com/'">Github</button>
        <button class="btn btn-color-2 project-btn" onclick="location.href='https://github.com/'">Live Demo</button>
      </div>
    `;
    scrollContainer.appendChild(newProject);
  };

  // Example: Add new project button
 
});

//////-------
document.addEventListener("DOMContentLoaded", () => {
  const sections = document.querySelectorAll(".fade-in");

  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add("visible");
          observer.unobserve(entry.target); // Stop observing once visible
        }
      });
    },
    { threshold: 0.1 } // Trigger when 10% of the element is visible
  );

  sections.forEach((section) => observer.observe(section));
});

