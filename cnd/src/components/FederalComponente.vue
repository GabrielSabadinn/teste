<template>
  <div style="width: 100%; max-width: 1260px; margin: 0 auto;">
    <div class="container">
      <div>
        <h1 style="border-bottom: 4px solid #4A154B; color: #4A154B; display: inline-block;">Esfera Federal</h1>
      </div>
    </div>
    <div class="info" v-for="(a,i) in array" :key="i" @click="pegarlink(a.link)">
      <div class="rectangle">
        <h2 style="cursor: pointer;">{{ a.titulo }}</h2>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      array : [],
      titulo: ''
    };
  },
  methods:
  {
pegarlink(link){
  window.open( link ,'_blank')
}
  },
 async mounted() {
  await  axios
      .get('http://localhost:3306/federal')
      .then(response => {
        console.log(response.data); 
        this.array = response.data;
        
      })
      .catch(error => {
        console.error('Erro ao obter os dados da API:', error);
      });
  }
};
</script>

<style>
.container {
  display: flex;
  justify-content: flex-start;
}


.info {
  margin-top: 30px;
  display: flex;
  flex-wrap: wrap;
}

.rectangle {
  background-color: white;
  padding: 20px;
  border: 1px solid #4A154B;
  border-radius: 8px;
  border-left: 6px solid #4A154B;
  width: 100%;
  box-sizing: content-box;
 
}

.rectangle h2,
.rectangle h4,
.rectangle p {
  margin: 0;
}
</style>
