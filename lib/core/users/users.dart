import 'package:ecpf/core/users/medication/randonize_medication.dart';

import 'models/users_model.dart';

class Users {
  final List<User> users = [
    User(
        name: 'João da Silva',
        document: '123.456.789-00',
        gender: 'Masculino',
        address: 'Rua dos Pássaros, 123',
        imageUrl: '',
        birthdate: DateTime(1985, 03, 15),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Maria Oliveira',
        document: '987.654.321-00',
        gender: 'Feminino',
        address: 'Avenida Brasil, 456',
        imageUrl: 'assets/images/user2.png',
        birthdate: DateTime(1992, 08, 28),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Carlos Santos',
        document: '456.789.123-00',
        gender: 'Masculino',
        address: 'Rua das Flores, 789',
        imageUrl: 'assets/images/user3.png',
        birthdate: DateTime(1978, 11, 05),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Ana Souza',
        document: '147.258.369-00',
        gender: 'Feminino',
        address: 'Rua do Sol, 321',
        imageUrl: 'assets/images/user4.png',
        birthdate: DateTime(1998, 05, 12),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Pedro Gomes',
        document: '258.369.147-00',
        gender: 'Masculino',
        address: 'Avenida Central, 654',
        imageUrl: 'assets/images/user5.png',
        birthdate: DateTime(1989, 01, 20),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Beatriz Costa',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Liberdade, 987',
        imageUrl: 'assets/images/user6.png',
        birthdate: DateTime(2002, 09, 03),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Luiz Fernandes',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua das Palmeiras, 147',
        imageUrl: 'assets/images/user7.png',
        birthdate: DateTime(1982, 07, 18),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Laura Alves',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida dos Pinheiros, 258',
        imageUrl: 'assets/images/user8.png',
        birthdate: DateTime(1995, 12, 24),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Gustavo Pereira',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua da Paz, 369',
        imageUrl: 'assets/images/user9.png',
        birthdate: DateTime(1990, 04, 08),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Alice Rodrigues',
        document: '456.789.123-00',
        gender: 'Feminino',
        address: 'Rua da Alegria, 147',
        imageUrl: 'assets/images/user10.png',
        birthdate: DateTime(2001, 02, 16),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Rafael Lima',
        document: '147.258.369-00',
        gender: 'Masculino',
        address: 'Avenida do Mar, 258',
        imageUrl: 'assets/images/user11.png',
        birthdate: DateTime(1988, 06, 01),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Sofia Silva',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Esperança, 369',
        imageUrl: 'assets/images/user12.png',
        birthdate: DateTime(1999, 10, 29),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Arthur Santos',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua dos Sonhos, 147',
        imageUrl: 'assets/images/user13.png',
        birthdate: DateTime(1983, 09, 14),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Isabela Oliveira',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida do Rio, 258',
        imageUrl: 'assets/images/user14.png',
        birthdate: DateTime(2000, 03, 07),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Lucas Costa',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua do Sol Nascente, 369',
        imageUrl: 'assets/images/user15.png',
        birthdate: DateTime(1994, 05, 02),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'João da Silva',
        document: '123.456.789-00',
        gender: 'Masculino',
        address: 'Rua dos Pássaros, 123',
        imageUrl: '',
        birthdate: DateTime(1985, 03, 15),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Maria Oliveira',
        document: '987.654.321-00',
        gender: 'Feminino',
        address: 'Avenida Brasil, 456',
        imageUrl: 'assets/images/user2.png',
        birthdate: DateTime(1992, 08, 28),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Carlos Santos',
        document: '456.789.123-00',
        gender: 'Masculino',
        address: 'Rua das Flores, 789',
        imageUrl: 'assets/images/user3.png',
        birthdate: DateTime(1978, 11, 05),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Ana Souza',
        document: '147.258.369-00',
        gender: 'Feminino',
        address: 'Rua do Sol, 321',
        imageUrl: 'assets/images/user4.png',
        birthdate: DateTime(1998, 05, 12),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Pedro Gomes',
        document: '258.369.147-00',
        gender: 'Masculino',
        address: 'Avenida Central, 654',
        imageUrl: 'assets/images/user5.png',
        birthdate: DateTime(1989, 01, 20),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Beatriz Costa',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Liberdade, 987',
        imageUrl: 'assets/images/user6.png',
        birthdate: DateTime(2002, 09, 03),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Luiz Fernandes',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua das Palmeiras, 147',
        imageUrl: 'assets/images/user7.png',
        birthdate: DateTime(1982, 07, 18),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Laura Alves',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida dos Pinheiros, 258',
        imageUrl: 'assets/images/user8.png',
        birthdate: DateTime(1995, 12, 24),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Gustavo Pereira',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua da Paz, 369',
        imageUrl: 'assets/images/user9.png',
        birthdate: DateTime(1990, 04, 08),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Alice Rodrigues',
        document: '456.789.123-00',
        gender: 'Feminino',
        address: 'Rua da Alegria, 147',
        imageUrl: 'assets/images/user10.png',
        birthdate: DateTime(2001, 02, 16),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Rafael Lima',
        document: '147.258.369-00',
        gender: 'Masculino',
        address: 'Avenida do Mar, 258',
        imageUrl: 'assets/images/user11.png',
        birthdate: DateTime(1988, 06, 01),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Sofia Silva',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Esperança, 369',
        imageUrl: 'assets/images/user12.png',
        birthdate: DateTime(1999, 10, 29),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Arthur Santos',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua dos Sonhos, 147',
        imageUrl: 'assets/images/user13.png',
        birthdate: DateTime(1983, 09, 14),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Isabela Oliveira',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida do Rio, 258',
        imageUrl: 'assets/images/user14.png',
        birthdate: DateTime(2000, 03, 07),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Lucas Costa',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua do Sol Nascente, 369',
        imageUrl: 'assets/images/user15.png',
        birthdate: DateTime(1994, 05, 02),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'João da Silva',
        document: '123.456.789-00',
        gender: 'Masculino',
        address: 'Rua dos Pássaros, 123',
        imageUrl: '',
        birthdate: DateTime(1985, 03, 15),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Maria Oliveira',
        document: '987.654.321-00',
        gender: 'Feminino',
        address: 'Avenida Brasil, 456',
        imageUrl: 'assets/images/user2.png',
        birthdate: DateTime(1992, 08, 28),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Carlos Santos',
        document: '456.789.123-00',
        gender: 'Masculino',
        address: 'Rua das Flores, 789',
        imageUrl: 'assets/images/user3.png',
        birthdate: DateTime(1978, 11, 05),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Ana Souza',
        document: '147.258.369-00',
        gender: 'Feminino',
        address: 'Rua do Sol, 321',
        imageUrl: 'assets/images/user4.png',
        birthdate: DateTime(1998, 05, 12),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Pedro Gomes',
        document: '258.369.147-00',
        gender: 'Masculino',
        address: 'Avenida Central, 654',
        imageUrl: 'assets/images/user5.png',
        birthdate: DateTime(1989, 01, 20),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Beatriz Costa',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Liberdade, 987',
        imageUrl: 'assets/images/user6.png',
        birthdate: DateTime(2002, 09, 03),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Luiz Fernandes',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua das Palmeiras, 147',
        imageUrl: 'assets/images/user7.png',
        birthdate: DateTime(1982, 07, 18),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Laura Alves',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida dos Pinheiros, 258',
        imageUrl: 'assets/images/user8.png',
        birthdate: DateTime(1995, 12, 24),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Gustavo Pereira',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua da Paz, 369',
        imageUrl: 'assets/images/user9.png',
        birthdate: DateTime(1990, 04, 08),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Alice Rodrigues',
        document: '456.789.123-00',
        gender: 'Feminino',
        address: 'Rua da Alegria, 147',
        imageUrl: 'assets/images/user10.png',
        birthdate: DateTime(2001, 02, 16),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Rafael Lima',
        document: '147.258.369-00',
        gender: 'Masculino',
        address: 'Avenida do Mar, 258',
        imageUrl: 'assets/images/user11.png',
        birthdate: DateTime(1988, 06, 01),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Sofia Silva',
        document: '789.123.456-00',
        gender: 'Feminino',
        address: 'Rua da Esperança, 369',
        imageUrl: 'assets/images/user12.png',
        birthdate: DateTime(1999, 10, 29),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Arthur Santos',
        document: '369.147.258-00',
        gender: 'Masculino',
        address: 'Rua dos Sonhos, 147',
        imageUrl: 'assets/images/user13.png',
        birthdate: DateTime(1983, 09, 14),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Isabela Oliveira',
        document: '123.456.789-00',
        gender: 'Feminino',
        address: 'Avenida do Rio, 258',
        imageUrl: 'assets/images/user14.png',
        birthdate: DateTime(2000, 03, 07),
        medication: RandonizeMedication().getRandomMedication()),
    User(
        name: 'Lucas Costa',
        document: '987.654.321-00',
        gender: 'Masculino',
        address: 'Rua do Sol Nascente, 369',
        imageUrl: 'assets/images/user15.png',
        birthdate: DateTime(1994, 05, 02),
        medication: RandonizeMedication().getRandomMedication()),
  ];
}
