<template>
  <div id="app" class="container">
    <img alt="Vue logo" src="./assets/logo.png" />    
    <Quotes />
  </div>
</template>

<script>
import Quotes from "./components/Quotes.vue";

export default {
  name: "app",
  components: {
    Quotes
  }
};
</script>

<style>
#app {
  font-family: "Montserrat", Helvetica, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #666666;
  margin-top: 60px;
}
</style>
