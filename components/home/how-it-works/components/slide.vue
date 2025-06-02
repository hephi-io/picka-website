<template>
  <div class="group relative w-full h-full transition-all duration-[3s] ease-in-out">
    <div class="absolute top-0 w-full h-full p-8 gradient rounded-[12px] group-hover:h-[85%]">
      <div class="w-[56.35px] h-[56.35px] bg-[#FF7C33] rounded-full overflow-hidden">
        <IconContainer>
          <component :is="icon" :style="style" />
        </IconContainer>
      </div>
      <h1 class="font-medium  text-2xl  leading-7 tracking-normal align-middle text-[#FAFAFA] mt-6">
        {{ heading }}
      </h1>
      <p class=" font-[350] text-base leading-6 tracking-normal align-middle text-[#F0F0F0] mt-4">
        {{ paragraph }}
      </p>
      <div class="absolute right-8 bottom-8 w-[98px] h-[100px]">
        <span class="font-medium text-[100px] leading-[100%] tracking-normal align-middle text-[#D9D9D9]">
          {{ number }}
        </span>
      </div>
    </div>
    <div class="absolute bottom-0 overflow-hidden grid grid-rows-[0fr] opacity-0 group-hover:grid-rows-[1fr] group-hover:opacity-100">
      <Button class="overflow-hidden gap-x-2 rounded-[6px] border-[0.5px] border-[#E5E4DE] p-3">
        {{ buttonText }}
        <Arrow :style="'fill-white'" />
      </Button>
    </div>
  </div>
</template>

<script setup lang="ts">
import IconContainer from '~/components/home/how-it-works/components/icon-container.vue';
import Button from '~/components/ui/button/Button.vue';
import Arrow from '~/components/home/navbar/components/arrow.vue';
import type { DefineComponent } from 'vue';

defineProps<{
  icon: DefineComponent<any, any, any>;
  style?: string;
  heading: string;
  paragraph: string;
  buttonText: string;
  number: string;
}>()
</script>

<style scoped>
.gradient {
  background: linear-gradient(180deg, #222222 0%, #212121 100%);
}
</style>