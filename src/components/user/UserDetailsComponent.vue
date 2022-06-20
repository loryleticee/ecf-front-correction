<template>
  <div class="main">
    <div>
      <span>{{ mainStore.user.sexe }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.lastname }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.firstname }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.email }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.tel }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.cp }}</span>
    </div>
    <div>
      <span>{{ mainStore.user.locality }}</span>
    </div>
    <div class="bio" v-if="mainStore.user.showBio">
      <textarea
        name="bio"
        id=""
        cols="30"
        rows="10"
        v-model="mainStore.user.bio"
      ></textarea>
    </div>
    <button @click="mainStore.user.showBio = !mainStore.user.showBio">{{ mainStore.user.showBio ? "Cacher" : "Afficher" }}</button>
  </div>
</template>

<script lang="ts" setup>
import { useMainStore } from "@/stores/main";

const mainStore = useMainStore();
</script>
<style scoped>
.main {
  display: flex;
  flex-flow: column wrap;
  justify-content: center;
  align-items: center;
}

.bio {
  display: flex;
  flex-flow: column wrap;
  margin: 4rem;
}
</style>
