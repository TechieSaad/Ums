// let input = document.querySelector('input')

// let getValue = (e) =>{
//     let btnVal = e.target.innerText
//     input.value +=btnVal;

// }

// //or

// // let getValue = e =>{input.value += e.target.innerText}

// let result =()=>{
//     input.value=eval(input.value)
// }

// //or

// //let result = _ =>{input.value=eval(input.value)}

// let empty = () =>{
//     input.value = "";
// }

// //or

// //let empty = _ =>{input.value=""}

// let del = () =>{
//     input.value = input.value.slice(0, -1)
// }

let input = document.getElementById('inputBox');
let buttons = document.querySelectorAll('button');

let string = "";
let arr = Array.from(buttons);
arr.forEach(button => {
    button.addEventListener('click', (e) =>{
        if(e.target.innerHTML == '='){
            string = eval(string);
            input.value = string;
        }

        else if(e.target.innerHTML == 'AC'){
            string = "";
            input.value = string;
        }
        else if(e.target.innerHTML == 'DEL'){
            string = string.substring(0, string.length-1);
            input.value = string;
        }
        else{
            string += e.target.innerHTML;
            input.value = string;
        }
        
    })
})