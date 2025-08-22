<template>
  <div class="w-full h-full flex items-center">
    <div class="w-full flex justify-between items-center pl-[4.33px] md:pl-[9.27px] lg:pl-4">
      <div class="flex gap-x-[6.5px] items-center md:gap-x-[13.9px] lg:gap-x-6">
        <div
          class="w-[15px] h-[15px] rounded-[1.75px] flex justify-center items-center bg-[#FF7830] md:w-[25px] md:h-[25px] md:rounded-[3.75px] lg:w-8 lg:h-8 lg:rounded"
        >
          <div class="w-[8.77px] h-[8.77px] md:w-[15px] md:h-[15px] lg:w-5 lg:h-[21px]">
            <component :is="icon" />
          </div>
        </div>
        <p
          class="text-[11px] leading-[100%] tracking-normal align-middle text-white md:text-[13px] md:leading-[16.22px] lg:font-medium lg:text-base lg:leading-7"
        >
          {{ text }}
        </p>
      </div>
      <div>
        <Arrow :arrowSize="'w-6 h-6'" :style="'fill-white'" />
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
