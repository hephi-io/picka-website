<template>
  <div class="faq-card rounded-lg lg:rounded-2xl p-4 md:px-[29px] md:py-10">
    <div class="flex justify-between items-center">
      <div
        :class="`flex items-center space-grotesk font-bold sm:text-lg ${
          isActive ? 'text-[#FF7830]' : 'text-[#444444]'
        }  md:text-xl`"
      >
        {{ question }}
      </div>

      <button
        @click="handleClick"
        class="h-6 w-6 sm:h-[40px] sm:w-[40px] rounded-lg flex items-center justify-center"
        :class="`${isActive ? 'bg-[#FF7830]' : 'bg-[#F7F7FF]'}`"
      >
        <!-- <img src="/images/minimize-button.svg" alt="Minimize button" /> -->
        <svg
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="transition-all duration-300 h-4 w-4 sm:h-[24px] sm:w-[24px] shrink-0"
          :class="`${isActive ? 'text-white' : 'text-[#ACACAC]'} ${
            hide ? '' : 'rotate-45'
          }`"
        >
          <line x1="12" y1="5" x2="12" y2="19"></line>
          <line x1="5" y1="12" x2="19" y2="12"></line>
        </svg>
      </button>
    </div>

    <div
      :class="`overflow-hidden transition-all duration-300`"
      :style="`height: ${!hide ? `${height + (answer ? 36 : 0)}px` : '0px'};`"
    >
      <p
        :class="`sm:text-lg leading-[23.4px] text-[#737373] transition-all duration-300 ${
          !hide ? 'pt-9' : ''
        }`"
        v-if="answer"
        ref="answerRef"
      >
        {{ answer }}
      </p>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import { useElementSize } from "@vueuse/core";

defineProps<{ question: string; answer: string; isActive: boolean }>();
const emits = defineEmits(["selected"]);

const hide = ref(true);
const answerRef = ref<HTMLElement | undefined>();
const { height } = useElementSize(answerRef);

const handleClick = () => {
  hide.value = !hide.value;
  emits("selected");
};
</script>

<style scoped>
.faq-card {
  background: #ffffff;
  border: 1px solid #ebebeb;
  box-shadow: 0px 5px 16px rgba(8, 15, 52, 0.06);
}
</style>
