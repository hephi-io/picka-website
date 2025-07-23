<template>
  <motion.div
    :initial="{ y: '22px', opacity: 0 }"
    :animate="{ y: 0, opacity: 1 }"
    class="fixed top-12 right-0 left-0 z-30 max-w-[1112px] h-[58px] rounded-[9px] flex justify-between items-center pr-1 pl-4 py-1 bg-[#202020] mx-auto"
  >
    <div class="w-[52px] h-[18px]">
      <PickaLogo />
    </div>
    <NavbarLinks />
    <Buttons />
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";

import PickaLogo from "~/components/home/navbar/components/picka-logo.vue";
import NavbarLinks from "~/components/home/navbar/components/navbar-links.vue";
import Buttons from "~/components/home/navbar/components/buttons.vue";
</script>

<style scoped></style>
