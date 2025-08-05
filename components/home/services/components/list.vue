<template>
  <div class="w-full h-full flex items-center">
    <div class="w-full flex justify-between items-center md:pl-[9.27px] lg:pl-4">
      <div class="flex items-center md:gap-x-[13.9px] lg:gap-x-6">
        <div
          class="flex justify-center items-center bg-[#FF7830] md:w-[25px] md:h-[25px] md:rounded-[3.75px] lg:w-8 lg:h-8 lg:rounded"
        >
          <div class="md:w-[15px] md:h-[15px] lg:w-5 lg:h-[21px]">
            <component :is="icon" />
          </div>
        </div>
        <p
          class="font-medium tracking-normal align-middle text-white md:text-[13px] md:leading-[16.22px] lg:text-base lg:leading-7"
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
