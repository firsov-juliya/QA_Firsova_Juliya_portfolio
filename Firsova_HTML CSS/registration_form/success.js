// В начале файла добавьте:
console.log('success.js загружен!');

// Находим элементы на странице
const modal = document.getElementById("modal");
const modalText = document.getElementById("modalText");
const confirmBtn = document.getElementById("confirmBtn");
const cancelBtn = document.getElementById("cancelBtn");

// Находим все кнопки "Купить билет"
const buyButtons = document.querySelectorAll('.card button');

//Сохраним все события в переменную
let selectedEvent = "";

// Обработчик клика по кнопке "Купить билет"
buyButtons.forEach(button =>{
    button.addEventListener('click',()=>{
    //Получаем название события из карточки
    const eventName = button.parentElement.querySelector('h2').textContent;
    selectedEvent = eventName;
    
    //Показываем модалку
    modalText.textContent = `Вы уверены что хотите купить билет на "${eventName}"?`;
    modal.classList.remove('hidden');
    })
})

// Обработчик кнопки ДА
confirmBtn.addEventListener('click',() =>{
    alert(`Билет на "${selectedEvent}" успешно куплен!`);
    modal.classList.add('hidden');
})

//Обработчик кнопки НЕТ

cancelBtn.addEventListener('click',() =>{
    modal.classList.add('hidden');
})




