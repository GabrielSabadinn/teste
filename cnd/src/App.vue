<template>
  <div>
  
    <div style="background: #4A154B;">
      <div style="display: flex; flex-direction: row; max-width: 1260px; margin: 0 auto; justify-content: space-between;">
        <div>
          <div style="display: flex; justify-content: left; margin-top: 50px; margin-bottom: 40px;">
            <img src="https://www.lefisc.com.br/cnd/lupa.svg" class="imagem-cipa" style="width: 30px">
            <h1 style="color: white; margin-left: 12px; font-weight: 200;"><strong>CND</strong> Pesquisa Fácil</h1>
          </div>
          <div style="font-weight: 400;">
            <p class="paragrafo">
              <strong style="color: #B097B4; font-size: 24px;">A Certidão Negativa de Débitos (CND) é um documento emitido por qualquer órgão do governo que confirma não haver pendências financeiras ou processuais em nome dessa pessoa física, jurídica ou mesmo de um bem.</strong>
              <br><br>
              Através do CNAE (com 5 dígitos) é identificado o Grau de Risco a que pertence o estabelecimento (Grau de Risco conforme estabelecido no Quadro I da NR-4 - Relação da Classificação Nacional de Atividades Econômicas - CNAE (Versão 2.0), com correspondente Grau de Risco - GR para fins de dimensionamento do Serviço Especializado em Segurança e em Medicina do Trabalho – SESMT); conforme o Grau de Risco (Quadro I - Dimensionamento da CIPA) é determinado a partir de quantos empregados deve ser constituída a CIPA; e, havendo a obrigatoriedade de constituir a CIPA, é definido qual o dimensionamento da CIPA.
              <br><br>
              Quando o estabelecimento não estiver obrigado a constituir a CIPA, a empresa designará um responsável pelo cumprimento dos objetivos da Norma Regulamentadora nº 5 e para o qual promoverá treinamento anual.
            </p>
          </div>
        </div>
        <div>
          <img src="https://www.lefisc.com.br/cnd/personashablando.svg" class="imagem-person">
        </div>
      </div>
    </div>

    <div style="padding-bottom: 40px; background: #B097B4;">
      <div class="search-bar">
        <div style="display: flex; width: 100%; align-items: center; justify-content: flex-start;">
          <p style="color: white; font-weight: 600; margin-right: 20px;">Selecione a esfera</p>
          <div class="search-select" >
          <div class="selected-option" @click="toggleOptions">
          {{ selectedOption }}
          <span class="arrow" :class="{ 'arrow-rotated': showOptions }"></span>
        </div>
       <div class="options-container" v-show="showOptions">
          <div class="option" @click="selectOption('Esfera Federal')">Esfera Federal</div>
          <div class="option" @click="selectOption('Esfera Estadual')">Esfera Estadual</div>
          <div class="option" @click="selectOption('Esfera Municipal')">Esfera Municipal</div>
    </div>
  </div>
</div>
      </div>
 


      <div>
        <component :is="selectedComponent"></component>
      </div>
    </div>

   
  </div>
</template>

<script>


import EsferaEstadual from './components/EsferaEstadual.vue';
import EsferaMunicipal from './components/EsferaMunicipal.vue';
import FederalComponente from './components/FederalComponente.vue';

export default {
  components: {
  
   
    EsferaEstadual,
    EsferaMunicipal,
    FederalComponente,
  },
  data() {
    return {
      showOptions: false,
      selectedOption: 'Selecione a esfera que deseja',
      selectedComponent: null,
    };
  },
  methods: {
    
    toggleOptions() {
  
      this.showOptions = !this.showOptions;
    },
    selectOption(option) {
      this.selectedOption = option;
      this.showOptions = false;
      if (option === 'Esfera Federal') {
        this.selectedComponent = 'FederalComponente';
      } else if (option === 'Esfera Estadual') {
        this.selectedComponent = 'EsferaEstadual';
      } else if (option === 'Esfera Municipal') {
        this.selectedComponent = 'EsferaMunicipal';
      } else {
        this.selectedComponent = null;
      }

      this.showOptions = false;
    },
  },
};
</script>

<style>
.arrow {
  width: 10px;
  height: 10px;
  border-top: 2px solid rgb(0, 0, 0);
  border-right: 2px solid rgb(0, 0, 0);
  transform: rotate(-45deg);
  transition: transform 0.3s;
}

.arrow-rotated {
  transform: rotate(135deg);
}

.search-select {
  position: relative;
  display: flex;
  align-items: center;
}

.selected-option,
.option {
  background-color: white;
  border: 1px solid #fff;
  border-radius: 4px;
  font-size: 16px;
  padding: 5px 10px;
  cursor: pointer;
  display: flex;
  align-items: center;
}

.selected-option {
  width: 300px; 
  height: 40px;
  justify-content: space-between;
  font-style: italic;
}

.option {
  padding: 5px 10px;
  margin-top: 3px;
  margin-bottom: 3px;
  font-style: italic;
}

.option:hover {
  background-color: #f2f2f2;
}

.options-container {
  position: absolute;
  top: 95%;
  left: 0;
  right: 0;
  background-color: white;
  border-radius: 4px;
  margin-top: 5px;
  display: flex;
  flex-direction: column;
  max-height: 150px;
  overflow-y: hidden;
  z-index: 1;
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
}

.validation-message {
  text-align: center;
  font-size: 18px;
  padding: 20px;
  color: red;
  background-color: #FFEAAA;
}

.search-select option:checked {

  background-color: #B097B4;
  color: #fff;
}

.search-select option {
  
  background-color: white;
  border: 1px solid #fff;
  border-radius: 14px;
  font-size: 15px;
}
* {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  margin: 0;
  padding: 0;
  outline: none;
}
.imagem-cipa {
  max-width: 100%;
  height: auto;
}

.imagem-person {
  width: 100%;
  max-width: 600px;
  height: auto;
  margin-top: 100px;
}

.paragrafo {
  width: 550px;
  margin: 0 auto;
  font-size: 14px;
  margin-bottom: 80px;
  text-align: justify;
  color: white;
  
}

.search-bar {
  position: relative;
  max-width: 1200px;
  height: 72px;
  margin: 0 auto;
  width: 100%;
  background: #263238;
  top: -36px;
  border-radius: 3px;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0px 30px;
}

.search-select,
.search-input {
  font-size: 16px;
  height: 40px;
  border: none;
  border-radius: 6px;
  padding: 0px 10px;
}

.search-select {
  width: 300px; /* Ajuste a largura conforme necessário */
  height: 40px;
  padding: 10px;
}

.search-label {
  color: white;
  margin-right: 12px;
  font-weight: 500;
}

.search-input {
  width: 100%;
  max-width: 290px;
  
  font-weight: 600;
}

.search-button {
  background: none;
  font-weight: 600;
  font-size: 15px;
  width: 100px;
  color: white;
  cursor: pointer;
  background-color: #F7B733;
  border-radius: 5px;
  border:none;
  height: 40px;
 
}
.spinner {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100px;
}

</style>
