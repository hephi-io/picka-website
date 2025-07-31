<template>
  <div
    class="rounded-full flex justify-between items-center bg-[#212121] md:w-[125.42px] md:h-[41.81px] lg:w-[108px] lg:h-9 md:px-[13.94px] lg:px-3"
  >
    <span class="font-medium leading-[120%] tracking-[0%] text-white md:text-[16.26px] md:text-right md:align-middle lg:text-sm">
      45 min
    </span>
    <DeliveryTruck />
  </div>
</template>

<script setup lang="ts">
import DeliveryTruck from "@/components/home/about/components/delivery-truck.vue";
</script>

<style scoped></style>
