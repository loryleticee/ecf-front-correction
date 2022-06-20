<script lang="ts">
import uiMixinVue from "@/mixins/UI/uiMixin.vue";
import { useMainStore } from "@/stores/main";
import { mapWritableState } from "pinia";

export default {
  mixins: [uiMixinVue],
  computed: {
    ...mapWritableState(useMainStore, ["user"]),
  },
  methods: {
    handleSubmit() {
      this.$emit("handle-submit");
    },
  },
};
</script>

<template>
  <div>
    <form
      ref="form"
      @submit.prevent="handleSubmit"
      role="form"
      id="addressForm"
    >
      <fieldset>
        <div class="container">
          <legend>Inscription</legend>
          <span class="text-center"
            ><i
              >les champs munis d'un axtérix sont nécessaires à la validation du
              formulaire</i
            ></span
          >
        </div>

        <div class="container">
          <label>Sexe *</label>
          <div>
            <input type="radio" id="man" value="M" v-model.trim="user.sexe" />
            <label for="man">M</label>
            <input type="radio" id="women" value="F" v-model.trim="user.sexe" />
            <label for="women">F</label>
          </div>
          <label for="lastname">Nom*</label>
          <div>
            <input
              type="text"
              id="lastname"
              maxlength="100"
              placeholder="DUPONT Jeanne"
              title="Saisissez uniquement des lettres"
              v-model.trim="user.lastname"
              required
            />
          </div>
          <label for="fisrtname">Prénom *</label>
          <div>
            <input
              type="text"
              id="fisrtname"
              placeholder="DUPONT Jeanne"
              pattern="[A-Za-z]*"
              maxlength="100"
              title="Saisissez uniquement des lettres"
              v-model.trim="user.firstname"
              required
            />
          </div>
          <label for="email">Email *</label>
          <div>
            <input
              type="email"
              id="email"
              placeholder="dupont.Jeanne@gmail.com"
              v-model.trim="user.email"
              required
            />
          </div>
          <label for="tel">Téléphone</label>
          <div>
            <input
              type="tel"
              id="tel"
              title="Saisissez un numéro de telephone composé de 10 chiffres"
              pattern="\d{10}"
              placeholder="0690110019 (optionnel)"
              v-model.trim="user.tel"
            />
          </div>
        </div>

        <div class="container">
          <label for="cp">Code postal *</label>
          <div>
            <input
              type="text"
              id="cp"
              placeholder="97100"
              pattern="\d{5}"
              maxlength="5"
              title="Saisissez une nombre à 5 chiffres"
              v-model.trim="user.cp"
              required
            />
          </div>
          <label for="locality">Commune *</label>
          <div>
            <input
              type="text"
              id="locality"
              title="Saisissez un nom de commune valide"
              placeholder="City"
              pattern="[A-Za-z]*"
              maxlength="200"
              v-model.trim="user.locality"
              required
            />
          </div>
        </div>

        <div class="container">
          <div>
            <div>
              <button type="submit">Envoyer</button>
            </div>
          </div>
        </div>
      </fieldset>
    </form>
  </div>
</template>

<style scoped>
.container {
  display: flex;
  flex-flow: column wrap;
  justify-content: center;
  align-items: center;
  margin-top: 1rem;
}

.text-center {
  text-align: center;
}
</style>
