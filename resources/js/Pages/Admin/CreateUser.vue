<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';

const props = defineProps({
    dokumen: {
        type: Object,
        default: {
            id: '',
            nama_lengkap: '',
            alamat_ktp: '',
            alamat_lengkap: '',
            region_pribadi_id: '',
            region_tempat_lahir_id: '',
            nomor_telepon: '',
            nomor_handphone: '',
            email: '',
            kewarganegaraan: '',
            negara_wna: '',
            tanggal_lahir: '',
            tempat_lahir: '',
            jenis_kelamin: '',
            status_menikah: '',
            agama: '',
            status: '',
            nem: '',
        }
    },
    errors: Object
})

const form = useForm({
    name: props.dokumen.nama_lengkap,
    email: props.dokumen.email,
    password: props.dokumen.email,
    password_confirmation: props.dokumen.email,
    dokumen_id: props.dokumen.id
});

const submit = () => {
    Swal.fire({
        title: "Are you sure ?",
        text: "Pastikan data sesuai.",
        icon: "warning",
        showCancelButton: true,
        cancelButtonColor: "#3085d6",
        confirmButtonColor: "#d33",
        confirmButtonText: "Ya"
    }).then((result) => {
        if (result.isConfirmed) {
            form.post(route('register'), {
                onSuccess: () => {
                    Swal.fire({
                        title: "Berhasil !",
                        text: "Akun Berhasil Dibuat.",
                        icon: "success"
                    });
                },
                onError: () => {
                    for (const [key, message] of Object.entries(props.errors)) {
                        Swal.fire({
                            title: "Gagal!",
                            text: `Gagal: ${message}`,
                            icon: "error"
                        });
                    }
                },
                onFinish: () => form.reset('password', 'password_confirmation'),
            });
        }
    });

};
</script>

<template>
    <GuestLayout>

        <Head title="Register" />

        <form @submit.prevent="submit" autocomplete="off">
            <div>
                <InputLabel for="name" value="Name" />

                <TextInput id="name" type="text" class="mt-1 block w-full" v-model="form.name" :isReadonly="true"
                    required />

                <InputError class="mt-2" :message="form.errors.name" />
            </div>

            <div class="mt-4">
                <InputLabel for="email" value="Email" />

                <TextInput id="email" type="email" class="mt-1 block w-full" v-model="form.email" :isReadonly="true"
                    required />

                <InputError class="mt-2" :message="form.errors.email" />
            </div>

            <div class="mt-4">
                <InputLabel for="password" value="Password" />

                <TextInput id="password" type="password" class="mt-1 block w-full" v-model="form.password" required />

                <InputError class="mt-2" :message="form.errors.password" />
            </div>

            <div class="mt-4">
                <InputLabel for="password_confirmation" value="Confirm Password" />

                <TextInput id="password_confirmation" type="password" class="mt-1 block w-full"
                    v-model="form.password_confirmation" required />

                <InputError class="mt-2" :message="form.errors.password_confirmation" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <Link :href="route('login')"
                    class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">

                </Link>

                <PrimaryButton class="ms-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    Register
                </PrimaryButton>
            </div>
        </form>
    </GuestLayout>
</template>
