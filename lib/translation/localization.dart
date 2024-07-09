import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'eye_in_the_sky': 'Eye in the Sky',
      'start': 'START',
      'by': 'By Lucas G. Reinert',
      'welcome': 'Welcome to Solar Warden',
      'personalObservatory': 'Your personal observatory!',
      'menuLabel': 'Below you will find information that will help you understand the data presented by this tool:',
      'solarFlares': 'Solar Flares',
      'whatAreSolarFlares': 'What are Solar Flares?',
      'understandDates': 'Understand the dates',
      'typesOfClasses': 'What are the types of classes of these events?',
      'activeRegions': 'What are the active regions?',
      'nears': 'NEOs',
      'whatAreNEOs': 'What are NEOs?',
      'approachDates': 'Understand the approach dates',
      'diameter': 'Understand more about the diameter of objects',
      'relativeSpeed': 'Understand more about relative speed',
      'proximityDistances': 'Understand proximity distances',
      'orbitingBody': 'What is the orbiting body?',
      'observeNow': 'Observe now!',
      'closePopup': 'Close',
      'whatAreSolarFlaresTextPart1': 'Solar flares are sudden eruptions of electromagnetic radiation from the Sun\'s surface. These events occur when the energy stored in magnetic fields, usually above sunspots, is suddenly released.\n\n',
      'whatAreSolarFlaresTextPart2': 'Impacts on Daily Life:\n\n',
      'whatAreSolarFlaresTextPart3': '1. Communication Disruptions: ',
      'whatAreSolarFlaresTextPart4': 'Solar flares can cause interference in high-frequency radio communications and satellite communications.\n',
      'whatAreSolarFlaresTextPart5': '2. Geomagnetic Storms: ',
      'whatAreSolarFlaresTextPart6': 'The release of energetic particles can trigger geomagnetic storms that affect power grids and navigation systems.\n',
      'whatAreSolarFlaresTextPart7': '3. Radiation: ',
      'whatAreSolarFlaresTextPart8': 'Radiation from solar flares can pose a risk to astronauts and passengers on high-altitude flights.\n',
      'whatAreSolarFlaresTextPart9': '4. Auroras: ',
      'whatAreSolarFlaresTextPart10': 'Intense solar flares can result in spectacular auroras visible at lower latitudes than usual.\n',
      'understandDatesTextPart1': 'The start date of a solar flare indicates when the event begins, the peak date represents the point of maximum intensity, and the end date shows when the event has concluded.\n\n',
      'understandDatesTextPart2': '1. Start Date: ',
      'understandDatesTextPart3': 'The moment when the solar flare activity begins.\n',
      'understandDatesTextPart4': '2. Peak Date: ',
      'understandDatesTextPart5': 'The point of maximum intensity of the solar flare.\n',
      'understandDatesTextPart6': '3. End Date: ',
      'understandDatesTextPart7': 'The moment when the solar flare activity concludes.\n',
      'whatIsActiveRegionTextPart1': 'An active region on the Sun is an area with an especially strong and complex magnetic field. These regions are often associated with sunspots, solar flares, and coronal mass ejections.\n\n',
      'whatIsActiveRegionTextPart2': 'Features of Active Regions:\n\n',
      'whatIsActiveRegionTextPart3': '1. Sunspots: ',
      'whatIsActiveRegionTextPart4': 'Sunspots are dark areas on the Sun\'s surface that are cooler than surrounding areas and are indicators of magnetic activity.\n',
      'whatIsActiveRegionTextPart5': '2. Solar Flares: ',
      'whatIsActiveRegionTextPart6': 'These are sudden eruptions of energy caused by tangling, crossing, or reorganizing of magnetic field lines near sunspots.\n',
      'whatIsActiveRegionTextPart7': '3. Coronal Mass Ejections (CMEs): ',
      'whatIsActiveRegionTextPart8': 'CMEs are large expulsions of plasma and magnetic field from the Sun\'s corona. They often follow solar flares and can cause geomagnetic storms on Earth.\n',
      'whatIsActiveRegionTextPart9': '4. Magnetic Field Complexity: ',
      'whatIsActiveRegionTextPart10': 'Active regions are characterized by complex magnetic field structures that can store and release vast amounts of energy.\n',
      'whatIsClassTypes': 'What is Class Types?',
      'whatIsClassTypesTextPart1': 'Solar flares are classified based on their X-ray brightness in the wavelength range 1 to 8 Angstroms. The classes are A, B, C, M, and X, with each class having a tenfold increase in energy output.\n\n',
      'whatIsClassTypesTextPart2': 'Classes of Solar Flares:\n\n',
      'whatIsClassTypesTextPart3': '1. Class A: ',
      'whatIsClassTypesTextPart4': 'These are the smallest flares, barely detectable above background radiation levels.\n',
      'whatIsClassTypesTextPart5': '2. Class B: ',
      'whatIsClassTypesTextPart6': 'These are small flares, with few noticeable effects on Earth.\n',
      'whatIsClassTypesTextPart7': '3. Class C: ',
      'whatIsClassTypesTextPart8': 'These are moderate flares, with minor effects on Earth, such as slight interruptions in satellite communications.\n',
      'whatIsClassTypesTextPart9': '4. Class M: ',
      'whatIsClassTypesTextPart10': 'These are large flares, capable of causing brief radio blackouts at the Earth\'s poles and minor radiation storms that might endanger astronauts.\n',
      'whatIsClassTypesTextPart11': '5. Class X: ',
      'whatIsClassTypesTextPart12': 'These are the largest flares, capable of causing planet-wide radio blackouts and long-lasting radiation storms.\n',
      'scaleExplanation': 'In our reports, we display the scales as follows:',
      'scaleExplanationDetail': 'Being:\n\nR1 = No risk\nR2 = Moderate risk\nR3 = Concerning risk\nR4 = High risk\nR5 = Maximum alert',
      'whatIsNeoTextPart1': 'A Near-Earth Object (NEO) is any small Solar System body whose orbit brings it into proximity with Earth. These objects include asteroids and comets that could potentially collide with Earth.\n\n',
      'whatIsNeoTextPart2': 'Categories of NEOs:\n\n',
      'whatIsNeoTextPart3': '1. Near-Earth Asteroids (NEAs): ',
      'whatIsNeoTextPart4': 'These are asteroids that have orbits that bring them close to Earth.\n',
      'whatIsNeoTextPart5': '2. Near-Earth Comets (NECs): ',
      'whatIsNeoTextPart6': 'These are comets with orbits that come close to Earth. They are less common than NEAs.\n',
      'whatIsNeoTextPart7': '3. Potentially Hazardous Objects (PHOs): ',
      'whatIsNeoTextPart8': 'These are NEOs that pose a significant risk of impacting Earth due to their size and proximity to our planet.\n',
      'whatIsMissDistanceTextPart1': 'Miss distance is a measure of the closest distance that a Near-Earth Object (NEO) will approach Earth. It is a crucial metric for assessing the potential hazard of an NEO.\n\n',
      'whatIsMissDistanceTextPart2': 'Units of Measurement:\n\n',
      'whatIsMissDistanceTextPart3': '1. Astronomical Units (AU): ',
      'whatIsMissDistanceTextPart4': '1 AU is the average distance between the Earth and the Sun, approximately 149.6 million kilometers.\n',
      'whatIsMissDistanceTextPart5': '2. Lunar Distances (LD): ',
      'whatIsMissDistanceTextPart6': '1 LD is the average distance from the Earth to the Moon, approximately 384,400 kilometers.\n',
      'whatIsMissDistanceTextPart7': '3. Kilometers (km): ',
      'whatIsMissDistanceTextPart8': 'Miss distance can also be measured in kilometers for more precision.\n\n',
      'whatIsMissDistanceTextPart9': 'Significance of Miss Distance:\n\n',
      'whatIsMissDistanceTextPart10': 'A smaller miss distance indicates a higher risk of impact. Therefore, monitoring the miss distance of NEOs is essential for planetary defense.\n',
      'aboutVelocityTextPart1': 'The velocity of a Near-Earth Object (NEO) is a critical parameter for understanding its potential impact. It is typically measured in kilometers per hour (km/h).\n\n',
      'aboutVelocityTextPart2': 'Understanding Velocity:\n\n',
      'aboutVelocityTextPart3': '1. Relative Velocity: ',
      'aboutVelocityTextPart4': 'This is the speed of the NEO relative to Earth as it passes by.\n',
      'aboutVelocityTextPart5': '2. High Velocity: ',
      'aboutVelocityTextPart6': 'NEOs with high velocities can cause more significant damage if they impact Earth due to the greater energy released upon impact.\n',
      'aboutVelocityTextPart7': '3. Low Velocity: ',
      'aboutVelocityTextPart8': 'NEOs with lower velocities may cause less damage, but they are still dangerous and need to be monitored closely.\n\n',
      'aboutVelocityTextPart9': 'Importance of Monitoring Velocity:\n\n',
      'aboutVelocityTextPart10': 'By understanding the velocity of NEOs, scientists can better predict their paths and potential impact effects, improving planetary defense strategies.\n',
      'whatIsOrbitingBodyTextPart1': 'An orbiting body refers to any celestial object that is in orbit around another object. In the context of Near-Earth Objects (NEOs), the primary orbiting body of interest is the Earth.\n\n',
      'whatIsOrbitingBodyTextPart2': 'Types of Orbiting Bodies:\n\n',
      'whatIsOrbitingBodyTextPart3': '1. Natural Satellites: ',
      'whatIsOrbitingBodyTextPart4': 'These include moons, like Earth\'s Moon, that orbit planets.\n',
      'whatIsOrbitingBodyTextPart5': '2. Artificial Satellites: ',
      'whatIsOrbitingBodyTextPart6': 'These are man-made objects placed into orbit, such as the International Space Station (ISS).\n',
      'whatIsOrbitingBodyTextPart7': '3. Planets: ',
      'whatIsOrbitingBodyTextPart8': 'Planets, including Earth, orbit around the Sun.\n\n',
      'whatIsOrbitingBodyTextPart9': 'Significance of Orbiting Bodies:\n\n',
      'whatIsOrbitingBodyTextPart10': 'Understanding the orbiting bodies helps in predicting the paths of NEOs and assessing potential collision risks with Earth or other celestial objects.\n',
      'aboutDiameterTextPart1': 'The diameter of a Near-Earth Object (NEO) is a crucial parameter for assessing its potential impact. It is typically measured in meters (m).\n\n',
      'aboutDiameterTextPart2': 'Understanding Diameter:\n\n',
      'aboutDiameterTextPart3': '1. Size Matters: ',
      'aboutDiameterTextPart4': 'Larger NEOs have the potential to cause more significant damage due to the greater mass and energy involved in an impact.\n',
      'aboutDiameterTextPart5': '2. Detection Challenges: ',
      'aboutDiameterTextPart6': 'Smaller NEOs are harder to detect and track but can still pose a threat if they enter Earth\'s atmosphere.\n',
      'aboutDiameterTextPart7': '3. Impact Assessment: ',
      'aboutDiameterTextPart8': 'Knowing the diameter helps scientists estimate the potential impact effects, including crater size and energy release.\n\n',
      'aboutDiameterTextPart9': 'Significance of Diameter Measurement:\n\n',
      'aboutDiameterTextPart10': 'By measuring the diameter of NEOs, scientists can better predict their behavior and potential impact, enhancing planetary defense strategies.\n',
      'aboutCloseApproachDateTextPart1': 'The close approach date of a Near-Earth Object (NEO) is the date on which the object will come closest to Earth. This information is crucial for assessing potential impact risks and preparing any necessary defensive measures.\n\n',
      'aboutCloseApproachDateTextPart2': 'Notable Close Approach:\n\n',
      'aboutCloseApproachDateTextPart3': 'Asteroid Apophis: ',
      'aboutCloseApproachDateTextPart4': 'Apophis is a well-known NEO that will have a close approach to Earth on April 13, 2029. During this approach, Apophis will come within 31,000 kilometers of Earth, which is closer than the distance of geostationary satellites.\n\n',
      'aboutCloseApproachDateTextPart5': 'Significance of Apophis\' Close Approach:\n\n',
      'aboutCloseApproachDateTextPart6': 'The 2029 approach of Apophis will be a unique opportunity for scientists to study this asteroid up close, providing valuable data to improve our understanding of NEOs and their potential threats.\n',
      'potentiallyHazardousNEOs': 'Potentially Hazardous NEOs',
      'selectPeriod': 'Select a period to view the data',
      'noEvents': 'No events in the selected period...',
      'estimatedDiameter': 'Estimated Diameter:',
      'min': 'Min',
      'max': 'Max',
      'closeApproachDate': 'Close Approach Date:',
      'relativeVelocity': 'Relative Velocity:',
      'missDistance': 'Miss Distance:',
      'orbiting_card': 'Orbiting Body:',
      "classType": "Class Type",
      "beginTime": "Begin Time",
      "peakTime": "Peak Time",
      "endTime": "End Time",
      "location": "Location",
      "aboutCloseApproachDate": "Understand the approach dates"
    },
    'pt': {
      'eye_in_the_sky': 'De Olho no Céu',
      'start': 'INICIAR',
      'by': 'Por Lucas G. Reinert',
      'welcome': 'Bem-Vindo ao Solar Warden',
      'personalObservatory': 'Seu observatório pessoal!',
      'menuLabel': 'Abaixo você encontrará informações que lhe ajudarão a entender os dados apresentados por esta ferramenta:',
      'solarFlares': 'Flares Solares',
      'whatAreSolarFlares': 'O que são Flares Solares?',
      'understandDates': 'Entenda as datas',
      'typesOfClasses': 'Quais são os tipos de classes destes eventos?',
      'activeRegions': 'O que são as regiões ativas?',
      'nears': 'NEOs',
      'whatAreNEOs': 'O que são NEOs?',
      'approachDates': 'Entenda as datas de aproximação',
      'diameter': 'Entenda mais sobre o diâmetro dos objetos',
      'relativeSpeed': 'Entenda mais sobre a velocidade relativa',
      'proximityDistances': 'Entenda as distâncias de proximidade',
      'orbitingBody': 'O que é o Corpo em Órbita?',
      'observeNow': 'Observe agora!',
      'closePopup': 'Fechar',
      'whatAreSolarFlaresTextPart1': 'Flares solares são erupções repentinas de radiação eletromagnética da superfície do Sol. Esses eventos ocorrem quando a energia armazenada em campos magnéticos, geralmente acima de manchas solares, é liberada subitamente.\n\n',
      'whatAreSolarFlaresTextPart2': 'Impactos no Dia a Dia:\n\n',
      'whatAreSolarFlaresTextPart3': '1. Disrupções em Comunicações: ',
      'whatAreSolarFlaresTextPart4': 'Flares solares podem causar interferências nas comunicações por rádio de alta frequência e nas comunicações por satélite.\n',
      'whatAreSolarFlaresTextPart5': '2. Tempestades Geomagnéticas: ',
      'whatAreSolarFlaresTextPart6': 'A liberação de partículas energéticas pode provocar tempestades geomagnéticas que afetam redes elétricas e sistemas de navegação.\n',
      'whatAreSolarFlaresTextPart7': '3. Radiação: ',
      'whatAreSolarFlaresTextPart8': 'A radiação dos flares solares pode representar um risco para astronautas e passageiros de voos em altitudes elevadas.\n',
      'whatAreSolarFlaresTextPart9': '4. Auroras: ',
      'whatAreSolarFlaresTextPart10': 'Flares solares intensos podem resultar em auroras espetaculares visíveis em latitudes mais baixas do que o normal.\n',
      'understandDatesTextPart1': 'A data de início de uma tempestade solar indica quando o evento começa, a data de pico representa o ponto de intensidade máxima e a data de término mostra quando o evento foi concluído.\n\n',
      'understandDatesTextPart2': '1. Data de Início: ',
      'understandDatesTextPart3': 'O momento em que a atividade da tempestade solar começa.\n',
      'understandDatesTextPart4': '2. Data de Pico: ',
      'understandDatesTextPart5': 'O ponto de intensidade máxima da tempestade solar.\n',
      'understandDatesTextPart6': '3. Data de Término: ',
      'understandDatesTextPart7': 'O momento em que a atividade da tempestade solar é concluída.\n',
      'whatIsActiveRegionTextPart1': 'Uma região ativa no Sol é uma área com um campo magnético especialmente forte e complexo. Essas regiões estão frequentemente associadas a manchas solares, flares solares e ejeções de massa coronal.\n\n',
      'whatIsActiveRegionTextPart2': 'Características das Regiões Ativas:\n\n',
      'whatIsActiveRegionTextPart3': '1. Manchas Solares: ',
      'whatIsActiveRegionTextPart4': 'Manchas solares são áreas escuras na superfície do Sol que são mais frias do que as áreas circundantes e indicam atividade magnética.\n',
      'whatIsActiveRegionTextPart5': '2. Flares Solares: ',
      'whatIsActiveRegionTextPart6': 'São erupções súbitas de energia causadas pelo emaranhamento, cruzamento ou reorganização das linhas do campo magnético perto das manchas solares.\n',
      'whatIsActiveRegionTextPart7': '3. Ejeções de Massa Coronal (CMEs): ',
      'whatIsActiveRegionTextPart8': 'CMEs são grandes expulsões de plasma e campo magnético da coroa solar. Elas frequentemente seguem os flares solares e podem causar tempestades geomagnéticas na Terra.\n',
      'whatIsActiveRegionTextPart9': '4. Complexidade do Campo Magnético: ',
      'whatIsActiveRegionTextPart10': 'As regiões ativas são caracterizadas por estruturas complexas de campo magnético que podem armazenar e liberar grandes quantidades de energia.\n',
      'whatIsClassTypes': 'Quais são os tipos de classes destes eventos?',
      'whatIsClassTypesTextPart1': 'Os flares solares são classificados com base em seu brilho de raios X no intervalo de comprimento de onda de 1 a 8 Angstroms. As classes são A, B, C, M e X, com cada classe tendo um aumento de dez vezes na produção de energia.\n\n',
      'whatIsClassTypesTextPart2': 'Classes de Flares Solares:\n\n',
      'whatIsClassTypesTextPart3': '1. Classe A: ',
      'whatIsClassTypesTextPart4': 'Esses são os menores flares, quase indetectáveis acima dos níveis de radiação de fundo.\n',
      'whatIsClassTypesTextPart5': '2. Classe B: ',
      'whatIsClassTypesTextPart6': 'Esses são pequenos flares, com poucos efeitos perceptíveis na Terra.\n',
      'whatIsClassTypesTextPart7': '3. Classe C: ',
      'whatIsClassTypesTextPart8': 'Esses são flares moderados, com efeitos menores na Terra, como leves interrupções nas comunicações via satélite.\n',
      'whatIsClassTypesTextPart9': '4. Classe M: ',
      'whatIsClassTypesTextPart10': 'Esses são grandes flares, capazes de causar breves apagões de rádio nos polos da Terra e tempestades de radiação menores que podem colocar astronautas em risco.\n',
      'whatIsClassTypesTextPart11': '5. Classe X: ',
      'whatIsClassTypesTextPart12': 'Esses são os maiores flares, capazes de causar apagões de rádio em todo o planeta e tempestades de radiação duradouras.\n',
      'scaleExplanation': 'Em nossos relatórios, exibimos as escalas da seguinte forma:',
      'scaleExplanationDetail': 'Sendo:\n\nR1 = Sem riscos\nR2 = Risco moderado\nR3 = Risco preocupante\nR4 = Risco alto\nR5 = Alerta máximo',
      'whatIsNeoTextPart1': 'Um Objeto Próximo à Terra (NEO) é qualquer pequeno corpo do Sistema Solar cuja órbita o traz para perto da Terra. Esses objetos incluem asteroides e cometas que poderiam potencialmente colidir com a Terra.\n\n',
      'whatIsNeoTextPart2': 'Categorias de NEOs:\n\n',
      'whatIsNeoTextPart3': '1. Asteroides Próximos à Terra (NEAs): ',
      'whatIsNeoTextPart4': 'Estes são asteroides cujas órbitas os trazem perto da Terra.\n',
      'whatIsNeoTextPart5': '2. Cometas Próximos à Terra (NECs): ',
      'whatIsNeoTextPart6': 'Estes são cometas com órbitas que se aproximam da Terra. Eles são menos comuns que os NEAs.\n',
      'whatIsNeoTextPart7': '3. Objetos Potencialmente Perigosos (PHOs): ',
      'whatIsNeoTextPart8': 'Estes são NEOs que apresentam um risco significativo de impacto com a Terra devido ao seu tamanho e proximidade com o nosso planeta.\n',
      'whatIsMissDistanceTextPart1': 'A distância de passagem é uma medida da distância mais próxima que um Objeto Próximo à Terra (NEO) se aproximará da Terra. É uma métrica crucial para avaliar o risco potencial de um NEO.\n\n',
      'whatIsMissDistanceTextPart2': 'Unidades de Medida:\n\n',
      'whatIsMissDistanceTextPart3': '1. Unidades Astronômicas (UA): ',
      'whatIsMissDistanceTextPart4': '1 UA é a distância média entre a Terra e o Sol, aproximadamente 149,6 milhões de quilômetros.\n',
      'whatIsMissDistanceTextPart5': '2. Distâncias Lunares (DL): ',
      'whatIsMissDistanceTextPart6': '1 DL é a distância média da Terra à Lua, aproximadamente 384.400 quilômetros.\n',
      'whatIsMissDistanceTextPart7': '3. Quilômetros (km): ',
      'whatIsMissDistanceTextPart8': 'A distância de passagem também pode ser medida em quilômetros para mais precisão.\n\n',
      'whatIsMissDistanceTextPart9': 'Significado da Distância de Passagem:\n\n',
      'whatIsMissDistanceTextPart10': 'Uma distância de passagem menor indica um risco maior de impacto. Portanto, monitorar a distância de passagem dos NEOs é essencial para a defesa planetária.\n',
      'aboutVelocityTextPart1': 'A velocidade de um Objeto Próximo à Terra (NEO) é um parâmetro crítico para entender seu impacto potencial. Geralmente é medida em quilômetros por hora (km/h).\n\n',
      'aboutVelocityTextPart2': 'Entendendo a Velocidade:\n\n',
      'aboutVelocityTextPart3': '1. Velocidade Relativa: ',
      'aboutVelocityTextPart4': 'Esta é a velocidade do NEO em relação à Terra à medida que passa por aqui.\n',
      'aboutVelocityTextPart5': '2. Alta Velocidade: ',
      'aboutVelocityTextPart6': 'NEOs com altas velocidades podem causar danos mais significativos se impactarem a Terra devido à maior energia liberada no impacto.\n',
      'aboutVelocityTextPart7': '3. Baixa Velocidade: ',
      'aboutVelocityTextPart8': 'NEOs com velocidades mais baixas podem causar menos danos, mas ainda são perigosos e precisam ser monitorados de perto.\n\n',
      'aboutVelocityTextPart9': 'Importância de Monitorar a Velocidade:\n\n',
      'aboutVelocityTextPart10': 'Ao entender a velocidade dos NEOs, os cientistas podem prever melhor suas trajetórias e os efeitos potenciais do impacto, melhorando as estratégias de defesa planetária.\n',
      'whatIsOrbitingBodyTextPart1': 'Um corpo em órbita refere-se a qualquer objeto celestial que está em órbita ao redor de outro objeto. No contexto dos Objetos Próximos à Terra (NEOs), o principal corpo em órbita de interesse é a Terra.\n\n',
      'whatIsOrbitingBodyTextPart2': 'Tipos de Corpos em Órbita:\n\n',
      'whatIsOrbitingBodyTextPart3': '1. Satélites Naturais: ',
      'whatIsOrbitingBodyTextPart4': 'Estes incluem luas, como a Lua da Terra, que orbitam planetas.\n',
      'whatIsOrbitingBodyTextPart5': '2. Satélites Artificiais: ',
      'whatIsOrbitingBodyTextPart6': 'Estes são objetos feitos pelo homem colocados em órbita, como a Estação Espacial Internacional (ISS).\n',
      'whatIsOrbitingBodyTextPart7': '3. Planetas: ',
      'whatIsOrbitingBodyTextPart8': 'Os planetas, incluindo a Terra, orbitam ao redor do Sol.\n\n',
      'whatIsOrbitingBodyTextPart9': 'Significado dos Corpos em Órbita:\n\n',
      'whatIsOrbitingBodyTextPart10': 'Entender os corpos em órbita ajuda a prever as trajetórias dos NEOs e a avaliar os riscos potenciais de colisão com a Terra ou outros objetos celestiais.\n',
      'aboutDiameterTextPart1': 'O diâmetro de um Objeto Próximo à Terra (NEO) é um parâmetro crucial para avaliar seu impacto potencial. Geralmente é medido em metros (m).\n\n',
      'aboutDiameterTextPart2': 'Entendendo o Diâmetro:\n\n',
      'aboutDiameterTextPart3': '1. O Tamanho Importa: ',
      'aboutDiameterTextPart4': 'NEOs maiores têm o potencial de causar danos mais significativos devido à maior massa e energia envolvida em um impacto.\n',
      'aboutDiameterTextPart5': '2. Desafios de Detecção: ',
      'aboutDiameterTextPart6': 'NEOs menores são mais difíceis de detectar e rastrear, mas ainda podem representar uma ameaça se entrarem na atmosfera da Terra.\n',
      'aboutDiameterTextPart7': '3. Avaliação de Impacto: ',
      'aboutDiameterTextPart8': 'Conhecer o diâmetro ajuda os cientistas a estimar os efeitos potenciais do impacto, incluindo o tamanho da cratera e a liberação de energia.\n\n',
      'aboutDiameterTextPart9': 'Significado da Medição do Diâmetro:\n\n',
      'aboutDiameterTextPart10': 'Medindo o diâmetro dos NEOs, os cientistas podem prever melhor seu comportamento e impacto potencial, aprimorando as estratégias de defesa planetária.\n',
      'aboutCloseApproachDateTextPart1': 'A data de aproximação de um Objeto Próximo à Terra (NEO) é a data em que o objeto estará mais próximo da Terra. Esta informação é crucial para avaliar os riscos potenciais de impacto e preparar quaisquer medidas defensivas necessárias.\n\n',
      'aboutCloseApproachDateTextPart2': 'Aproximação Notável:\n\n',
      'aboutCloseApproachDateTextPart3': 'Asteroide Apophis: ',
      'aboutCloseApproachDateTextPart4': 'Apophis é um NEO bem conhecido que terá uma aproximação próxima da Terra em 13 de abril de 2029. Durante essa aproximação, Apophis chegará a 31.000 quilômetros da Terra, que é mais próximo do que a distância dos satélites geoestacionários.\n\n',
      'aboutCloseApproachDateTextPart5': 'Significado da Aproximação de Apophis:\n\n',
      'aboutCloseApproachDateTextPart6': 'A aproximação de Apophis em 2029 será uma oportunidade única para os cientistas estudarem este asteroide de perto, fornecendo dados valiosos para melhorar nossa compreensão dos NEOs e suas ameaças potenciais.\n',
      'potentiallyHazardousNEOs': 'NEOs Potencialmente Perigosos',
      'selectPeriod': 'Selecione um período para visualizar os dados',
      'noEvents': 'Nenhum evento no período escolhido...',
      'estimatedDiameter': 'Diâmetro Estimado:',
      'min': 'Mín',
      'max': 'Máx',
      'closeApproachDate': 'Data de Aproximação:',
      'relativeVelocity': 'Velocidade Relativa:',
      'missDistance': 'Distância de Passagem:',
      'orbiting_card': 'Corpo Orbitante:',
      "classType": "Tipo de Classe",
      "beginTime": "Hora de Início",
      "peakTime": "Hora de Pico",
      "endTime": "Hora de Fim",
      "location": "Localização",
      "aboutCloseApproachDate": "Entenda as datas de aproximação"
    },
  };

  String get localeName => locale.languageCode;

  String? get eyeInTheSky {
    return _localizedValues[locale.languageCode]!['eye_in_the_sky'];
  }

  String? get start {
    return _localizedValues[locale.languageCode]!['start'];
  }

  String? get by {
    return _localizedValues[locale.languageCode]!['by'];
  }

  String? get welcome {
    return _localizedValues[locale.languageCode]!['welcome'];
  }

  String? get personalObservatory {
    return _localizedValues[locale.languageCode]!['personalObservatory'];
  }

  String? get menuLabel {
    return _localizedValues[locale.languageCode]!['menuLabel'];
  }

  String? get solarFlares {
    return _localizedValues[locale.languageCode]!['solarFlares'];
  }

  String? get whatAreSolarFlares {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlares'];
  }

  String? get understandDates {
    return _localizedValues[locale.languageCode]!['understandDates'];
  }

  String? get typesOfClasses {
    return _localizedValues[locale.languageCode]!['typesOfClasses'];
  }

  String? get activeRegions {
    return _localizedValues[locale.languageCode]!['activeRegions'];
  }

  String? get nears {
    return _localizedValues[locale.languageCode]!['nears'];
  }

  String? get whatAreNEOs {
    return _localizedValues[locale.languageCode]!['whatAreNEOs'];
  }

  String? get approachDates {
    return _localizedValues[locale.languageCode]!['approachDates'];
  }

  String? get diameter {
    return _localizedValues[locale.languageCode]!['diameter'];
  }

  String? get relativeSpeed {
    return _localizedValues[locale.languageCode]!['relativeSpeed'];
  }

  String? get proximityDistances {
    return _localizedValues[locale.languageCode]!['proximityDistances'];
  }

  String? get orbitingBody {
    return _localizedValues[locale.languageCode]!['orbitingBody'];
  }

  String? get observeNow {
    return _localizedValues[locale.languageCode]!['observeNow'];
  }

  String? get closePopup {
    return _localizedValues[locale.languageCode]!['closePopup'];
  }

  String? get whatAreSolarFlaresTextPart1 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart1'];
  }

  String? get whatAreSolarFlaresTextPart2 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart2'];
  }

  String? get whatAreSolarFlaresTextPart3 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart3'];
  }

  String? get whatAreSolarFlaresTextPart4 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart4'];
  }

  String? get whatAreSolarFlaresTextPart5 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart5'];
  }

  String? get whatAreSolarFlaresTextPart6 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart6'];
  }

  String? get whatAreSolarFlaresTextPart7 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart7'];
  }

  String? get whatAreSolarFlaresTextPart8 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart8'];
  }

  String? get whatAreSolarFlaresTextPart9 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart9'];
  }

  String? get whatAreSolarFlaresTextPart10 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart10'];
  }

  String? get understandDatesTextPart1 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart1'];
  }

  String? get understandDatesTextPart2 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart2'];
  }

  String? get understandDatesTextPart3 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart3'];
  }

  String? get understandDatesTextPart4 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart4'];
  }

  String? get understandDatesTextPart5 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart5'];
  }

  String? get understandDatesTextPart6 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart6'];
  }

  String? get understandDatesTextPart7 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart7'];
  }

  String? get whatIsActiveRegionTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart1'];
  }

  String? get whatIsActiveRegionTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart2'];
  }

  String? get whatIsActiveRegionTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart3'];
  }

  String? get whatIsActiveRegionTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart4'];
  }

  String? get whatIsActiveRegionTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart5'];
  }

  String? get whatIsActiveRegionTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart6'];
  }

  String? get whatIsActiveRegionTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart7'];
  }

  String? get whatIsActiveRegionTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart8'];
  }

  String? get whatIsActiveRegionTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart9'];
  }

  String? get whatIsActiveRegionTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart10'];
  }

  String? get whatIsClassTypes {
    return _localizedValues[locale.languageCode]!['whatIsClassTypes'];
  }

  String? get whatIsClassTypesTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart1'];
  }

  String? get whatIsClassTypesTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart2'];
  }

  String? get whatIsClassTypesTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart3'];
  }

  String? get whatIsClassTypesTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart4'];
  }

  String? get whatIsClassTypesTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart5'];
  }

  String? get whatIsClassTypesTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart6'];
  }

  String? get whatIsClassTypesTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart7'];
  }

  String? get whatIsClassTypesTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart8'];
  }

  String? get whatIsClassTypesTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart9'];
  }

  String? get whatIsClassTypesTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart10'];
  }

  String? get whatIsClassTypesTextPart11 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart11'];
  }

  String? get whatIsClassTypesTextPart12 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart12'];
  }

  String? get scaleExplanation {
    return _localizedValues[locale.languageCode]!['scaleExplanation'];
  }

  String? get scaleExplanationDetail {
    return _localizedValues[locale.languageCode]!['scaleExplanationDetail'];
  }

  String? get whatIsNeoTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart1'];
  }

  String? get whatIsNeoTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart2'];
  }

  String? get whatIsNeoTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart3'];
  }

  String? get whatIsNeoTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart4'];
  }

  String? get whatIsNeoTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart5'];
  }

  String? get whatIsNeoTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart6'];
  }

  String? get whatIsNeoTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart7'];
  }

  String? get whatIsNeoTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsNeoTextPart8'];
  }

  String? get whatIsMissDistanceTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart1'];
  }

  String? get whatIsMissDistanceTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart2'];
  }

  String? get whatIsMissDistanceTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart3'];
  }

  String? get whatIsMissDistanceTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart4'];
  }

  String? get whatIsMissDistanceTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart5'];
  }

  String? get whatIsMissDistanceTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart6'];
  }

  String? get whatIsMissDistanceTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart7'];
  }

  String? get whatIsMissDistanceTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart8'];
  }

  String? get whatIsMissDistanceTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart9'];
  }

  String? get whatIsMissDistanceTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsMissDistanceTextPart10'];
  }

  String? get aboutVelocityTextPart1 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart1'];
  }

  String? get aboutVelocityTextPart2 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart2'];
  }

  String? get aboutVelocityTextPart3 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart3'];
  }

  String? get aboutVelocityTextPart4 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart4'];
  }

  String? get aboutVelocityTextPart5 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart5'];
  }

  String? get aboutVelocityTextPart6 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart6'];
  }

  String? get aboutVelocityTextPart7 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart7'];
  }

  String? get aboutVelocityTextPart8 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart8'];
  }

  String? get aboutVelocityTextPart9 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart9'];
  }

  String? get aboutVelocityTextPart10 {
    return _localizedValues[locale.languageCode]!['aboutVelocityTextPart10'];
  }

  String? get whatIsOrbitingBodyTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart1'];
  }

  String? get whatIsOrbitingBodyTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart2'];
  }

  String? get whatIsOrbitingBodyTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart3'];
  }

  String? get whatIsOrbitingBodyTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart4'];
  }

  String? get whatIsOrbitingBodyTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart5'];
  }

  String? get whatIsOrbitingBodyTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart6'];
  }

  String? get whatIsOrbitingBodyTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart7'];
  }

  String? get whatIsOrbitingBodyTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart8'];
  }

  String? get whatIsOrbitingBodyTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart9'];
  }

  String? get whatIsOrbitingBodyTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsOrbitingBodyTextPart10'];
  }

  String? get aboutDiameterTextPart1 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart1'];
  }

  String? get aboutDiameterTextPart2 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart2'];
  }

  String? get aboutDiameterTextPart3 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart3'];
  }

  String? get aboutDiameterTextPart4 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart4'];
  }

  String? get aboutDiameterTextPart5 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart5'];
  }

  String? get aboutDiameterTextPart6 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart6'];
  }

  String? get aboutDiameterTextPart7 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart7'];
  }

  String? get aboutDiameterTextPart8 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart8'];
  }

  String? get aboutDiameterTextPart9 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart9'];
  }

  String? get aboutDiameterTextPart10 {
    return _localizedValues[locale.languageCode]!['aboutDiameterTextPart10'];
  }

  String? get aboutCloseApproachDateTextPart1 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart1'];
  }

  String? get aboutCloseApproachDateTextPart2 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart2'];
  }

  String? get aboutCloseApproachDateTextPart3 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart3'];
  }

  String? get aboutCloseApproachDateTextPart4 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart4'];
  }

  String? get aboutCloseApproachDateTextPart5 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart5'];
  }

  String? get aboutCloseApproachDateTextPart6 {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDateTextPart6'];
  }

  String? get potentiallyHazardousNEOs {
    return _localizedValues[locale.languageCode]!['potentiallyHazardousNEOs'];
  }

  String? get selectPeriod {
    return _localizedValues[locale.languageCode]!['selectPeriod'];
  }

  String? get noEvents {
    return _localizedValues[locale.languageCode]!['noEvents'];
  }

  String? get estimatedDiameter {
    return _localizedValues[locale.languageCode]!['estimatedDiameter'];
  }

  String? get min {
    return _localizedValues[locale.languageCode]!['min'];
  }

  String? get max {
    return _localizedValues[locale.languageCode]!['max'];
  }

  String? get closeApproachDate {
    return _localizedValues[locale.languageCode]!['closeApproachDate'];
  }

  String? get relativeVelocity {
    return _localizedValues[locale.languageCode]!['relativeVelocity'];
  }

  String? get missDistance {
    return _localizedValues[locale.languageCode]!['missDistance'];
  }

  String? get orbiting_card {
    return _localizedValues[locale.languageCode]!['orbiting_card'];
  }

  String? get classType {
    return _localizedValues[locale.languageCode]!['classType'];
  }

  String? get beginTime {
    return _localizedValues[locale.languageCode]!['beginTime'];
  }

  String? get peakTime {
    return _localizedValues[locale.languageCode]!['peakTime'];
  }

  String? get endTime {
    return _localizedValues[locale.languageCode]!['endTime'];
  }

  String? get location {
    return _localizedValues[locale.languageCode]!['location'];
  }

  String? get aboutCloseApproachDate {
    return _localizedValues[locale.languageCode]!['aboutCloseApproachDate'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}