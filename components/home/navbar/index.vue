<template>
  <div
    class="fixed top-12 right-0 left-0 z-30 max-w-[1112px] h-[58px] rounded-[9px] flex justify-between items-center pr-1 pl-4 py-1 bg-[#202020] mx-auto"
  >
    <PickaLogo />
    <NavbarLinks />
    <Buttons />
  </div>
</template>

<script setup lang="ts">
import PickaLogo from "~/components/home/navbar/components/picka-logo.vue";
import NavbarLinks from "~/components/home/navbar/components/navbar-links.vue";
import Buttons from "~/components/home/navbar/components/buttons.vue";
</script>

<style scoped></style>
