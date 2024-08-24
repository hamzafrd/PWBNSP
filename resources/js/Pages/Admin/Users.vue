<template>
    <div class="p-6 bg-white shadow rounded-lg">
        <h1 class="text-2xl font-bold mb-4">Manage Users</h1>
        <table class="min-w-full bg-white">
            <thead>
                <tr>
                    <th class="py-2">Name</th>
                    <th class="py-2">Email</th>
                    <th class="py-2">Role</th>
                    <th class="py-2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="user in users" :key="user.id" class="border-t">
                    <td class="py-2">{{ user.name }}</td>
                    <td class="py-2">{{ user.email }}</td>
                    <td class="py-2">{{ user.role }}</td>
                    <td class="py-2">
                        <Link class="text-blue-500 hover:text-blue-700" :href="route('admin.users.edit', user.id)">
                        Edit
                        </Link>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script setup>
import { Link } from '@inertiajs/vue3';

const props = defineProps({
    users: {
        type: Array,
        default: []
    }
})

</script>
