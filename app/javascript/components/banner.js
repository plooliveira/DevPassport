
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Imagine a world where you can accelerate your company's innovation!", "We brought together software developers and recruiting professionals to innovate the hiring process", "Lead the Future!", "Accept the challenge!"],
    typeSpeed: 65,
    loop: true
  });
}

export { loadDynamicBannerText };

