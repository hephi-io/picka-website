<template>
  <motion.div
    :initial="{ y: '22px', opacity: 0 }"
    :animate="{ y: 0, opacity: 1 }"
    class="fixed top-12 right-0 left-0 z-30 w-[91.79%] h-[58px] rounded-[9px] flex justify-between items-center pr-1 pl-4 py-1 bg-[#202020] md:w-[91.37%] lg:max-w-[1112px] mx-auto"
  >
    <div class="w-[52px] h-[18px] hover:cursor-pointer">
      <a href="#home">
        <PickaLogo />
      </a>
    </div>
    <NavbarLinks />
    <div class="w-[95px] h-[50px] rounded-[9px] bg-[#2D2D2D] lg:hidden p-1">
      <Button
        class="w-[87px] h-[42px] rounded-[7px] border-[0.5px] border-[#FFFFFF66] bg-[#1C1914] flex gap-2 items-center p-3 hover:cursor-pointer"
      >
        <div class="w-[16.67px] h-[16.67px]">
          <MenuIcon />
        </div>
        <span class="font-semibold text-[13px] leading-4.5 -tracking-[0.25px] text-center text-[#E5E4DE]">
          Menu
        </span>
      </Button>
    </div>
    <Buttons />
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";

import PickaLogo from "~/components/home/navbar/components/picka-logo.vue";
import NavbarLinks from "~/components/home/navbar/components/navbar-links.vue";
import Buttons from "~/components/home/navbar/components/buttons.vue";
import MenuIcon from "~/components/home/navbar/components/menu-icon.vue";
import Button from "~/components/ui/button/Button.vue";
</script>

<style scoped></style>
