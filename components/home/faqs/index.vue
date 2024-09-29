<script setup lang="ts">
import { ref } from "vue";
import FaqItem from "./components/faq-item.vue";

const selected = ref("");

const faqWindows = ref([
  {
    id: "1",
    question: "How do I sign up for ZipKod’s services",
    answer: `Signing up with ZipKod is easy. Simply visit our website and fill out
          the registration form under the "Sign Up" section. Our team will then
          guide you through the setup process to integrate our logistics
          platform into your business operations`,
  },
  {
    id: "2",
    question: "How do I track my package?",
    answer: "",
  },
  {
    id: "3",
    question: "Can I schedule deliveries at specific times?",
    answer: "",
  },
  {
    id: "4",
    question: "What technology integrations are available?",
    answer: "",
  },
  {
    id: "5",
    question: "How do I place an order?",
    answer: "",
  },
  {
    id: "6",
    question: "How can I track my deliveries?",
    answer: "",
  },
]);
</script>

<template>
  <section class="w-[90%] xl:w-[1200px] 2xl:w-[1344px] mx-auto pt-40" id="faqs">
    <div
      class="space-grotesk font-semibold text-[13px] leading-[16.77px] text-[#444444] mb-5 md:mb-6 md:text-base md:leading-[20.64px]"
    >
      FAQS
    </div>

    <div class="flex flex-col gap-y-3">
      <faq-item
        v-for="(faq, i) in faqWindows"
        :key="i"
        :question="faq.question"
        :answer="faq.answer"
        :isActive="selected === faq.id"
        @selected="selected = faq.id"
      />
    </div>
  </section>
</template>

<style scoped></style>
