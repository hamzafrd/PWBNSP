<template>
    <div class="p-6 bg-white shadow rounded-lg">
        <h1 class="text-2xl font-bold mb-4">Edit User Role</h1>
        <form @submit.prevent="updateUser" class="space-y-4">
            <div>
                <label for="role" class="block text-sm font-medium text-gray-700">Role:</label>
                <select v-model="form.role" id="role"
                    class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            <button type="submit" class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700">
                Update
            </button>
        </form>
    </div>
</template>

<script setup>
import { useForm } from '@inertiajs/vue3';


const props = defineProps({
    user: {
        type: Object,
        default: {}
    },
})

const form = useForm({
    role: props.user.role
})

const updateUser = () => {
    form.put(route('admin.users.update', props.user.id))
}
</script>
