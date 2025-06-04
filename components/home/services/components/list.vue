<template>
  <div class="w-full h-full flex items-center">
    <div class="w-full flex justify-between items-center pl-4">
      <div class="flex gap-x-6 items-center">
        <div
          class="w-8 h-8 flex justify-center items-center bg-[#FF7830] rounded"
        >
          <component :is="icon" />
        </div>
        <p
          class="font-medium text-base leading-7 tracking-normal align-middle text-white"
        >
          {{ text }}
        </p>
      </div>
      <div>
        <Arrow :style="'fill-white'" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { DefineComponent } from "vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";

defineProps<{
  icon: DefineComponent<any, any, any>;
  text: string;
}>();
</script>

<style scoped></style>
