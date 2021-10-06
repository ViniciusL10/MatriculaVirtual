/* global fetch, cep */

'use strict';

const limparForm = (endereco) =>{
    document.getElementById('endereco').value = "";
    document.getElementById('bairro').value = "";
    document.getElementById('cidade').value = "";
    document.getElementById('estado').value = "";
};

const preencherForm = (endereco) =>{
    limparForm();
    document.getElementById('endereco').value = endereco.logradouro;
    document.getElementById('bairro').value = endereco.bairro;
    document.getElementById('cidade').value = endereco.localidade;
    document.getElementById('estado').value = endereco.uf;
};

const eNumero = (numero) => /^[0-9]+$/.test(numero);
 
const cepValido = (cep) => cep.length == 8 && eNumero(cep);

const pesquisarCep = async() => {
    const cep = document.getElementById('cep').value;
    const url = `http://viacep.com.br/ws/${cep}/json/`;
    if (cepValido(cep)){
        const dados = await fetch(url);
        const endereco = await dados.json();
        if (endereco.hasOwnProperty('erro')){
            document.getElementById('endereco').value = 'CEP não existente';
        }else {
            preencherForm(endereco);
        }
    }else{
            document.getElementById('endereco').value = 'CEP incorreto';
    }   
};

document.getElementById('cep')
            .addEventListener('focusout',pesquisarCep);