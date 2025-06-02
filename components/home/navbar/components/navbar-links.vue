<template>
  <div
    class="w-[55.76%] h-[50px] rounded-md px-1 flex justify-between items-center bg-[#2D2D2D]"
  >
    <Button variant="link" class="text-[#E5E4DE]">Home</Button>
    <Seperator />
    <Button variant="link" class="text-[#E5E4DE]">About</Button>
    <Seperator />
    <Button variant="link" class="text-[#E5E4DE]">
      Services
      <ChevronDown />
    </Button>
    <Seperator />
    <Button variant="link" class="text-[#E5E4DE]">How It Works</Button>
    <Seperator />
    <Button variant="link" class="text-[#E5E4DE]">For Business</Button>
    <Seperator />
    <Button variant="link" class="text-[#E5E4DE]">Contact</Button>
  </div>
</template>

<script setup lang="ts">
import Button from "@/components/ui/button/Button.vue";
import Seperator from "@/components/home/navbar/components/seperator.vue";
import ChevronDown from "@/components/home/navbar/components/chevron-down.vue";
</script>

<style scoped></style>
