
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Imagine a world where you can accelerate your company's innovation!", "Lead the Future!", "Accept the challenge!"],
    typeSpeed: 65,
    loop: true
  });
}

export { loadDynamicBannerText };

