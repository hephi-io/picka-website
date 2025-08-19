<template>
  <div
    class="hidden lg:w-[55.76%] lg:h-[50px] lg:rounded-md lg:flex lg:justify-between lg:items-center lg:bg-[#2D2D2D] lg:px-1"
  >
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">Home</Button>
    <Seperator />
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">About</Button>
    <Seperator />
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">
      Services
      <ChevronDown />
    </Button>
    <Seperator />
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">How It Works</Button>
    <Seperator />
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">For Business</Button>
    <Seperator />
    <Button variant="link" class="filson-pro text-[#E5E4DE] hover:cursor-pointer">Contact</Button>
  </div>
</template>

<script setup lang="ts">
import Button from "@/components/ui/button/Button.vue";
import Seperator from "@/components/home/navbar/components/seperator.vue";
import ChevronDown from "@/components/home/navbar/components/chevron-down.vue";
</script>

<style scoped></style>
