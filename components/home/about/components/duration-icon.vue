<template>
  <div
    class="w-[125.42px] h-[41.81px] rounded-full flex justify-between items-center bg-[#212121] lg:w-[108px] lg:h-9 px-[13.94px] lg:px-3"
  >
    <span class="text-[16.26px] leading-[120%] tracking-[0%] text-right align-middle text-white md:font-medium lg:text-sm">
      45 min
    </span>
    <DeliveryTruck />
  </div>
</template>

<script setup lang="ts">
import DeliveryTruck from "@/components/home/about/components/delivery-truck.vue";
</script>

<style scoped></style>
