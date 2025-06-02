<template>
  <div
    class="w-[108px] h-9 rounded-full flex justify-between items-center bg-[#212121] px-3"
  >
    <span class="font-medium text-sm leading-[120%] tracking-[0%] text-white">
      45 min
    </span>
    <DeliveryTruck />
  </div>
</template>

<script setup lang="ts">
import DeliveryTruck from "@/components/home/about/components/delivery-truck.vue";
</script>

<style scoped></style>
