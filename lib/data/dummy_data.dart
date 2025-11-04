import 'package:flutter/material.dart';

import 'package:plants/models/category.dart';
import 'package:plants/models/plant.dart';

const availableCategories = [
  Category(id: 'c1', title: 'Sombra', color: Colors.purple),
  Category(id: 'c2', title: 'Meia Sombra', color: Colors.blue),
  Category(id: 'c3', title: 'Sol Pleno', color: Colors.red),
  Category(id: 'c4', title: 'Exóticas', color: Colors.pink),
  Category(id: 'c5', title: 'Desidratadas', color: Colors.teal),
  Category(id: 'c6', title: 'Flores', color: Colors.amber),
  Category(id: 'c7', title: 'Vasos', color: Colors.lightBlue),
  Category(id: 'c8', title: 'Cachepots', color: Colors.lightGreen),
  Category(id: 'c9', title: 'Insumos', color: Colors.brown),
  Category(
    id: 'c10',
    title: 'Frutíferas',
    color: Color.fromARGB(255, 150, 0, 20),
  ),
];

const dummyPlants = [
  Plant(
    id: 'p1',
    categories: ['c2', 'c3'],
    popularTitle: 'Euphorbia Hip Hop',
    botanicalTitle: 'Chamaesyce hypericifolia',
    otherTitle: [
      'Mosquitinho',
      'Falso-mosquitinho',
      'Mosquitinho-de-jardim',
      'Cabelo de velho',
      'Chupona',
      'Erva-golondrina',
      'Erva andorinha',
    ],
    potImageUrl:
        'https://superuniversodasplantas.com.br/wp-content/uploads/2024/04/Euphorbia-Diamond-Frost.jpg',
    landImageUrl:
        'https://www.jardineiro.net/wp-content/uploads/2025/07/euphorbia-hip-hop-euphorbia-hypericifolia-6.jpg',
    sizeInPot: '30 cm',
    sizeInLand: '60 cm',
    origin: [
      'América Central e Insular',
      'América do Norte',
      'América do Sul',
      'Antilhas',
      'Bolívia',
      'Brasil',
      'Colômbia',
      'Costa Rica',
      'Equador',
      'Estados Unidos',
      'México',
      'Panamá',
    ],
    light:
        'Desenvolve-se melhor em sol pleno (necessita de pelo menos 6 horas de sol por dia), mas tolera bem a meia-sombra.',
    watering: Watering.moderada,
    //     'Moderada. O ideal é regar quando o substrato estiver levemente seco entre as regas. O excesso de água é mais prejudicial do que a falta.',
    soil:
        'Prefere solos bem drenados e ricos em matéria orgânica. O bom dreno é crucial para evitar o apodrecimento das raízes.',
    climate:
        'Adapta-se bem a climas quentes, tropicais e subtropicais. Não tolera geadas severas.',
    pruning:
        'Aceita muito bem a poda, o que estimula a ramificação e mantém a planta compacta e mais bonita.',
    fertilizing:
        'Responde bem a fertilizantes, especialmente aqueles ricos em fósforo, durante o período de crescimento ativo (primavera e verão).',
    lifecycle: 'Anual, Perene',
    portugueseDescription: [
      'A Euphorbia Hip Hop (também conhecida pelo nome científico Euphorbia graminea ou, por vezes, Chamaesyce hypericifolia) é uma planta ornamental muito popular, apreciada por sua beleza delicada e facilidade de cultivo.',
      '🌟 Características Principais',
      'Aparência: É uma herbácea perene (geralmente cultivada como anual em muitos locais), muito ramificada, com porte compacto, atingindo cerca de 30 a 60 cm de altura.',
      'Flores: Produz uma floração abundante e contínua durante a maior parte do ano (especialmente nas estações mais quentes), com numerosas e pequenas flores brancas (na verdade, brácteas) que se assemelham a uma névoa, a "mosquitinho" (Gipsofila) ou "neve da montanha".',
      'Folhagem: As folhas são pequenas, finas, delicadas e de cor verde-clara.',
      'Seiva: Como outras espécies do gênero Euphorbia, possui uma seiva leitosa (látex) lactescente que é tóxica e pode ser irritante para a pele e mucosas. Recomenda-se manuseá-la com luvas.',
      '🏡 Cuidados e Cultivo',
      'Luminosidade: Desenvolve-se melhor em sol pleno (necessita de pelo menos 6 horas de sol por dia), mas tolera bem a meia-sombra.',
      'Solo: Prefere solos bem drenados e ricos em matéria orgânica. O bom dreno é crucial para evitar o apodrecimento das raízes.',
      'Rega: Moderada. O ideal é regar quando o substrato estiver levemente seco entre as regas. O excesso de água é mais prejudicial do que a falta.',
      'Clima: Adapta-se bem a climas quentes, tropicais e subtropicais. Não tolera geadas severas.',
      'Adubação: Responde bem a fertilizantes, especialmente aqueles ricos em fósforo, durante o período de crescimento ativo (primavera e verão).',
      'Poda: Aceita muito bem a poda, o que estimula a ramificação e mantém a planta compacta e mais bonita.',
      'Multiplicação: Facilmente propagada por sementes ou por estacas (ramos de ponta).',
      '🎨 Uso Paisagístico',
      'É altamente valorizada no paisagismo por sua leveza e pelo contraste que oferece.',
      'É excelente para cestos suspensos, vasos, jardineiras (onde suas bordas caem levemente) e para ser usada em canteiros ou maciços, criando um efeito de "cobertor de flores" ou de "névoa branca" no jardim.',
      'Devido às suas raízes superficiais, não compete por nutrientes com outras plantas, sendo ótima para composição em vasos mistos.',
    ],
    hasFruit: false,
    hasFlower: true,
    isPetFriendly: false,
    toxityDescription: [
      '⚠️ Atenção: Sim, a Euphorbia Hip Hop é considerada tóxica para animais de estimação, incluindo cães e gatos.',
      'Como membro da família Euphorbiaceae, o perigo principal reside na sua seiva leitosa (látex).',
      '🚫 Risco de Toxicidade para Pets',
      'Toxina: A seiva contém ésteres diterpênicos, que são substâncias irritantes.',
      'Via de Contato/Ingestão:',
      'Contato: A seiva, ao entrar em contato com a pele, olhos ou mucosas do animal, pode causar irritação, dermatite e erupções cutâneas. O contato com os olhos pode ser ainda mais grave, causando irritação acentuada e, em casos raros, problemas de visão.',
      'Ingestão: Se o animal ingerir a seiva ou qualquer parte da planta, a toxicidade pode causar:',
      'Vômitos',
      'Diarreia',
      'Desconforto gastrointestinal',
      'Irritação na boca e no trato gastrointestinal',
      'Anorexia (falta de apetite) e depressão',
      '🚨 Recomendações de Segurança',
      'Para garantir a segurança dos seus pets:',
      'Mantenha Fora do Alcance: Coloque a planta em locais onde cães e gatos não consigam alcançá-la, como em prateleiras altas, vasos suspensos ou áreas cercadas.',
      'Manuseio: Ao podar ou manusear a planta, use luvas e certifique-se de descartar os resíduos (folhas, galhos cortados) imediatamente para que os animais não tenham acesso à seiva que possa vazar.',
      'Monitoramento: Se você suspeitar que seu animal de estimação entrou em contato ou ingeriu a Euphorbia Hip Hop, procure atendimento veterinário imediato.',
    ],
    environment: Environment.sol,
    weeklyWaterFrequency: WeeklyWaterFrequency.tres,
  ),
  Plant(
    id: 'p2',
    categories: ['c1', 'c2'],
    popularTitle: 'Maranta Pavão',
    botanicalTitle: 'Calathea Makoyana',
    otherTitle: ['Goeppertia Makoyana', 'Janelas de Catedral'],
    potImageUrl:
        'https://images.tcdn.com.br/img/img_prod/762187/calateia_makoyana_16_1_20200413080356.jpg',
    landImageUrl:
        'https://www.jardimcor.com/wp-content/uploads/2013/11/Makoyana2-1000x684.jpg',
    sizeInPot: '30 cm',
    sizeInLand: '45 cm',
    origin: ['Estado do Espirito Santo', 'Leste do Brasil'],
    light:
        'Prefere luz indireta brilhante ou meia-sombra. A luz solar direta queima facilmente suas folhas.',
    watering: Watering.moderada,
    //     'O substrato deve ser mantido sempre úmido, mas nunca encharcado. Deixe a camada superior do solo secar levemente antes de regar novamente.',
    soil:
        'Precisa ser rico em matéria orgânica, bem aerado e com excelente drenagem para evitar o apodrecimento das raízes.',
    climate:
        'Gosta de calor. Deve ser protegida de correntes de ar frio e temperaturas abaixo de 15º Celsius',
    pruning:
        'Somente poda de limpeza. Remover partes mortas, danificadas ou feias para direcionar a energia da planta para o crescimento de novas e saudáveis folhas.',
    fertilizing:
        'Húmus de Minhoca, Bokashi, ou um bom composto orgânico misturado ao substrato. 💧 Fertilizantes Líquidos Balanceados: São a opção mais prática. Tipo: Utilize um NPK (Nitrogênio, Fósforo e Potássio) balanceado, como o NPK 10-10-10 (que serve para folhagens em geral). Dica Crucial: Sempre dilua o fertilizante líquido na metade da dose recomendada pelo fabricante. A Calathea é muito sensível, e usar a dose completa é o erro mais comum.',
    lifecycle: 'Anual, Perene',
    portugueseDescription: [
      'A Calathea Makoyana (popularmente conhecida como Maranta Pavão ou Peacock Plant) é uma planta tropical nativa das florestas úmidas do Brasil. É amplamente cultivada em ambientes internos por sua folhagem altamente decorativa.',
      '🌟 Características Principais',
      'Aparência: É uma planta perene de porte médio, atingindo geralmente entre 30 a 60 cm de altura.',
      'Folhagem Marcante: Suas folhas são finas, ovais e delicadas. O padrão é o que lhe confere o nome comum: desenhos em formato de elipse ou manchas de verde-escuro sobre um fundo verde-claro, que lembram as penas de um pavão.',
      'Verso Roxo: O verso das folhas (a parte de baixo) possui uma cor púrpura-escura ou bordô vibrante.',
      '"Planta que Reza": A Calathea Makoyana tem o hábito de fechar suas folhas, erguendo-as na vertical à noite, e abri-las novamente durante o dia.',
      'Toxicidade: É classificada como NÃO TÓXICA para cães e gatos, sendo uma excelente opção pet-friendly.',
    ],
    hasFruit: false,
    hasFlower: false,
    isPetFriendly: true,
    toxityDescription: [
      'É classificada como NÃO TÓXICA para cães e gatos, sendo uma excelente opção pet-friendly.',
    ],
    environment: Environment.meiasombra,
    weeklyWaterFrequency: WeeklyWaterFrequency.tres,
  ),
];
