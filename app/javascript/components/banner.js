
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Imagine a world where you can accelerate your company's innovation!", "We brought together software developers, hiring managers and recruiting professionals from leading companies to innovate the hiring processes world!", "Lead the Future!", "Accept the challenge!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
