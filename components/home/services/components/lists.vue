<template>
  <div class="border-y-[0.14px] border-y-[#FFFFFF80] md:border-y-[0.29px] lg:border-y-[0.5px] mt-8 md:mt-0">
    <div 
      :class="`w-full h-12 ${list.id === lists.length ? '' : 'border-b-[0.14px] border-b-[#FFFFFF80] md:border-b-[0.29px] lg:border-b-[0.5px]'} md:h-[49px] lg:h-14 hover:cursor-pointer`"
      v-for="list in lists"
      :key="list.id"
    >
      <List 
        :icon="list.icon"
        :text="list.text"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import List from "~/components/home/services/components/list.vue";
import Compass from "~/components/home/services/components/compass.vue";
import Globe from "~/components/home/services/components/globe.vue";
import Computer from "~/components/home/services/components/computer.vue";

const lists = [
  { id: 1, icon: Compass, text: "Multi-Stop Last-Mile Delivery" },
  { id: 2, icon: Globe, text: "Reverse Logistics for Returns & Exchanges" },
  { id: 3, icon: Computer, text: "API Integration for Business Workflows" },
];
</script>

<style scoped></style>