<template>
  <div class="main">
    <signup-component @handle-submit="handleSubmit" />
  </div>
</template>

<script lang="ts">
import SignupComponent from "@/components/user/SignupComponent.vue";
import { useMainStore } from "@/stores/main";
import { mapWritableState } from "pinia";

export default {
  components: { SignupComponent },
  computed: {
    ...mapWritableState(useMainStore, ["user", "regex", "userList", "isConnected"]),
  },
  methods: {
    handleSubmit() {
      let error = false;

      error = ! /(M|F)/.test(this.user.sexe) 
      error = ! /\w+/.test(this.user.lastname) // + 1 charactere ou plus
      error = ! /\w*/.test(this.user.firstname) 
      error = ! /\d{5}/.test(this.user.cp)
      error = ! /\w*/.test(this.user.locality) 

      if (error) {

        return;
      }
      this.user.isConnected = true;
      this.userList.push(this.user);
    },
  },
};
</script>
<style scoped></style>
