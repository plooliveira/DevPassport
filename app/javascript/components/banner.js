
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The best way to be approved in the most of technologies companies of the world!", "Accept the Challenge!", "Be Protagonist!", "Reach the Top!", "Lead the Future!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
