// TODO: write your code here!

// 1. Selecionar o elemento
// 2. selecionar o evento
// 3. o código que vai ser executado
// 4. juntar tudo num eventListener

const clickableButton = () => {
  const clickableButtons = document.querySelectorAll(".clickable");

  const changeClass = (event) => {
    event.currentTarget.classList.toggle("active");
  };

  const addEvent = (button) => {
    button.addEventListener('click', changeClass);
  };

  clickableButtons.forEach(addEvent);
}

export { clickableButton };
