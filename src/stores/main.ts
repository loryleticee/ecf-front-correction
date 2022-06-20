import { defineStore } from 'pinia'

export const useMainStore = defineStore({
  id: 'main',
  state: () => ({
    user: {
      sexe: "M",
      lastname: "",
      firstname: "",
      email: "",
      tel: "",
      cp: "",
      locality: "",
      isConnected: false,
      bio: "",
      showBio: false,
    },
    userList: [],
    error: {
      
    }

  }),
  persist: true,
})
