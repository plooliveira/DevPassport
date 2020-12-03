
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The best way to be approved in the main technologies companies of the world!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
