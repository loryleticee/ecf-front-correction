<script lang="ts" setup>
import { RouterLink, RouterView } from "vue-router";
import { useMainStore } from "@/stores/main";

const mainStore = useMainStore()

</script>

<template>
  <header>
    <div>
      <nav class="navbar">
        <div></div>
        <RouterLink to="/">Accueil</RouterLink>
        <RouterLink to="/signup">Inscription</RouterLink>
        <RouterLink to="/account">Profile</RouterLink>

        <div class="icon" v-if="mainStore.user.isConnected">
          <i v-if="mainStore.user.sexe === 'M'" class="fa-solid fa-child"></i>
          <i v-else class="fa-solid fa-star"></i>
        </div>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style>
.navbar {
  display: flex;
  justify-content: space-around;
  margin: 1rem 0;
}
.icon {
  margin: 0 6rem;
}
.container {
  display: flex;
  justify-content: center;
}
</style>
