<template>
    <li class="py-4 flex">
        <img class="h-10 w-10 rounded-full" :src="team.image" alt="" />
        <div class="ml-3">
            <p class="text-sm font-medium text-gray-900">{{ team.name }}</p>
            <p class="text-sm text-gray-500">{{ team.city }}</p>
        </div>
    </li>
</template>

<script setup>
defineProps({
    team: Object
})
</script>
