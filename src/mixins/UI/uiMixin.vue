<script lang="ts">
export default {
  methods: {
    isMobile() {
      return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ? true : false;
    },
    isSmallScreen() {
      return document.body.scrollWidth < 1200;
    },
  },
};
</script>
