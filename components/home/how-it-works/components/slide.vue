<template>
  <div class="group relative w-full h-full">
    <div class="absolute top-0 w-full h-full gradient md:rounded-[8.61px] lg:rounded-[12px] md:p-[22.95px] lg:p-8 group-hover:h-[85%] transition-all duration-[0.3s] ease-in-out">
      <div class="bg-[#FF7C33] rounded-full overflow-hidden md:w-[40.41px] md:h-[40.41px] lg:w-[56.35px] lg:h-[56.35px]">
        <IconContainer> 
          <component :is="icon" :style="style" />
        </IconContainer>
      </div>
      <h1 class="font-medium tracking-normal align-middle text-[#FAFAFA] md:text-xl md:leading-[20.08px] lg:text-2xl lg:leading-7 md:mt-[17.21px] lg:mt-6">
        {{ heading }}
      </h1>
      <p class="font-[350] tracking-normal align-middle text-[#F0F0F0] md:text-sm md:leading-[17.21px] lg:text-base lg:leading-6 md:mt-[11.47px] lg:mt-4">
        {{ paragraph }}
      </p>
      <div class="absolute md:w-fit md:h-fit md:right-[22.95px] md:bottom-[22.95px] lg:right-8 lg:bottom-8">
        <span class="hubot-sans font-medium leading-[100%] tracking-normal align-middle text-[#D9D9D9] md:text-[71.71px] lg:text-[100px]">
          {{ number }}
        </span>
      </div>
    </div>
    <div class="absolute bottom-0 overflow-hidden grid grid-rows-[0fr] opacity-0 group-hover:grid-rows-[1fr] group-hover:opacity-100 transition-all duration-[0.3s] ease-in-out">
      <Button class="overflow-hidden gap-x-2 rounded-[6px] border-[0.5px] border-[#E5E4DE] hover:cursor-pointer p-3">
        <span class="text-[13px] leading-4.5 -tracking-[0.25px] text-center text-white">
          {{ buttonText }}
        </span>
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