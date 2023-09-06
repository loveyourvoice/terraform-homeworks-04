# Задание 1
Чтобы не заниматься копипастом немного подправил просто папку с первой демонстрацией.
![Img](https://i.imgur.com/C4lfDh2.png)
# Задание 2
## Задание 2.2
![Img](https://i.imgur.com/3gT0r6R.png)
## Задание 2.4 и 2.5
![Img](https://i.imgur.com/3gT0r6R.png)
## Задание 2.6
Документация лежит в папке my-module.

# Задание 3
## Задание 3.1
```module.test-vm.data.yandex_compute_image.my_image
module.test-vm.yandex_compute_instance.vm[0]
module.vpc_dev.yandex_vpc_network.module_network
module.vpc_dev.yandex_vpc_subnet.module_subnet```

## Задание 3.2
```terraform state rm module.vpc_dev
Removed module.vpc_dev.yandex_vpc_network.module_network
Removed module.vpc_dev.yandex_vpc_subnet.module_subnet
Successfully removed 2 resource instance(s).```

## Задание 3.3
```terraform state rm module.test-vm
Removed module.test-vm.data.yandex_compute_image.my_image
Removed module.test-vm.yandex_compute_instance.vm[0]
Successfully removed 2 resource instance(s).```

## Задание 3.4
```terraform plan
module.test-vm.data.yandex_compute_image.my_image: Reading...
module.vpc_dev.yandex_vpc_network.module_network: Refreshing state... [id=enpj8f87kie0v6v3ktls]
module.test-vm.data.yandex_compute_image.my_image: Read complete after 1s [id=fd81n0sfjm6d5nq6l05g]
module.vpc_dev.yandex_vpc_subnet.module_subnet: Refreshing state... [id=e9bhiffv78465epqtmnq]
module.test-vm.yandex_compute_instance.vm[0]: Refreshing state... [id=fhm7pvrmn0b0v5kb0hd2]

No changes. Your infrastructure matches the configuration.```