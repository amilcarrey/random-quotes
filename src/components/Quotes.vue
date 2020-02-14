<template>
  <div class="quote">
    <hr />
    <p
      class="has-text-black-ter has-text-centered has-text-weight-bold is-italic principal"
    >
      {{ formatedQuote }}
    </p>
    <hr />
    <div></div>
    <p class="sign has-text-weight-semibold">
      <a
        v-bind:href="selectedData.Source"
        target="_blank"
        rel="noopener noreferrer"
      >
        {{ selectedData.Artículo }}
      </a>
    </p>
    <div class="buttons">
      <img
        src="../assets/reload.svg"
        v-on:click="reloadSelectedData()"
        alt="Reload quote"
      />

      <img
        src="../assets/twitter.svg"
        alt="Share on twitter"
        v-on:click="shareOnTwitter()"
      />
    </div>
  </div>
</template>

<script>
export default {
  name: "Quotes",
  data() {
    return {
      selectedData: {},
      quotes: [
        {
          Quote:
            "Cada cosa “de la que no se habla” es una gran oportunidad de mejora",
          Artículo:
            "S04E20 ¿Nadie va a hablar de sus hemorroides? (Incluye gratis archivo “Años sin Trabajar.xls”)",
          Source:
            "https://www.linkedin.com/pulse/s04e20-nadie-va-hablar-de-sus-hemorroides-incluye-gratis-leo-piccioli",
          Seq: 1
        },
        {
          Quote:
            "No se trata de hablar de todo sin tamiz: hacerlo sin cuidado puede ser peor que callar",
          Artículo:
            "S04E20 ¿Nadie va a hablar de sus hemorroides? (Incluye gratis archivo “Años sin Trabajar.xls”)",
          Source:
            "https://www.linkedin.com/pulse/s04e20-nadie-va-hablar-de-sus-hemorroides-incluye-gratis-leo-piccioli",
          Seq: 2
        },
        {
          Quote:
            "Hagamos que la salida de las empresas sea menos traumática para poder hablar de ello",
          Artículo:
            "S04E20 ¿Nadie va a hablar de sus hemorroides? (Incluye gratis archivo “Años sin Trabajar.xls”)",
          Source:
            "https://www.linkedin.com/pulse/s04e20-nadie-va-hablar-de-sus-hemorroides-incluye-gratis-leo-piccioli",
          Seq: 3
        },
        {
          Quote:
            "Salir al mercado te permite elegir con más fuerza lo que tenés",
          Artículo:
            "S04E20 ¿Nadie va a hablar de sus hemorroides? (Incluye gratis archivo “Años sin Trabajar.xls”)",
          Source:
            "https://www.linkedin.com/pulse/s04e20-nadie-va-hablar-de-sus-hemorroides-incluye-gratis-leo-piccioli",
          Seq: 4
        },
        {
          Quote: "El entusiasmo es un motor fundamental en el trabajo",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 5
        },
        {
          Quote:
            "Incluso en las empresas, muchas decisiones surgen simplemente del entusiasmo de sus líderes",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 6
        },
        {
          Quote:
            "Las evaluaciones de desempeño siempre tienen un factor importante subjetivo",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 7
        },
        {
          Quote:
            "¿Hoguera para los que traducen títulos de libros y películas?",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 8
        },
        {
          Quote: "Las decisiones que tomás son tuyas, no vienen de los libros.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 9
        },
        {
          Quote: "Sé tu propio gurú.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 10
        },
        {
          Quote:
            "El foco en corregir errores corrige otra cosa también: la innovación.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 11
        },
        {
          Quote: "Dejemos entrar un poco de error en nuestras vidas.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 12
        },
        {
          Quote:
            "Despedir debería ser más fácil - o contratar más difícil - para que las empresas sean más sanas",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 13
        },
        {
          Quote:
            "Podemos tratar de objetivar opiniones, pero aceptemos un grado de subjetividad",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 14
        },
        {
          Quote:
            "Por suerte, hay errores en las formas de evaluar el desempeño. Tal vez eso deje pasar la genialidad.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 15
        },
        {
          Quote:
            "Una evaluación de desempeño es lo mismo que un estudio de percepción de marca.",
          Artículo:
            "S04E19 Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? (Remake)",
          Source:
            "https://www.linkedin.com/pulse/s04e19-por-el-amor-de-dios-alguien-puede-hacer-mi-remake-leo-piccioli",
          Seq: 16
        },
        {
          Quote:
            "El alineamiento con los valores es una cuestión de grados, no un blanco o negro",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 17
        },
        {
          Quote:
            "Entender nuestros procesos de decisión nos permite mejorarlos",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 18
        },
        {
          Quote:
            "Por ahora las máquinas pueden “decidir” basadas en la historia -a los humanos nos queda la creatividad pura",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 19
        },
        {
          Quote:
            "Tu competidor es quien elijas - ergo, podés no tener ninguno si elegís bien",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 20
        },
        {
          Quote:
            "En liderazgo, las reacciones automáticas suelen ser negativas",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 21
        },
        {
          Quote: "Si sos líder y estás hablando, preguntate ¿para qué?",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 22
        },
        {
          Quote: "El liderado aprende a su manera - no hay forma de forzarlo",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 23
        },
        {
          Quote:
            "El buen líder avanza convencido, pero periódicamente desafía esas convicciones - con lo que cada vez avanza más sólido",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 24
        },
        {
          Quote: "Son los liderados los que eligen y sostienen al líder",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 25
        },
        {
          Quote:
            "Tendemos a confiar más en los introvertidos que en los extrovertidos",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 26
        },
        {
          Quote:
            "Dadme un proceso de devolución y te diré cuan cortoplacista es una empresa",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 27
        },
        {
          Quote: "Cuando un líder echa una persona, está cuidando al equipo",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 28
        },
        {
          Quote: "El líder no trabaja más que a través de sus liderados",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 29
        },
        {
          Quote:
            "En una organización sana, si el líder no aparece por unos días todo sigue funcionando igual",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 30
        },
        {
          Quote:
            "El trabajo del líder es sacar de la zona de confort al equipo",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 31
        },
        {
          Quote: "Los expertos son/somos inseguros",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 32
        },
        {
          Quote: "Un autor es un líder mientras tenga al menos un lector",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 33
        },
        {
          Quote:
            "La eterna lucha no es entre el Bien y el Mal, sino entre el largo plazo y el corto plazo",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 34
        },
        {
          Quote:
            "Hablale a tu equipo como ellos te entiendan - no como quieras que te hablen",
          Artículo:
            "S04E18 ¡Llame ya! ¡Interfaz empática para líderes con 50% off! (incluye panfleto “Las únicas cuatro tareas del Líder del siglo XXI”)",
          Source:
            "https://www.linkedin.com/pulse/s04e18-llame-ya-interfaz-emp%C3%A1tica-para-l%C3%ADderes-con-50-leo-piccioli",
          Seq: 35
        },
        {
          Quote: "Romper las etiquetas genera oportunidades de negocios",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 36
        },
        {
          Quote:
            "La migración y mezcla es un cambio inevitable, que genera un mundo mejor, pero tiene resistencias puntuales. Como la rueda. Y todos los cambios tecnológicos.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 37
        },
        {
          Quote:
            "Si las cosas son blanco o negro, uno gana y el otro pierde. Si nos damos cuenta de que son infinitos grises, todos podemos ganar.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 38
        },
        {
          Quote:
            "La clave de una buena negociación es conocer los objetivos de todos los involucrados -y es muy fácil preguntarlos.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 39
        },
        {
          Quote: "Divide y conquistarás. Suma y crecerás.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 40
        },
        {
          Quote:
            "Una guerra de precios elimina la innovación y, eventualmente, a varios competidores.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 41
        },
        {
          Quote:
            "En mercados nuevos, todos los competidores deben ser evangelizadores.",
          Artículo: "S04E17 Solo el coraje convertirá el bizcochuelo en torta",
          Source:
            "https://www.linkedin.com/pulse/s04e17-solo-el-coraje-convertir%C3%A1-bizcochuelo-en-torta-leo-piccioli",
          Seq: 42
        },
        {
          Quote: "Las decisiones son decisiones hasta que las cambiás",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 43
        },
        {
          Quote:
            "Las cosas que nadie hace se dividen en dos: las que “siempre hicimos así”, que debemos testear, y las que pueden matarte si las cambiás",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 44
        },
        {
          Quote:
            "¿Qué hacemos, usamos la palabra “nunca” con más cuidado o le cambiamos el significado a “voy a tratar de no hacerlo”?",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 45
        },
        {
          Quote:
            "Todos aprendemos mucho en la vida, pero viviendo; es muy difícil aprender de la vida de otros y más que compremos un libro sobre eso",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 46
        },
        {
          Quote: "Todo fracaso te hace más fuerte",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 47
        },
        {
          Quote:
            "Antes de ofrecer tu idea brillante a otro, pensá o averiguá qué es importante para él",
          Artículo:
            "S04E16 ¿O era plantar un árbol, tener un hijo, escribir un libro y otro y otro y...?",
          Source:
            "https://www.linkedin.com/pulse/s04e16-o-era-plantar-un-%C3%A1rbol-tener-hijo-escribir-libro-leo-piccioli",
          Seq: 48
        },
        {
          Quote: "Nuestro instinto nos lleva a buscar culpables",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 49
        },
        {
          Quote:
            "Si tu propuesta no funciona, llega un punto en el que tenés que cambiar la propuesta",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 50
        },
        {
          Quote:
            "Hacer algo mal tiene, a la larga, más beneficios que por precaución no hacer",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 51
        },
        {
          Quote:
            "Hay dos tipos de actitudes: la que, frente a una restricción, te hace aceptarla y la que hace que te entusiasmes con desafiarla",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 52
        },
        {
          Quote:
            "Tip de humildad: antes de dar una charla calculá cuánto tiempo en total te está dando la audiencia",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 53
        },
        {
          Quote: "Si ya intentaste todo, intentá algo más",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 54
        },
        {
          Quote: "Algo normal en un momento puede ser muy raro en otro",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 55
        },
        {
          Quote: "La vida es un juego desafiante y divertido",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 56
        },
        {
          Quote: "Visión mata billetera",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 57
        },
        {
          Quote:
            "El éxito de un consejo o recomendación depende de la idea, del emisor y del momento/la oportunidad",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 58
        },
        {
          Quote: "¿Por quién vas al escenario, por vos o por el público?",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 59
        },
        {
          Quote: "A veces corremos, pensando que así llegaremos más rápido",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 60
        },
        {
          Quote:
            "Cada medio de comunicación tiene un estilo diferente y debemos aprovecharlo",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 61
        },
        {
          Quote:
            "Para ser un buen orador debemos ser capaces de jugar con volumen, tono, velocidad e intensidad",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 62
        },
        {
          Quote:
            "¿Y si la oportunidad de salir de un pozo es la semilla de la felicidad?",
          Artículo:
            "S04E15 Tener un hijo, plantar un árbol, escribir un libro, dar una charla TEDx",
          Source:
            "https://www.linkedin.com/pulse/s04e15-tener-un-hijo-plantar-%C3%A1rbol-escribir-libro-dar-leo-piccioli",
          Seq: 63
        },
        {
          Quote: "Las rutinas nos dan seguridad",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 64
        },
        {
          Quote:
            "El mejor marketing viral es el que te infecta sin que lo notes",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 65
        },
        {
          Quote:
            "Eso de lo que se quejan tus clientes, aunque no los escuches, es la semilla de la disrupción",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 66
        },
        {
          Quote: "Viralizado no implica verdadero - tal vez verosímil",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 67
        },
        {
          Quote:
            "Todos los estudios que tienen que ver con la conducta humana deben ser revisados periódicamente",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 68
        },
        {
          Quote:
            "Desconfiá de quien te garantice resultados cuando nadie lo hace",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 69
        },
        {
          Quote: "Para viralizar, hay que innovar en al menos una cosa",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 70
        },
        {
          Quote:
            "Un virus no cambia el mundo, ni tu negocio, aunque puede ayudar",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 71
        },
        {
          Quote: "La viralización social no se planea, sucede",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 72
        },
        {
          Quote:
            "Proveé productos de una calidad tal que te den orgullo aunque no se viralicen",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 73
        },
        {
          Quote:
            "La forma en que una empresa reacciona a un error es la clave para validar su foco en el cliente",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 74
        },
        {
          Quote:
            "No hace falta que te esfuerces por vincular los distintos temas que te interesan, tu cerebro lo hará por vos",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 75
        },
        {
          Quote:
            "Si le pagás a tu cliente para que te recomiende, estás afirmando que tu producto no se recomienda solo",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 76
        },
        {
          Quote: "¿Son tus empleados tus clientes?",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 77
        },
        {
          Quote: "Si tus clientes son tus vendedores, ¿necesitás vendedores?",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 78
        },
        {
          Quote:
            "Quemar las naves fomenta la creatividad y el foco -y la desesperación, claro",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 79
        },
        {
          Quote:
            "Frente al cambio seguro, no hacer nada lleva a la isla del olvido",
          Artículo:
            "S04E13 Zombies, vendedores y virus: ¿cómo crecer en el siglo XXI?",
          Source:
            "https://www.linkedin.com/pulse/s04e13-zombies-vendedores-y-virus-c%C3%B3mo-crecer-en-el-siglo-piccioli",
          Seq: 80
        },
        {
          Quote: "Aceptar lo que no podés cambiar es parte de liderar",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 81
        },
        {
          Quote: "El “qué dirán” comienza por casa",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 82
        },
        {
          Quote:
            "No existe una fusión entre pares, siempre una empresa adquiere a otra",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 83
        },
        {
          Quote:
            "Predecir lo que tu jefe o cliente va a pedirte es como pararte donde la pelota va a estar, en lugar de perseguirla como un niño pequeño",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 84
        },
        {
          Quote: "Los CEOs también juegan",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 85
        },
        {
          Quote: "Un presupuesto aceptado es una promesa",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 86
        },
        {
          Quote: "Disciplina es posponer placer presente por placer futuro",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 87
        },
        {
          Quote: "Todo corto plazo es un largo plazo al que llegamos tarde",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 88
        },
        {
          Quote:
            "El metalenguaje de una organización parece gritar “nosotros sí somos diferentes”",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 89
        },
        {
          Quote: "Una promesa es completa si incluye qué hacer si no se cumple",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 90
        },
        {
          Quote:
            "La política en el proceso de presupuestación corporativo genera ciclos dañinos",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 91
        },
        {
          Quote:
            "Por default, sé humilde y asumí que alguien ya pensó tu idea brillante",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 92
        },
        {
          Quote: "Paciencia, una de las claves para que te entiendan",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 93
        },
        {
          Quote:
            "Las ideas más valiosas surgen cuando cruzamos campos de estudio",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 94
        },
        {
          Quote: "Optimizar todos los subsistemas suboptimiza el sistema",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 95
        },
        {
          Quote:
            "Aumentá las chances de ganar la carrera inventándote la propia",
          Artículo:
            "S04E12 CEO subterráneo o cómo liderar una subsidiaria exitosa",
          Source:
            "https://www.linkedin.com/pulse/s04e12-ceo-subterr%C3%A1neo-o-c%C3%B3mo-liderar-una-subsidiaria-leo-piccioli",
          Seq: 96
        },
        {
          Quote:
            "Cuando devolvamos las tareas repetitivas a las máquinas, dedicaremos aún más tiempo a soñar, imaginar y fantasear",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 97
        },
        {
          Quote:
            "Las etiquetas simplifican - tanto que nos perdemos la riqueza de las personas",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 98
        },
        {
          Quote:
            "Queremos ser parte de algo mayor - ergo, buscamos una etiqueta, porque “pertenecer tiene sus privilegios”",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 99
        },
        {
          Quote:
            "Al mismo tiempo que criticamos las etiquetas, buscamos pertenecer a grupos que nos permitan usar una",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 100
        },
        {
          Quote: "No dejemos de usar etiquetas, pero no dejemos que nos usen",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 101
        },
        {
          Quote:
            "Hay dos tipos de personas: las que dividen el mundo en dos y las que no",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 102
        },
        {
          Quote:
            "Acostumbrémonos a notar los hermosos tonos de gris que tiene la vida",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 103
        },
        {
          Quote:
            "Empezar una discusión con el objetivo de ganarla es garantía de perderla",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 104
        },
        {
          Quote: "Si te cuesta encontrar tus errores, es difícil que aprendas",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 105
        },
        {
          Quote:
            "Dejar una idea por otra nos suena tonto, por lo que necesitamos explicar las razones",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 106
        },
        {
          Quote:
            "Para convencer de algo a otro debemos ir con tanta humildad que podamos ser finalmente nosotros los convencidos.",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 107
        },
        {
          Quote:
            "Si en una conversación decís más “pero” que “y si”, estás destruyendo - no construyendo",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 108
        },
        {
          Quote: "Siempre podemos mejorar",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 109
        },
        {
          Quote:
            "Tomar decisiones no mejora tanto el mundo como preguntar con curiosidad",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 110
        },
        {
          Quote: "El futuro es un hermoso gris",
          Artículo: "S04E11 El personal trainer de la duda",
          Source:
            "https://www.linkedin.com/pulse/s04e11-el-personal-trainer-de-la-duda-leo-piccioli",
          Seq: 111
        },
        {
          Quote:
            "Todo gran salto para la humanidad deja heridos a muchos que no dieron ni un paso",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 112
        },
        {
          Quote: "Lo que tendemos a evitar es lo que más valor puede darnos",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 113
        },
        {
          Quote:
            "Hablar de lo malo cuando estamos bien, y de lo bueno cuando estamos mal",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 114
        },
        {
          Quote: "Todo éxito es un fracaso y todo fracaso es un éxito",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 115
        },
        {
          Quote: "Nuestro trabajo se puede resumir en “prometer” y “cumplir”",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 116
        },
        {
          Quote:
            "Todos mentimos y los que dicen que no lo hacen, mienten doble",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 117
        },
        {
          Quote: "Cuando una inversión está de moda, seguramente ya es tarde",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 118
        },
        {
          Quote:
            "Si algo es “terrible pero real”, podés elegir que sea una cosa u otra",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 119
        },
        {
          Quote: "La tecnología siempre triunfa",
          Artículo: "S04E10 El día en que a WeWork le llegó su Uber",
          Source:
            "https://www.linkedin.com/pulse/s04e10-el-d%C3%ADa-en-que-wework-le-lleg%C3%B3-su-uber-leo-piccioli",
          Seq: 120
        },
        {
          Quote: "Si te eligieron, ya no hay que demostrar nada",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 121
        },
        {
          Quote: "Un abono sin supervisión tiende a fallar",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 122
        },
        {
          Quote: "Un elefante se come de a pedacitos - un objetivo también",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 123
        },
        {
          Quote:
            "A veces, las ideas geniales tienen que descansar mucho para convertirse en realidad",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 124
        },
        {
          Quote:
            "Las varianzas son fuentes enormes de gastos para las empresas y su reducción, de oportunidades",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 125
        },
        {
          Quote:
            "Todo consumo predecible tiende a ser un modelo de suscripción",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 126
        },
        {
          Quote: "Cambiar el plazo de una relación genera oportunidades",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 127
        },
        {
          Quote:
            "Si hay un tema que te atrae mucho, es interesante entender por qué",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 128
        },
        {
          Quote: "El entusiasmo afecta nuestros sentidos",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 129
        },
        {
          Quote:
            "Cada cambio de proveedor es una oportunidad de mejorar y un riesgo de empeorar",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 130
        },
        {
          Quote:
            "Las tres peores adicciones son la heroína, los carbohidratos y el salario mensual",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 131
        },
        {
          Quote:
            "¿Debería haber programas de rehabilitación para adictos al salario y a los carbohidratos?",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 132
        },
        {
          Quote:
            "Al simplificar muchas decisiones periódicas en una sola podemos ser más felices",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 133
        },
        {
          Quote:
            "Mientras las empresas esperan más de sus empleados avalan que tengan un cuarto de su tiempo libre",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 134
        },
        {
          Quote: "Trabajaremos menos tiempo pero daremos más valor",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 135
        },
        {
          Quote:
            "Las suscripciones producen acostumbramiento: ambas partes deben revisarlas periódicamente",
          Artículo:
            "S04E09 ¿Qué tienen en común Netflix, tu sueldo y el gimnasio?",
          Source:
            "https://www.linkedin.com/pulse/s04e09-qu%C3%A9-tienen-en-com%C3%BAn-netflix-tu-sueldo-y-el-leo-piccioli",
          Seq: 136
        },
        {
          Quote: "Muchas veces es la zona de confort la que te mata",
          Artículo: "S04E08 Final Abierto",
          Source:
            "https://www.linkedin.com/pulse/s04e08-final-abierto-leo-piccioli",
          Seq: 137
        },
        {
          Quote:
            "El conocimiento es un oxímoron: cuánto más sabés, menos sabés",
          Artículo: "S04E08 Final Abierto",
          Source:
            "https://www.linkedin.com/pulse/s04e08-final-abierto-leo-piccioli",
          Seq: 138
        },
        {
          Quote: "Si no hay información, se inventa",
          Artículo: "S04E08 Final Abierto",
          Source:
            "https://www.linkedin.com/pulse/s04e08-final-abierto-leo-piccioli",
          Seq: 139
        },
        {
          Quote:
            "Proyectá tu futuro si no cambiara nada; si no te gusta, cambiá tu presente",
          Artículo: "S04E08 Final Abierto",
          Source:
            "https://www.linkedin.com/pulse/s04e08-final-abierto-leo-piccioli",
          Seq: 140
        },
        {
          Quote: "Todo queda registrado",
          Artículo: "S04E08 Final Abierto",
          Source:
            "https://www.linkedin.com/pulse/s04e08-final-abierto-leo-piccioli",
          Seq: 141
        },
        {
          Quote:
            "La misma opinión puede valer distinto dependiendo de quién la emita",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 142
        },
        {
          Quote: "Buscá los “no” cuando los “sí” vengan solos",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 143
        },
        {
          Quote:
            "La falta de honestidad dentro de una empresa puede destruirla",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 144
        },
        {
          Quote:
            "Globalizar una empresa requiere humildad para aceptar lo diferente y decisión para no negociar lo no negociable",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 145
        },
        {
          Quote:
            "¿Realmente creemos que, cuando alguien está preocupado, decirle “no te preocupes” mejora algo?",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 146
        },
        {
          Quote:
            "Sin darnos cuenta hacemos lo que no nos gustaría que nos hicieran; y, al hacerlo, lo generamos",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 147
        },
        {
          Quote:
            "Un coach puede ayudarnos a entender mejor cómo lo que hacemos nos ayuda, o no, a ser felices",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 148
        },
        {
          Quote: "La responsabilidad de liderar es del líder, y es indelegable",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 149
        },
        {
          Quote:
            "Cuando detectás una tendencia de cambio, es importante investigar su origen",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 150
        },
        {
          Quote: "Necesitamos mejorar nuestra interfaz humana",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 151
        },
        {
          Quote: "Todos somos Sócrates, Platón y Aristóteles",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 152
        },
        {
          Quote:
            "Las máquinas desnudan que todavía no estamos listos para ser humanos",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 153
        },
        {
          Quote: "Manual para ser feliz es un oxímoron",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 154
        },
        {
          Quote: "El psicólogo es a la TV de 1980 como el coach a Netflix",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 155
        },
        {
          Quote: "Oportunidad de negocios: ayudar a ser feliz a escala",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 156
        },
        {
          Quote: "Antes de especializarte en algo, aprendé a escribirlo.",
          Artículo:
            "S04E07 Couches odontológicos, ¿los curanderos del siglo XXI o sherpas para la transición hacia el transhumanismo?",
          Source:
            "https://www.linkedin.com/pulse/s04e07-couches-odontol%C3%B3gicos-los-curanderos-del-siglo-leo-piccioli",
          Seq: 157
        },
        {
          Quote: "De cuestionar lo que todos hacen nacen ideas geniales",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 158
        },
        {
          Quote: "Crecer tiene un precio que solemos olvidar",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 159
        },
        {
          Quote: "Emprendedor, no crezcas; es una trampa",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 160
        },
        {
          Quote: "Negociar precios es lo más cómodo; es para vagos",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 161
        },
        {
          Quote: "Confundimos “Venta” con “Misión”",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 162
        },
        {
          Quote:
            "Si damos dos objetivos, los humanos elegirán el más simple y, ante la duda, el que sea medible",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 163
        },
        {
          Quote: "La gente deduce tus objetivos y y tu visión de tus acciones",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 164
        },
        {
          Quote: "No hables de tus objetivos; sé tus objetivos",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 165
        },
        {
          Quote:
            "Mostrate proactivamente, aún introvertido, ya que si dejás que solo los demás hablen de vos estás corriendo muchos riesgos",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 166
        },
        {
          Quote: "Con el tiempo dejamos de ser expertos",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 167
        },
        {
          Quote:
            "Las cosas a las que decimos que “no” nos definen mejor que a las que decimos que “sí”",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 168
        },
        {
          Quote:
            "La paradoja del siglo XXI: las organizaciones quieren más y la gente que trabaja en ella se siente subutilizada",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 169
        },
        {
          Quote:
            "No queremos lograr un objetivo pequeño, queremos ser parte del grupo que persigue uno grande",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 170
        },
        {
          Quote:
            "Si no te dicen en qué tenés que mejorar, se lo están diciendo a otros",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 171
        },
        {
          Quote:
            "Pedir opinión tiene un precio: aceptar que deberemos decir que no",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 172
        },
        {
          Quote:
            "No hace falta que estemos de acuerdo, sí que persigamos el mismo objetivo alineados",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 173
        },
        {
          Quote: "El objetivo de una empresa, su Misión, es mejorar el mundo.",
          Artículo: "S04E06 Las macabras consecuencias del market share",
          Source:
            "https://www.linkedin.com/pulse/s04e06-las-macabras-consecuencias-del-market-share-leo-piccioli",
          Seq: 174
        },
        {
          Quote:
            "¿Tu empresa tiene los mismos valores y estándares de atención en cada punto de contacto?",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 175
        },
        {
          Quote:
            "Lo que las empresas hacen genera tanto ruido que no podemos escuchar lo que dicen. Y menos creerlo.",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 176
        },
        {
          Quote:
            "Es en las incoherencias entre acciones y valores donde un líder, tomando decisiones sobre unas u otros, lidera.",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 177
        },
        {
          Quote:
            "Dime a quién asciendes y te diré cuan exitosa será tu empresa",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 178
        },
        {
          Quote:
            "Las organizaciones que se preparan para los picos pierden eficiencia; las que se preparan para los valles pierden calidad.",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 179
        },
        {
          Quote:
            "Aplicar lo que aprendés como te lo enseñan es útil; aplicarlo en un lugar inesperado, hermoso",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 180
        },
        {
          Quote:
            "Terminamos enfocándonos en los objetivos medibles, desechando los más difíciles de evaluar",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 181
        },
        {
          Quote:
            "Para un experto en marketing digital, cada problema tiene como solución su certificación",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 182
        },
        {
          Quote:
            "El éxito extremo en una variable puede ser el fin de tu negocio",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 183
        },
        {
          Quote:
            "Tu objetivo dentro de un equipo no es tu puesto -es que el equipo logre su objetivo",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 184
        },
        {
          Quote:
            "Gerentes necios que exigís sin ver que luego te arrepentiráis",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 185
        },
        {
          Quote:
            "Si tus empleados no te dicen en qué tenés que mejorar, se lo están diciendo a otros",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 186
        },
        {
          Quote:
            "Todas las empresas son incoherentes -las mejores, cada vez menos",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 187
        },
        {
          Quote:
            "La respuesta es una receta: una pizca de hoy, para llegar al futuro, y ¡después todo el futuro que puedas!",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 188
        },
        {
          Quote: "Optimizar un subsistema suboptimiza el sistema",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 189
        },
        {
          Quote: "Equilibrio.",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 190
        },
        {
          Quote:
            "En todos los sistemas, sea una empresa o un organismo vivo, debemos crecer como en espiral: lo que más avanza arrastra al resto hacia al futuro, desarrollándose casi parejo",
          Artículo: "S04E05 Maldita meritocracia",
          Source:
            "https://www.linkedin.com/pulse/s04e05-maldita-meritocracia-leo-piccioli",
          Seq: 191
        },
        {
          Quote:
            "La misma idea puede ser genial o pésima dependiendo del momento",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 192
        },
        {
          Quote:
            "Si un proyecto se abandona, ¿tiene sentido presionar porque “las cosas se terminan”?",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 193
        },
        {
          Quote:
            "¿Por qué a veces sentimos que debemos endulzar nuestras palabras cuando nuestras acciones no son dulces?",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 194
        },
        {
          Quote: "Lo que sabemos define lo que vemos",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 195
        },
        {
          Quote:
            "Antes de acumular datos, compará el costo de hacerlo contra el potencial beneficio",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 196
        },
        {
          Quote:
            "Los controles en una empresa, al reducir la libertad, quitan felicidad",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 197
        },
        {
          Quote:
            "El líder del siglo XXI entiende que pedir ayuda es un símbolo de fortaleza y potencial",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 198
        },
        {
          Quote:
            "Tendemos a simplificar las decisiones de nuestros clientes y la variable más fácil, en la que recae “la culpa”, es el precio",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 199
        },
        {
          Quote:
            "Choferes necios que acusáis a Uber sin razón, sin ver que sois la ocasión de aquello que sufrís.",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 200
        },
        {
          Quote:
            "Los sindicatos, cámaras y otras organizaciones deberían mirar más al futuro que sus asociados. Igual que el Estado debería mirar más al largo plazo que sus ciudadanos.",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 201
        },
        {
          Quote:
            "El aprendizaje más interesante se da cuando se cruzan ideas en apariencia independientes",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 202
        },
        {
          Quote: "Las cosas que te cuestan son las que valen",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 203
        },
        {
          Quote: "Que algo sea posible no quiere decir que sea obligatorio",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 204
        },
        {
          Quote: "Todo lo repetitivo se va a automatizar.",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 205
        },
        {
          Quote:
            "No habrá más interacciones humanas rutinarias; cada una será diferente, especial, más valiosa",
          Artículo: "S04E04 El paraíso de los introvertidos",
          Source:
            "https://www.linkedin.com/pulse/s04e04-el-para%C3%ADso-de-los-introvertidos-leo-piccioli",
          Seq: 206
        },
        {
          Quote: "No hace falta discutir todo lo que no te gusta",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 207
        },
        {
          Quote:
            "Si no soportamos participar del consorcio de nuestro edificio por todos los egos involucrados en el color con el que pintar el ascensor, ¿por qué suponemos que cientos de políticos podrán ponerse de acuerdo en algo?",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 208
        },
        {
          Quote:
            "¿Por qué para cualquier trabajo nos entrevistan y hacen análisis psicofísicos, menos para representante político?",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 209
        },
        {
          Quote:
            "Los políticos nos llevan a sobreestimar lo que se puede hacer en un año (con sus promesas) y subestimar lo que se puede en veinte (si planeáramos).",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 210
        },
        {
          Quote:
            "Es paradójico: el foco en el corto plazo hace que discutamos todo el tiempo y no resolvamos nada. Enfocarnos en el largo resolverá parte del corto. Buscar las Indias te lleva a América.",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 211
        },
        {
          Quote:
            "Entendiendo que todos estamos de paso -personas, empresas, Estados, gobiernos-, vamos a poder tener un paso mucho más feliz.",
          Artículo: "S04E03 ¿Y si en el largo plazo estamos todos vivos?",
          Source:
            "https://www.linkedin.com/pulse/s04e03-y-si-en-el-largo-plazo-estamos-todos-vivos-leo-piccioli",
          Seq: 212
        },
        {
          Quote:
            "Si no llegaste hasta el gerente general con tu problema, no hiciste lo suficiente",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 213
        },
        {
          Quote: "No vendemos lo que vendemos",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 214
        },
        {
          Quote:
            "El vendedor es, hacia afuera, representante de la empresa, pero hacia dentro, del cliente",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 215
        },
        {
          Quote: "Toda excepción al proceso aumenta los costos",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 216
        },
        {
          Quote: "El Precio es una función del Valor percibido por el cliente",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 217
        },
        {
          Quote: "Costo y Precio no tienen ninguna relación",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 218
        },
        {
          Quote:
            "A veces, debemos cambiar porque hace demasiado tiempo que no lo hacemos",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 219
        },
        {
          Quote: "Cuanto menos gente tengas, más productivo serás",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 220
        },
        {
          Quote:
            "Si no explicamos algo, se asumirá que estamos ocultando lo peor posible",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 221
        },
        {
          Quote:
            "En una crisis, todos reaccionamos rápido y desordenado; el que reacciona diferente tiene más chances",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 222
        },
        {
          Quote: "A problemas extraordinarios, soluciones extraordinarias",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 223
        },
        {
          Quote: "Si estamos en crisis permanente, ¿estamos en crisis?",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 224
        },
        {
          Quote: "Todo problema es una oportunidad para mejorar",
          Artículo:
            "S04E02 Una hoja de papel, cinco presidentes y trece cuasimonedas",
          Source:
            "https://www.linkedin.com/pulse/s04e02-una-hoja-de-papel-cinco-presidentes-y-trece-leo-piccioli",
          Seq: 225
        },
        {
          Quote:
            "¿Es la tecnología la que mata negocios o que su servicio deja de ser aceptable?",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 226
        },
        {
          Quote:
            "Siempre hay un “pero”, pero cuando vemos el éxito de los demás no lo vemos",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 227
        },
        {
          Quote: "Las empresas dan ilusión de seguridad",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 228
        },
        {
          Quote:
            "A los cuarenta tenemos suficiente recorrido para poder hacer lo que no sabíamos que queríamos a los veinte",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 229
        },
        {
          Quote:
            "Una crisis es un momento de decisión - aunque suele generar parálisis",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 230
        },
        {
          Quote: "Las crisis ayuda a los medios a sobrevivir su propia crisis",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 231
        },
        {
          Quote:
            "Si creemos lo que vemos, y vemos básicamente los medios, creemos drama",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 232
        },
        {
          Quote:
            "Busquemos y celebremos las noticias positivas, porque las negativas se gritan solas",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 233
        },
        {
          Quote: "Vivimos en una zona de confort de contenido.",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 234
        },
        {
          Quote: "¿Y si aceptamos que las crisis nos dan felicidad?",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 235
        },
        {
          Quote:
            "Lo cómodo no siempre hace bien, lo que hace bien no siempre es cómodo",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 236
        },
        {
          Quote:
            "No es lo que tu país puede hacer por ti, ni lo que tú puedes hacer por tu país. ¡Déjate de quejar y haz algo cada día!",
          Artículo: "S04E01 Spring is coming?",
          Source:
            "https://www.linkedin.com/pulse/s04e01-spring-coming-leo-piccioli",
          Seq: 237
        },
        {
          Quote:
            "Líderes formados en el siglo XX tratando de liderar en el siglo XXI.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 238
        },
        {
          Quote:
            "Escoba nueva barre bien -hasta que se gasta y hay que cambiarla por otra.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 239
        },
        {
          Quote:
            "Todos tenemos las mismas 24 horas diarias y elegimos cómo usarlas -aunque no lo aceptemos.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 240
        },
        {
          Quote: "Si de verdad querés hacer algo, tenés que quemar las naves.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 241
        },
        {
          Quote: "No quemes las naves hasta no decidir quemar las naves.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 242
        },
        {
          Quote:
            "Hacer lo que los demás te dicen, cuando querés diferenciarte, es una contradicción.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 243
        },
        {
          Quote:
            "Cuando finalmente llegaste a la cima de ese Everest, ¿te quedaste ahí o volviste, compartiste las fotos en Instagram y empezaste a pensar un nuevo desafío?",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 244
        },
        {
          Quote:
            "Si creés que las cosas van a cambiar, ganale de mano al cambio. Cambiá.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 245
        },
        {
          Quote: "Vemos el mundo como somos, no como es.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 246
        },
        {
          Quote:
            "Achicá el mercado potencial hasta poder ser líder, después agrandalo.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 247
        },
        {
          Quote:
            "Creo que hay una forma fantástica para adelante, solo que no se cuál es.",
          Artículo:
            "Dejar en la cima o por qué dejo un puesto soñado en una compañía genial - una vez más",
          Source:
            "https://www.linkedin.com/pulse/dejar-en-la-cima-o-por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-una-genial-piccioli",
          Seq: 248
        },
        {
          Quote:
            "¿Y si mantuviéramos la sensación de “primer día” todos los días?",
          Artículo: "¡No me pongan Liquid Paper en la espalda! S03E38",
          Source:
            "https://www.linkedin.com/pulse/me-pongan-liquid-paper-en-la-espalda-s03e38-leo-piccioli",
          Seq: 249
        },
        {
          Quote:
            "Los Valores son un faro que nos guía, una herramienta para elegir el camino.",
          Artículo: "¡No me pongan Liquid Paper en la espalda! S03E38",
          Source:
            "https://www.linkedin.com/pulse/me-pongan-liquid-paper-en-la-espalda-s03e38-leo-piccioli",
          Seq: 250
        },
        {
          Quote:
            "¿La intuición será ese porcentaje de nuestro cerebro que creemos no usar percibiendo cosas que no logramos explicar?",
          Artículo: "¡No me pongan Liquid Paper en la espalda! S03E38",
          Source:
            "https://www.linkedin.com/pulse/me-pongan-liquid-paper-en-la-espalda-s03e38-leo-piccioli",
          Seq: 251
        },
        {
          Quote:
            "Nadie está obligado a estar en donde está -aunque muchos no lo crean.",
          Artículo: "¡No me pongan Liquid Paper en la espalda! S03E38",
          Source:
            "https://www.linkedin.com/pulse/me-pongan-liquid-paper-en-la-espalda-s03e38-leo-piccioli",
          Seq: 252
        },
        {
          Quote: "Para ser como otro, de mínima tenés que hacer como otro.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 253
        },
        {
          Quote:
            "Cuando das valor sin cobrarlo, creás la idea de que hay más valor detrás.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 254
        },
        {
          Quote: "La honestidad conviene siempre en el largo plazo.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 255
        },
        {
          Quote: "Cuánto más sabemos, más sabemos que no sabemos.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 256
        },
        {
          Quote:
            "Dar valor y cobrar ese valor pueden ser momentos totalmente distintos.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 257
        },
        {
          Quote: "Tanto si creés que soy un chanta como si no, tenés razón.",
          Artículo: "¿Influencer se hace o se nace? S03E37",
          Source:
            "https://www.linkedin.com/pulse/influencer-se-hace-o-nace-s03e37-leo-piccioli",
          Seq: 258
        },
        {
          Quote:
            "Si todos creen que algo va a fallar, hay altas chances de que falle.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 259
        },
        {
          Quote: "Mostrar tus errores hace tus aciertos más ciertos.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 260
        },
        {
          Quote: "Si no confiás en lo que vendés, mejor no vendas.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 261
        },
        {
          Quote:
            "Todo proceso va a fallar, salvo que se consideren las fallas dentro del proceso.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 262
        },
        {
          Quote:
            "Si pensamos que los clientes no quieren pagar y los tratamos en consecuencia, no van a querer pagar.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 263
        },
        {
          Quote: "Por defecto, deberíamos confiar en nuestros clientes.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 264
        },
        {
          Quote:
            "El factor cultural: si no lo cambiamos, no va a cambiar solo.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 265
        },
        {
          Quote:
            "Cuantas más reglas, más probabilidad de que alguien haga algo incorrecto.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 266
        },
        {
          Quote: "No toda profecía es “autocumpliente”.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 267
        },
        {
          Quote: "Tanto si creés que podés, como si crees que no, tenés razón.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 268
        },
        {
          Quote:
            "Tanto si pensás que los robots nos van a invadir y quitar nuestro trabajo y felicidad, como si pensás lo opuesto, estás en lo correcto.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 269
        },
        {
          Quote: "Lo que creés te define. Desafiate y redefinite.",
          Artículo: "La profecía V (autocumplida) S03E36",
          Source:
            "https://www.linkedin.com/pulse/la-profec%C3%ADa-v-autocumplida-s03e36-leo-piccioli",
          Seq: 270
        },
        {
          Quote:
            "Hay dos tipos de personas, los que invierten conscientemente y los que lo hacen sin darse cuenta.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 271
        },
        {
          Quote: "El tiempo es dinero y el dinero es tiempo.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 272
        },
        {
          Quote: "El foco en el corto plazo nos mata en el mediano plazo.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 273
        },
        {
          Quote:
            "El futuro debería ser materia obligatoria, como la ciencia ficción.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 274
        },
        {
          Quote: "Sin darnos cuenta, soñar el futuro nos lleva a crearlo.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 275
        },
        {
          Quote:
            "Si todos dicen que algo va a funcionar pero nadie invierte, no tiene sentido. Y si todos invierten, tampoco.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 276
        },
        {
          Quote:
            "Para validar si algo es una oportunidad genial, pensá si es un secreto. Si no lo es, millones de personas deberían estar aprovechándola -con lo que dejaría de ser una oportunidad genial.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 277
        },
        {
          Quote: "Cuando algo está de moda, ya es tarde.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 278
        },
        {
          Quote:
            "Invertir -tiempo o dinero- también es un juego de diferenciación.",
          Artículo: "Tinelli, bitcoin y el calentamiento global S03E35",
          Source:
            "https://www.linkedin.com/pulse/tinelli-bitcoin-y-el-calentamiento-global-s03e35-leo-piccioli",
          Seq: 279
        },
        {
          Quote:
            "¿Por qué valoramos tanto los títulos, los premios y las formalidades?",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 280
        },
        {
          Quote:
            "Esos pequeños detalles que te llaman la atención, esos que la otra persona no se ocupó de cuidar, son los que realmente muestran cómo es.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 281
        },
        {
          Quote: "Si hay algo que sabe el buen líder es todo lo que no sabe.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 282
        },
        {
          Quote:
            "A las disculpas, sin un cambio de actitud, también se las lleva el viento.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 283
        },
        {
          Quote: "¿Por qué usamos palabras de respeto cuando no respetamos?",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 284
        },
        {
          Quote:
            "Respetar a quien falta el respeto puede sonar contradictorio, pero a veces lo hacemos porque respetamos el coraje.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 285
        },
        {
          Quote:
            "Faltemos el respeto a las investiduras, empresas y dogmas; nunca a las personas.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 286
        },
        {
          Quote:
            "Es un rasgo de una mente educada poder considerar una idea sin aceptarla.",
          Artículo: "¡No me respetes! S03E34",
          Source:
            "https://www.linkedin.com/pulse/me-respetes-s03e34-leo-piccioli",
          Seq: 287
        },
        {
          Quote: "Cuando no hay soluciones razonables, busquemos de las otras.",
          Artículo: "Rebelión en el estacionamiento S03E33",
          Source:
            "https://www.linkedin.com/pulse/rebelion-en-el-estacionamiento-s03e33-leo-piccioli",
          Seq: 288
        },
        {
          Quote: "La publicidad genera infelicidad.",
          Artículo: "Rebelión en el estacionamiento S03E33",
          Source:
            "https://www.linkedin.com/pulse/rebelion-en-el-estacionamiento-s03e33-leo-piccioli",
          Seq: 289
        },
        {
          Quote: "Confiamos fácilmente en quien se nos parece.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 290
        },
        {
          Quote:
            "Podemos delegar mejor en quien no sabe pero confiamos, que en quien sabe pero no confiamos.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 291
        },
        {
          Quote:
            "Si no hay un cambio permanente de mentalidad o de personas, un evento o una conferencia no es más que un tranquilizador de conciencias.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 292
        },
        {
          Quote: "A cada Taxi le llega su Uber. Y a cada Uber también.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 293
        },
        {
          Quote: "Cambiar es horrible.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 294
        },
        {
          Quote:
            "El cambio es inevitable: podemos elegir el momento o dejar que el momento nos elija.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 295
        },
        {
          Quote:
            "No hace falta salir de la zona de confort, solo admitir que afuera es infinito y elegir conscientemente quedarse.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 296
        },
        {
          Quote:
            "Tomemos el cambio como default y la estabilidad como excepción.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 297
        },
        {
          Quote:
            "No contrates a quien invitarías a un After, invitá a un After a quien contratás.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 298
        },
        {
          Quote: "Elegí. Te vas a equivocar si no lo hacés.",
          Artículo:
            "La Verdadera Razón por la que tu Empresa no Cambia: los Afters S03E32",
          Source:
            "https://www.linkedin.com/pulse/la-verdadera-raz%C3%B3n-por-que-tu-empresa-cambia-los-afters-leo-piccioli",
          Seq: 299
        },
        {
          Quote: "Search and Replace: “Problema” por “Oportunidad”.",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 300
        },
        {
          Quote: "Siempre probá algo nuevo.",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 301
        },
        {
          Quote: "¿Revisás tu performance para mejorar?",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 302
        },
        {
          Quote:
            "La transmutación de la acción en conocimiento requiere de humildad y tiempo.",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 303
        },
        {
          Quote:
            "Cuando uno tiene el poder, si critica a alguien suele volvérsele en contra.",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 304
        },
        {
          Quote: "Se aprende más del error que del acierto.",
          Artículo: "In your face Tusam: “Puede salir bien” S03E31",
          Source:
            "https://www.linkedin.com/pulse/your-face-tusam-puede-salir-bien-s03e31-leo-piccioli",
          Seq: 305
        },
        {
          Quote: "A veces no vemos lo que tenemos enfrente.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 306
        },
        {
          Quote: "Parte del aprendizaje es divagar. ¡Solo una parte dije!",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 307
        },
        {
          Quote:
            "El precio es el dato más simple de transmitir, tan simple que no necesita un vendedor.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 308
        },
        {
          Quote: "Esforzate en que se entienda el valor que aportás.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 309
        },
        {
          Quote: "Lo que vendés, ¿es un gasto o una inversión?",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 310
        },
        {
          Quote:
            "Si te piden algo gratis, no es que no lo valoran; si no lo valoraran, no lo pedirían.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 311
        },
        {
          Quote: "Cada “no” que digas hace más potente a tus “sís”.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 312
        },
        {
          Quote: "Descontar nunca, rendirse jamás. En todo caso, gratis.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 313
        },
        {
          Quote:
            "Dejar claro para quien trabajarías gratis implica también que a los demás les cobrás.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 314
        },
        {
          Quote: "Cuantas más conferencias das, más conferencias das.",
          Artículo: "La Filosofía de Jean Claude Van Damme S03E29",
          Source:
            "https://www.linkedin.com/pulse/la-filosof%C3%ADa-de-jean-claude-van-damme-s03e29-leo-piccioli",
          Seq: 315
        },
        {
          Quote: "Un cambio lateral es como un ascenso",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 316
        },
        {
          Quote: "Cuándo hay un vacío de información, se asume lo peor",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 317
        },
        {
          Quote:
            "A partir de ahora, entendamos que las empresas deben reorganizarse cada dos o tres años",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 318
        },
        {
          Quote: "Vemos lo que queremos ver",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 319
        },
        {
          Quote:
            "Nuestra marca personal supera a la de la empresa. Y la marca de la empresa supera a la personal.",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 320
        },
        {
          Quote: "Tenemos mucho más poder en la empresa del que creemos",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 321
        },
        {
          Quote: "Preocupémonos si la empresa no se reorganiza cada dos años",
          Artículo:
            "Una Matriz Transpuesta, Tres Cafés y Muchas Camionetas Rojas S03E28",
          Source:
            "https://www.linkedin.com/pulse/una-matriz-transpuesta-tres-caf%C3%A9s-y-muchas-camionetas-leo-piccioli",
          Seq: 322
        },
        {
          Quote:
            "¿Y si faltamos el respeto a posiciones e investiduras, sin faltar el respeto a la gente?",
          Artículo: "El Gerente General es un Enfermo S03E27",
          Source:
            "https://www.linkedin.com/pulse/el-gerente-general-es-un-enfermo-s03e27-leo-piccioli",
          Seq: 323
        },
        {
          Quote: "La primera vez no delegues, hacelo vos.",
          Artículo: "El Gerente General es un Enfermo S03E27",
          Source:
            "https://www.linkedin.com/pulse/el-gerente-general-es-un-enfermo-s03e27-leo-piccioli",
          Seq: 324
        },
        {
          Quote:
            "Para el cliente, sos uno solo; no existen canales, medios o circunstancias: debemos ser coherentes.",
          Artículo: "El Gerente General es un Enfermo S03E27",
          Source:
            "https://www.linkedin.com/pulse/el-gerente-general-es-un-enfermo-s03e27-leo-piccioli",
          Seq: 325
        },
        {
          Quote:
            "Un gerente hace hacer más de lo que hace. Un emprendedor hace.",
          Artículo: "El Gerente General es un Enfermo S03E27",
          Source:
            "https://www.linkedin.com/pulse/el-gerente-general-es-un-enfermo-s03e27-leo-piccioli",
          Seq: 326
        },
        {
          Quote: "La escucha no se delega.",
          Artículo: "El Gerente General es un Enfermo S03E27",
          Source:
            "https://www.linkedin.com/pulse/el-gerente-general-es-un-enfermo-s03e27-leo-piccioli",
          Seq: 327
        },
        {
          Quote:
            "¿Y si aprendemos de las historias, como nos enseñaron los griegos?",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 328
        },
        {
          Quote: "Convirtamos la historia en presente y futuro.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 329
        },
        {
          Quote: "Lo que hiciste en el pasado no te da derecho a nada.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 330
        },
        {
          Quote:
            "Asumí que no te van a ayudar: ayudate, y agradecé la ayuda que venga.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 331
        },
        {
          Quote:
            "Si hay algo que aprendimos es que lo que no sabemos es mucho, pero lo que ni siquiera sabemos que no sabemos, es infinito.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 332
        },
        {
          Quote:
            "Compartir historias para ayudar -no para satisfacer nuestras ganas de contar.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 333
        },
        {
          Quote:
            "Los de más experiencia debemos ser tan tolerantes con los jóvenes como nos habría gustado que fueran con nosotros.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 334
        },
        {
          Quote: "Nada es inútil, no dejes de aprender.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 335
        },
        {
          Quote: "Todos somos Pasantes.",
          Artículo: "Millennials, el Dólar y Robert De Niro S03E26",
          Source:
            "https://www.linkedin.com/pulse/millennials-el-d%C3%B3lar-y-robert-de-niro-s03e26-leo-piccioli",
          Seq: 336
        },
        {
          Quote:
            "Cuando no podés analizar algo, analizá por qué no podés hacerlo.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 337
        },
        {
          Quote:
            "Emprender también es ser parte de un rebaño: el de emprendedores.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 338
        },
        {
          Quote:
            "No olvidemos que el objetivo de un emprendimiento es dejar de serlo y convertirse en una empresa estable.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 339
        },
        {
          Quote:
            "Si no salís de la zona de confort, aceptá que estás bien donde estás.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 340
        },
        {
          Quote: "Si nos vamos a quedar, que sea con ganas.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 341
        },
        {
          Quote:
            "Las tres peores adicciones son la heroína, los carbohidratos y el salario mensual.",
          Artículo: "Los 6 Nosequé de la Corporación S03E25",
          Source:
            "https://www.linkedin.com/pulse/los-6-nosequ%C3%A9-de-la-corporaci%C3%B3n-s03e25-leo-piccioli",
          Seq: 342
        },
        {
          Quote: "Nunca se pasa la misma vergüenza dos veces",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 343
        },
        {
          Quote:
            "Si te quedás tus ideas geniales, tal vez es porque tenés miedo de descubrir que no lo son",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 344
        },
        {
          Quote:
            "¿Qué tan terrible puede ser abrirle la puerta a eso que te causa tanto rechazo?",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 345
        },
        {
          Quote: "La zona de confort, valga la tautología, es cómoda.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 346
        },
        {
          Quote: "Aprender duele.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 347
        },
        {
          Quote: "Aprender cosas incómodas cura la intolerancia.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 348
        },
        {
          Quote: "En general, se avanza más preguntando.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 349
        },
        {
          Quote:
            "¿Y si en vez de “presentación” la pensamos como “conversación”?",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 350
        },
        {
          Quote:
            "Anotar una idea evita que la perdemos pero, además, deja espacio para que surjan otras.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 351
        },
        {
          Quote:
            "Hay dos momentos bien diferentes: el creativo y el crítico; debemos disociarlos para no frustrarnos.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 352
        },
        {
          Quote:
            "En una charla efectiva, solo podremos compartir un par de ideas. Si compartimos muchas más, abrumaremos a la audiencia y permitiremos que elijan las dos o tres que ellos quieran.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 353
        },
        {
          Quote:
            "El cambio tecnológico lleva a los humanos a reencontrar su humanidad.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 354
        },
        {
          Quote: "Lo único que importa es lo que se lleva la Audiencia.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 355
        },
        {
          Quote: "La presentación sos vos, no el material que te acompaña.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 356
        },
        {
          Quote:
            "Aprendí que la gente va a olvidar lo que dijiste, la gente va a olvidar lo que hiciste, pero la gente nunca olvidará cómo los hiciste sentir.",
          Artículo: "“Soy un Charlatán: Vivo de dar Charlas” S03E23",
          Source:
            "https://www.linkedin.com/pulse/soy-un-charlat%C3%A1n-vivo-de-dar-charlas-s03e23-leo-piccioli",
          Seq: 357
        },
        {
          Quote:
            "Cuando el material de soporte es más importante que el orador, éste es innecesario.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 358
        },
        {
          Quote:
            "El orador tiene que transmitir lo que el Powerpoint no puede; principalmente, emociones.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 359
        },
        {
          Quote:
            "Antes de una presentación, siempre preguntá quién es y qué espera la audiencia.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 360
        },
        {
          Quote: "Las historias que nos contamos son poderosas.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 361
        },
        {
          Quote: "Una conferencia no termina cuando termina.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 362
        },
        {
          Quote: "Si una capacitación no cambia nada, cambiá la capacitación.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 363
        },
        {
          Quote: "Pasá vergüenza. La vergüenza pasa.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 364
        },
        {
          Quote: "La vergüenza es el mármol que cubre al David.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 365
        },
        {
          Quote: "Las ideas no se roban.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 366
        },
        {
          Quote: "Aferrarse a las “ideas brillantes” nos quita brillo.",
          Artículo: "Una Conferencia no Termina Cuando Termina S03E22",
          Source:
            "https://www.linkedin.com/pulse/una-conferencia-termina-cuando-s03e22-leo-piccioli",
          Seq: 367
        },
        {
          Quote:
            "“No tuve tiempo” no existe. Todos tenemos veinticuatro horas y decidimos cómo usarlas.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 368
        },
        {
          Quote:
            "Ignorá a quienes ven tus pedidos de ayuda como señal de debilidad. Es de fortaleza.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 369
        },
        {
          Quote:
            "El mundo ya cambió, y lo estás mirando con tus anteojos viejos.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 370
        },
        {
          Quote: "Cada uno es experto en su vida.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 371
        },
        {
          Quote:
            "Nuestra marca se construye de a poco, con nuestra acciones, todos los días.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 372
        },
        {
          Quote:
            "Cuando trates de ayudar a otro, asegurate también de oír lo que decís.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 373
        },
        {
          Quote:
            "El corto plazo absorbe todo tu tiempo libre; agendá el largo plazo para protegerlo.",
          Artículo: "Cuando sea Marzo y Estés Asustado, Acordate :-) S03E21",
          Source:
            "https://www.linkedin.com/pulse/cuando-sea-marzo-y-est%C3%A9s-asustado-acordate-s03e21-leo-piccioli",
          Seq: 374
        },
        {
          Quote: "El entusiasmo es un motor fundamental en el trabajo.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 375
        },
        {
          Quote:
            "Incluso en las empresas, muchas decisiones surgen simplemente del entusiasmo de sus líderes.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 376
        },
        {
          Quote:
            "Las evaluaciones de desempeño siempre tienen un factor importante subjetivo.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 377
        },
        {
          Quote:
            "¿Hoguera para los que traducen títulos de libros y películas?",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 378
        },
        {
          Quote: "Las decisiones que tomás son tuyas, no vienen de los libros.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 379
        },
        {
          Quote: "Sé tu propio gurú.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 380
        },
        {
          Quote:
            "El foco en corregir errores corrige otra cosa también: la innovación.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 381
        },
        {
          Quote: "Dejemos entrar un poco de error en nuestras vidas.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 382
        },
        {
          Quote:
            "Podemos tratar de objetivar opiniones, pero aceptemos un grado de subjetividad.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 383
        },
        {
          Quote:
            "Por suerte, hay errores en las formas de evaluar el desempeño. Tal vez eso deje pasar la genialidad.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 384
        },
        {
          Quote:
            "Una evaluación de desempeño es lo mismo que un estudio de percepción de marca.",
          Artículo:
            "Por el Amor de Dios, ¿Alguien Puede hacer mi Evaluación de Desempeño? S03E20",
          Source:
            "https://www.linkedin.com/pulse/por-el-amor-de-dios-alguien-puede-hacer-mi-evaluaci%C3%B3n-leo-piccioli",
          Seq: 385
        },
        {
          Quote:
            "¿Qué estás aprendiendo ahora, convencido de que va a servir, y se convertirá en una anécdota aburrida?",
          Artículo: "Tu Empresa, como los Dinosaurios, va a Desaparecer S03E19",
          Source:
            "https://www.linkedin.com/pulse/tu-empresa-como-los-dinosaurios-va-desaparecer-s03e19-leo-piccioli",
          Seq: 386
        },
        {
          Quote:
            "No te pongas demasiado contento por tu éxito -esto también pasará.",
          Artículo: "Tu Empresa, como los Dinosaurios, va a Desaparecer S03E19",
          Source:
            "https://www.linkedin.com/pulse/tu-empresa-como-los-dinosaurios-va-desaparecer-s03e19-leo-piccioli",
          Seq: 387
        },
        {
          Quote:
            "Cuánto más éxito tenemos, más humildad necesitamos para sostenerlo.",
          Artículo: "Tu Empresa, como los Dinosaurios, va a Desaparecer S03E19",
          Source:
            "https://www.linkedin.com/pulse/tu-empresa-como-los-dinosaurios-va-desaparecer-s03e19-leo-piccioli",
          Seq: 388
        },
        {
          Quote:
            "Proveer emociones es más difícil, pero más rentable y protege a la compañía del cambio tecnológico.",
          Artículo: "Tu Empresa, como los Dinosaurios, va a Desaparecer S03E19",
          Source:
            "https://www.linkedin.com/pulse/tu-empresa-como-los-dinosaurios-va-desaparecer-s03e19-leo-piccioli",
          Seq: 389
        },
        {
          Quote: "La experiencia es todo.",
          Artículo: "Tu Empresa, como los Dinosaurios, va a Desaparecer S03E19",
          Source:
            "https://www.linkedin.com/pulse/tu-empresa-como-los-dinosaurios-va-desaparecer-s03e19-leo-piccioli",
          Seq: 390
        },
        {
          Quote:
            "Revisemos nuestras convenciones periódicamente; el mundo cambia, ellas deben acompañar.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 391
        },
        {
          Quote:
            "Secreto para entrevistas: escuchá la pregunta y llevá la respuesta hacia donde quieras.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 392
        },
        {
          Quote:
            "Sin abusar, agradecer una pregunta construye empatía con el entrevistador. Y da tiempo para pensar.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 393
        },
        {
          Quote: "Si no te están preguntando, no estás forzado a responder.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 394
        },
        {
          Quote:
            "Los planes de vida son necesarios, así como es necesario romperlos para hacer otros.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 395
        },
        {
          Quote: "Retroceder nunca, bajar el precio jamás.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 396
        },
        {
          Quote: "¿Te admirás?",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 397
        },
        {
          Quote:
            "No me interesa llegar a la cumbre, lo que me interesa es el camino.",
          Artículo: "Yo, Gary y Mi Otro Yo S03E17",
          Source:
            "https://www.linkedin.com/pulse/yo-gary-y-mi-otro-s03e17-leo-piccioli",
          Seq: 398
        },
        {
          Quote: "No sé, no sé y no sé.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 399
        },
        {
          Quote:
            "El Destino está escrito. El desafío es saber en qué libro de ciencia ficción.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 400
        },
        {
          Quote:
            "El futuro es mejor que lo que describen los libros de ciencia ficción.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 401
        },
        {
          Quote: "Todo tiempo futuro fue mejor.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 402
        },
        {
          Quote:
            "La pantalla chica embobaba. La pantalla más chica educa más de lo que creemos.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 403
        },
        {
          Quote:
            "Una revista es una tablet con el zoom roto y una conexión muuuy lenta.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 404
        },
        {
          Quote: "Todo tiempo futuro será mejor.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 405
        },
        {
          Quote:
            "Aquellos que están tan locos como para pensar que pueden cambiar el mundo, son los que lo hacen', Steve Jobs.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 406
        },
        {
          Quote:
            "El entretenimiento sin educación no deja casi nada; la educación sin entretenimiento, tampoco.",
          Artículo: "Los Simpsons, Fuente de toda Sabiduría S03E16",
          Source:
            "https://www.linkedin.com/pulse/los-simpsons-fuente-de-toda-sabidur%C3%ADa-s03e16-leo-piccioli",
          Seq: 407
        },
        {
          Quote:
            "Si no encontraste trabajo a tu manera, probá a la manera de otro.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 408
        },
        {
          Quote:
            "Una clave de marketing (y de seducción, que es lo mismo) es dejar al otro con ganas de saber más.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 409
        },
        {
          Quote:
            "Necesitamos momentos distintos para lograr ideas distintas. Cepillate los dientes tres veces por día.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 410
        },
        {
          Quote:
            "Si los valores de donde querés trabajar y los tuyos son compatibles, asegurate de que se note.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 411
        },
        {
          Quote:
            "Igual que una entrevista de trabajo, un psicotécnico es solo para conocer más -no se puede aprobar. Tampoco desaprobar.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 412
        },
        {
          Quote:
            "Para delegar con eficacia debemos explicar las razones detrás de lo que delegamos; tratemos a la gente como inteligente y va a comportarse como tal.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 413
        },
        {
          Quote:
            "¿Qué porcentaje de los nuevos ingresantes sabrán, apenas conocen a su jefe el día uno, que no van a poder trabajar en ese lugar?",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 414
        },
        {
          Quote:
            "Compartir los psicotécnicos de los jefes para que los candidatos elijan bien.",
          Artículo: "Tu Jefe, ¿Pasa un Psicotécnico? S03E12",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-pasa-un-psicot%C3%A9cnico-s03e12-leo-piccioli",
          Seq: 415
        },
        {
          Quote:
            "Cuando te sacan de la zona de confort tenés dos opciones: volver o agrandarla.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 416
        },
        {
          Quote: "El jefe es el último en dar su opinión.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 417
        },
        {
          Quote:
            "50% del gasto de marketing es ineficiente - el problema es saber cuál 50%.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 418
        },
        {
          Quote:
            "La TV, igual que las redes sociales, suele disfrazar de noticias su objetivo de retenernos frente a la pantalla.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 419
        },
        {
          Quote:
            "Sin diferenciación, se reparte la torta. Con diferenciación, se agranda.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 420
        },
        {
          Quote: "Las soluciones de corto plazo suelen dañar el largo.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 421
        },
        {
          Quote:
            "El rating en la televisión y la cotización de una acción son como los likes en una foto. Efímeros.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 422
        },
        {
          Quote:
            "Mirar el largo plazo garantiza el corto plazo en el mediano plazo.",
          Artículo: "En el Largo Plazo Estamos Todos Vivos S03E11",
          Source:
            "https://www.linkedin.com/pulse/en-el-largo-plazo-estamos-todos-vivos-s03e11-leo-piccioli",
          Seq: 423
        },
        {
          Quote: "Desafiate.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 424
        },
        {
          Quote:
            "La probabilidad de que una segunda opinión agregue valor es tan alta que debería ser obligatorio buscarla",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 425
        },
        {
          Quote: "Escuchate.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 426
        },
        {
          Quote:
            "Emprender duele pero da gusto. Sarna con gusto sí pica. Pica el cuerpo y da gusto en la boca.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 427
        },
        {
          Quote: "Para emprender bien hay que hacerlo con foco.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 428
        },
        {
          Quote:
            "Si no te contestan tu pregunta, preguntate si preguntaste bien.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 429
        },
        {
          Quote:
            "Repasemos periódicamente las herramientas que tenemos para trabajar, así no se pierden.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 430
        },
        {
          Quote:
            "Escuchá todas las opiniones como si fueran la segunda opinión",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 431
        },
        {
          Quote: "Las decisiones bien tomadas se basan en Valores.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 432
        },
        {
          Quote:
            "Si el camino que seguís ya no te acerca al destino, cambiá de camino.",
          Artículo: "50 Sombras de Gris - y sus Pantones S03E09",
          Source:
            "https://www.linkedin.com/pulse/50-sombras-de-gris-y-sus-pantones-leo-piccioli",
          Seq: 433
        },
        {
          Quote:
            "Antes de visitar a un potencial cliente, de mínima, buscalo en Google.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 434
        },
        {
          Quote: "Querés que te escuchen, escuchá primero.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 435
        },
        {
          Quote: "Querés que confíen en vos, confiá primero.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 436
        },
        {
          Quote: "Querés que te respeten, respetá primero.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 437
        },
        {
          Quote: "Errare humanum est. Etiam capitibus (los jefes también).",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 438
        },
        {
          Quote:
            "La falta de humildad hace a muchas personas malos jefes y malos reportes.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 439
        },
        {
          Quote:
            "El cliente es el que paga el sueldo. La empresa y tu jefe son vehículos para dar valor al cliente y poder cobrar.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 440
        },
        {
          Quote:
            "Si no soportás a tu jefe, hacé las cosas muy bien para poder ser jefe - y que sea otro el que no te soporte.",
          Artículo:
            "Tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente es tu Jefe es tu Cliente S03E08",
          Source:
            "https://www.linkedin.com/pulse/tu-jefe-es-cliente-s03e08-leo-piccioli",
          Seq: 441
        },
        {
          Quote:
            "Si pensamos el tiempo total de la reunión como su duración multiplicada por la cantidad de asistentes, seguro tomaremos decisiones diferentes.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 442
        },
        {
          Quote:
            "Si no se definen claramente las expectativas de una reunión periódica, se creará una cultura que puede ser contraproducente.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 443
        },
        {
          Quote:
            "Para transmitir información fría, una reunión es improductiva.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 444
        },
        {
          Quote:
            "A pesar de que sabemos bien quién es nuestro jefe, tomamos una invitación por mail de cualquier otra persona de la empresa como una orden que debemos obedecer.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 445
        },
        {
          Quote:
            "Muchas veces se sugiere mandar material para leer antes de la reunión. Mejor leerlo en lugar de la reunión.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 446
        },
        {
          Quote:
            "¿Por qué cuando estamos mirando al techo en la oficina nos interrumpen como si no estuviéramos haciendo nada? ¿No ves que estoy mirando al techo?",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 447
        },
        {
          Quote:
            "Si nos llenamos de tareas que no agregan valor, vamos a terminar posponiendo las importantes.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 448
        },
        {
          Quote: "La mejor reunión es la que no se hace.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 449
        },
        {
          Quote:
            "Para que una reunión sea productiva, cada asistente tiene que saber para qué está y elegirlo.",
          Artículo: "La Mejor Reunión es la que no se Hace S03E07",
          Source:
            "https://www.linkedin.com/pulse/la-mejor-reuni%C3%B3n-es-que-se-hace-s03e07-leo-piccioli",
          Seq: 450
        },
        {
          Quote:
            "Qué peligroso vivir en un mundo donde el que no llora no mama.",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 451
        },
        {
          Quote:
            "Ayudar sin mirar a quien, si ayudamos a todos por igual. Si no, miremos a quien.",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 452
        },
        {
          Quote:
            "¿Y si dejamos de enfocarnos en los problemas individuales y conversamos más sobre la sociedad que queremos?",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 453
        },
        {
          Quote: "Aquel que hace, es criticado.",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 454
        },
        {
          Quote:
            "Para que nos presten atención cuando decimos lo contrario a la mayoría, tenemos que tener un camino recorrido. Pero, cuando lo tenemos, ya no solemos discutir el statu quo.",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 455
        },
        {
          Quote: "“Corto plazo” es un “largo plazo” al que llegamos tarde.",
          Artículo: "El Décimo Hombre S03E06",
          Source:
            "https://www.linkedin.com/pulse/el-d%C3%A9cimo-hombre-s03e06-leo-piccioli",
          Seq: 456
        },
        {
          Quote: "Internet es el paraíso de los introvertidos.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 457
        },
        {
          Quote:
            "Prometé el peor resultado que el cliente acepte y sorprendelo.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 458
        },
        {
          Quote:
            "Las empresas deben actuar con 200% de responsabilidad: 100% por lo que está bajo su control y 100% por el resultado que venden.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 459
        },
        {
          Quote:
            "¿Pero qué venden ustedes, lavarropas o máquinas para lavar la ropa?",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 460
        },
        {
          Quote:
            "Un cliente que responde una encuesta nos da un regalo: deberíamos agradecérselo mejorando y compartiéndole en qué mejoramos.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 461
        },
        {
          Quote:
            "El cliente ve la empresa como una sola -no tratemos de que la parta.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 462
        },
        {
          Quote:
            "La forma en que trata la empresa a sus clientes cuando falla es la clave de su marca.",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 463
        },
        {
          Quote: "Esperás buena atención… ¿La das?",
          Artículo: "Licuado de Responsabilidad S03E05",
          Source:
            "https://www.linkedin.com/pulse/licuado-de-responsabilidad-s03e05-leo-piccioli",
          Seq: 464
        },
        {
          Quote: "La innovación siempre genera resistencia.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 465
        },
        {
          Quote:
            "Una generación nueva es la que realmente abraza una tecnología nueva.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 466
        },
        {
          Quote:
            "¿Empezaremos a elegir el entusiasmo joven por sobre la sabiduría de la edad?",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 467
        },
        {
          Quote:
            "Cuando encontrás una forma en que las cosas te salen bien, la repetís. Y se hace más difícil innovar.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 468
        },
        {
          Quote:
            "Casi por definición hay un conflicto entre liderazgo y cambio.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 469
        },
        {
          Quote:
            "Si querés que la empresa perdure, contratá gente diferente en la que puedas confiar.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 470
        },
        {
          Quote:
            "Conversar sobre el largo plazo debería ser materia obligatoria desde la escuela.",
          Artículo: "Cuando los Jefes sean Millennials S03E04",
          Source:
            "https://www.linkedin.com/pulse/cuando-los-jefes-sean-millennials-leo-piccioli",
          Seq: 471
        },
        {
          Quote: "Lo que para uno es ciencia ficción para otro es ciencia.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 472
        },
        {
          Quote:
            "Las nuevas generaciones son la oportunidad que tienen las empresas familiares de renovarse.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 473
        },
        {
          Quote:
            "Antes de decir que algo es imposible, pensalo dos veces. O doscientas. O mejor no lo digas.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 474
        },
        {
          Quote:
            "Humanos necios que acusáis a la red social sin razón, sin ver que sois la ocasión de lo mismo que culpáis.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 475
        },
        {
          Quote: "La magia no existe.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 476
        },
        {
          Quote: "Hasta el más racional tiene conductas irracionales.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 477
        },
        {
          Quote: "No hay más secretos.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 478
        },
        {
          Quote: "Si es gratis, el producto sos vos. Entonces, nada es gratis.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 479
        },
        {
          Quote:
            "Suponé que todos son buenos, pero que los malos le ponen mucho más empeño.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 480
        },
        {
          Quote:
            "Los cisnes negros son inevitables e imprevisibles. Los patos negros inevitables. Prevengámoslos.",
          Artículo: "El Pato Negro S03E03",
          Source:
            "https://www.linkedin.com/pulse/el-pato-negro-s03e03-leo-piccioli",
          Seq: 481
        },
        {
          Quote:
            "Un segundo par de ojos siempre agrega más valor del que cuesta.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 482
        },
        {
          Quote:
            "Tenemos que diferenciar las tareas en donde debemos ser excelentes de las otras.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 483
        },
        {
          Quote:
            "Podés contratar a un especialista y confiar o contratar a cualquiera y especializarte.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 484
        },
        {
          Quote:
            "El diseño de un producto es irrelevante - la clave son los valores que transmite una vez creado.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 485
        },
        {
          Quote:
            "¿Por qué muchas veces es más fácil ayudar a otros que a nosotros mismos?",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 486
        },
        {
          Quote:
            "Para entender el valor que tu producto puede dar, investigá a fondo a sus competidores más cercanos.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 487
        },
        {
          Quote:
            "Diversificá los riesgos que corrés para aumentar las chances de éxito.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 488
        },
        {
          Quote: "Siempre testeá vos mismo lo importante.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 489
        },
        {
          Quote:
            "Cuando te dicen que algo es caro, traducilo a “mostrame más valor”.",
          Artículo: "Esto no es Game of Thrones S03E01",
          Source:
            "https://www.linkedin.com/pulse/esto-es-game-thrones-s03e01-leo-piccioli",
          Seq: 490
        },
        {
          Quote:
            "Si hay un sitio en el bosque de internet y nadie lo ve, ¿realmente existe?",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 491
        },
        {
          Quote: "Si hacés todo como los demás, serás uno más",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 492
        },
        {
          Quote:
            "Los proyectos exitosos no nos dejan ver los miles que fracasaron",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 493
        },
        {
          Quote:
            "Primero imaginá el producto, después pensá cómo vas a crecer. Recién entonces creá el producto",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 494
        },
        {
          Quote:
            "¿De qué manera conociste Google como buscador? Un producto increíble lleva al boca a boca.",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 495
        },
        {
          Quote:
            "¿Si supieras que una sola persona por día entraría a tu sitio web, cuánto invertirías en su desarrollo?",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 496
        },
        {
          Quote:
            "El marketing es diferenciación; algo que todos hacen -publicidad en la TV, por ejemplo- requiere cada vez más originalidad para ser diferente, hasta que no sirve más",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 497
        },
        {
          Quote: "Comúnicalo y Vendrán. Avísenle a Kevin.",
          Artículo: "La Culpa la Tiene Kevin Costner S02E45",
          Source:
            "https://www.linkedin.com/pulse/la-culpa-tiene-kevin-costner-s02e45-leo-piccioli",
          Seq: 498
        },
        {
          Quote: "Si no escuchás a tu gente, alguien lo va a hacer por vos.",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 499
        },
        {
          Quote:
            "Si pudiéramos volver atrás en el tiempo, ¿no trataríamos mejor a los empleados para que no nazcan los sindicatos?",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 500
        },
        {
          Quote: "A veces es mejor que algunas cosas no sean tan fáciles",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 501
        },
        {
          Quote: "Todo lo que pueda automatizarse se automatizará",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 502
        },
        {
          Quote:
            "El desempleo ya no se medirá geográficamente, sino por actividad",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 503
        },
        {
          Quote: "Toda frontera electrónica se puede hackear",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 504
        },
        {
          Quote:
            "Si somos todos diferentes, será más difícil que alguien nos represente. Por suerte la tecnología, una vez más, nos ayudará.",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 505
        },
        {
          Quote:
            "La tecnología genera una mejora en los estándares de vida de la Humanidad, aún cuando quien empeore puntualmente reclame más.",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 506
        },
        {
          Quote:
            "Los sindicatos existieron menos del 2% de la historia humana. ¿Por qué suponemos que tienen que seguir existiendo?",
          Artículo: "Los Sindicatos Van a Desaparecer S02E44",
          Source:
            "https://www.linkedin.com/pulse/los-sindicatos-van-desaparecer-s02e44-leo-piccioli",
          Seq: 507
        },
        {
          Quote:
            "Cambiá tus objetivos después del proyecto para convertirlo en un éxito. Así cualquiera, ¿no?",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 508
        },
        {
          Quote:
            "Todo lo que hagas debe ayudar, directa o indirectamente, a tu Misión",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 509
        },
        {
          Quote: "Los negocios venden experiencias, no productos",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 510
        },
        {
          Quote:
            "Si tu mercado se creara de cero hoy, ¿cuán distinto sería? El desafío es la disrupción sin el dolor de la disrupción",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 511
        },
        {
          Quote: "Tenemos que cobrar en donde damos valor",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 512
        },
        {
          Quote:
            "El valor de un producto terminado se distribuye de acuerdo al valor que agrega cada proceso",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 513
        },
        {
          Quote: "Por suerte la tecnología siempre triunfa",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 514
        },
        {
          Quote:
            "El precio de un producto es la señal más simple de su valor y un desafío para el productor",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 515
        },
        {
          Quote:
            "Gratis o al precio definido; un descuento habla mal del producto",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 516
        },
        {
          Quote:
            "El pago “a la gorra”, confiando en el contenido y en el cliente, es la prueba de fuego del creador",
          Artículo: "Fahrenheit 451: Autocombustión S02E43",
          Source:
            "https://www.linkedin.com/pulse/fahrenheit-451-autocombusti%C3%B3n-s02e43-leo-piccioli",
          Seq: 517
        },
        {
          Quote: "Hay dos tipos de posteos: los de expertos y los honestos",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 518
        },
        {
          Quote: "La atención es un bien cada vez más valioso",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 519
        },
        {
          Quote:
            "Cuando escribimos para otro, también estamos compitiendo por la atención del lector",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 520
        },
        {
          Quote:
            "El esfuerzo de preparación (conferencia, escrito, video) tiene que ser consistente con la atención que estamos buscando",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 521
        },
        {
          Quote: "La primera impresión también vale mucho para un artículo",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 522
        },
        {
          Quote:
            "Escribir como si los que leen fueran idiotas es una profecía autocumplida",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 523
        },
        {
          Quote:
            "Desafiar la inteligencia de tus lectores los involucra y atrapa",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 524
        },
        {
          Quote: "En todos lados competimos por la atención",
          Artículo:
            "El Método Netflix para que los Niños Escriban Bien y Hagan Otras Cosas Bien También S02E42",
          Source:
            "https://www.linkedin.com/pulse/el-m%C3%A9todo-netflix-para-que-los-ni%C3%B1os-escriban-bien-y-hagan-piccioli",
          Seq: 525
        },
        {
          Quote:
            "La ansiedad nos hace menos productivos (o producir con menos calidad)",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 526
        },
        {
          Quote:
            "“No tengo tiempo” es una excusa. “Elijo hacer otras cosas” es ser protagonista.",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 527
        },
        {
          Quote: "La vergüenza puede ser buena consejera, también",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 528
        },
        {
          Quote:
            "La misma decisión puede ser irrelevante o fundamental, depende del momento y el modelo mental de quien decide",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 529
        },
        {
          Quote: "Tu agenda visible muestra tus prioridades a los demás",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 530
        },
        {
          Quote:
            "Antes de aceptar un desafío, revisá tu agenda y decidí a qué le vas a quitar tiempo",
          Artículo: "Peor Era Mucho Mejor S02E41",
          Source:
            "https://www.linkedin.com/pulse/peor-era-mucho-mejor-s02e41-leo-piccioli",
          Seq: 531
        },
        {
          Quote: "La acción va antes que la Misión",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 532
        },
        {
          Quote:
            "El trabajo de los humanos es mejorar las cosas todos los días.",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 533
        },
        {
          Quote:
            "Es simple: para mantener las cosas igual tendremos a los robots.",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 534
        },
        {
          Quote: "El Excel es una zona de confort",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 535
        },
        {
          Quote:
            "Actuá en tu trabajo como si en diez años todos se fueran a enterar de cada cosa que hacés. Porque así será.",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 536
        },
        {
          Quote: "Los puntos se pueden unir solo mirando hacia atrás",
          Artículo: "¿Qué hay en la Caja? S02E40",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-hay-en-la-caja-s02e40-leo-piccioli",
          Seq: 537
        },
        {
          Quote:
            "Las empresas contratan gente como si los fueran a necesitar eternamente",
          Artículo: "Brócolis y Manzanas S02E39",
          Source:
            "https://www.linkedin.com/pulse/br%C3%B3colis-y-manzanas-s02e39-leo-piccioli",
          Seq: 538
        },
        {
          Quote:
            "Las empresas necesitan seguir inventando productos, aún cuando ya hayan logrado lo que buscaban",
          Artículo: "Brócolis y Manzanas S02E39",
          Source:
            "https://www.linkedin.com/pulse/br%C3%B3colis-y-manzanas-s02e39-leo-piccioli",
          Seq: 539
        },
        {
          Quote:
            "Drones, taladros, casas en la costa, autos estacionados todo el día: cada minuto de “no uso” de un bien es desperdicio.",
          Artículo: "Brócolis y Manzanas S02E39",
          Source:
            "https://www.linkedin.com/pulse/br%C3%B3colis-y-manzanas-s02e39-leo-piccioli",
          Seq: 540
        },
        {
          Quote:
            "El Marketing te hace sentir que te falta algo. Te hace sentir mal.",
          Artículo: "Brócolis y Manzanas S02E39",
          Source:
            "https://www.linkedin.com/pulse/br%C3%B3colis-y-manzanas-s02e39-leo-piccioli",
          Seq: 541
        },
        {
          Quote:
            "¿Qué pasa, realmente, si dejás de hacer lo que estás haciendo?",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 542
        },
        {
          Quote:
            "En las empresas tenemos 200% de responsabilidad: 100% por lo que hacemos y 100% por lo que hacen otros y nos afecta",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 543
        },
        {
          Quote: "Mirá con lupa un grano de arena y verás una playa",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 544
        },
        {
          Quote: "Cuanto menos sabemos, menos humildes solemos ser",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 545
        },
        {
          Quote:
            "La confianza se construye todos los días. Se destruye en segundos.",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 546
        },
        {
          Quote: "Solo escalar después de intentar conversar",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 547
        },
        {
          Quote:
            "La evolución, que hace que la sociedad gane como un todo, genera siempre perdedores individuales",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 548
        },
        {
          Quote:
            "“Todos lo hacen así” es un excelente motivo para no hacerlo así",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 549
        },
        {
          Quote: "1. Echate hoy. 2. Empezá mañana de nuevo. 3. Volvé a 1.",
          Artículo: "Siempre lo Hicimos Así S02E38",
          Source:
            "https://www.linkedin.com/pulse/siempre-lo-hicimos-as%C3%AD-s02e38-leo-piccioli",
          Seq: 550
        },
        {
          Quote:
            "Una empresa diferente busca gente diferente de una manera diferente",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 551
        },
        {
          Quote:
            "Apenas una empresa provee algo increíble, se convierte en atractiva para trabajar",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 552
        },
        {
          Quote:
            "Si no te hackearon es porque no sos lo suficientemente interesante para ser hackeado",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 553
        },
        {
          Quote: "Aunque no la veamos, la Marca Empleadora siempre está",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 554
        },
        {
          Quote:
            "Siempre alguien hablará mal de nuestra Marca, sea verdad o no. Por eso debemos generar información positiva constantemente.",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 555
        },
        {
          Quote:
            "Construí tu perfil en redes sociales para protegerte de potenciales críticas.",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 556
        },
        {
          Quote:
            "Los “grandes nombres” parecen implicar “grandes inversiones” y asustan a las empresas más pequeñas",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 557
        },
        {
          Quote:
            "Todas tus decisiones construyen tu largo plazo, aun cuando no sean parte de un plan",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 558
        },
        {
          Quote:
            "Marketing y Recursos Humanos venden, hacia afuera, lo mismo: la idea de que la empresa es genial",
          Artículo: "¿Qué Dicen tus Ex de tu Empresa? S02E37",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-dicen-tus-ex-empleados-de-tu-empresa-s02e37-leo-piccioli",
          Seq: 559
        },
        {
          Quote:
            "De acuerdo a como una empresa elija sus competidores serán sus decisiones.",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 560
        },
        {
          Quote:
            "Poner el precio en función del de la competencia es difícil, caro e inútil",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 561
        },
        {
          Quote: "¿Querés tener a un buen Líder cerca? Empezá por serlo.",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 562
        },
        {
          Quote: "Abrazá a quien piense distinto y pueda explicarse.",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 563
        },
        {
          Quote:
            "Gente nueva trae ideas nuevas y nos ayuda a valorar lo que tenemos.",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 564
        },
        {
          Quote:
            "Es como si las agencias de publicidad estuvieran tomando el control del mundo para contarnos la historia que más rentable les resulta.",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 565
        },
        {
          Quote:
            "La mayor ventaja de los autos autónomos será que el taxista no hablará. ¿O los harán hablar?",
          Artículo: "Algoritmo, Grieta y Endogenia S02E36",
          Source:
            "https://www.linkedin.com/pulse/algoritmo-grieta-y-endogenia-s02e36-leo-piccioli",
          Seq: 566
        },
        {
          Quote:
            "¿Qué es Twitter o cualquier otro servicio, entonces? ¿Lo que dice la empresa o el uso que le damos?",
          Artículo: "Perdón por lo Extenso del Mensaje S02E35",
          Source:
            "https://www.linkedin.com/pulse/perd%C3%B3n-por-lo-extenso-del-mensaje-s02e35-leo-piccioli",
          Seq: 567
        },
        {
          Quote:
            "Si compartís contenido de calidad en el lugar adecuado, la publicidad es un servicio; es valor",
          Artículo: "Perdón por lo Extenso del Mensaje S02E35",
          Source:
            "https://www.linkedin.com/pulse/perd%C3%B3n-por-lo-extenso-del-mensaje-s02e35-leo-piccioli",
          Seq: 568
        },
        {
          Quote:
            "Una innovación muchas veces parece un manotazo de ahogado. Y viceversa.",
          Artículo: "Perdón por lo Extenso del Mensaje S02E35",
          Source:
            "https://www.linkedin.com/pulse/perd%C3%B3n-por-lo-extenso-del-mensaje-s02e35-leo-piccioli",
          Seq: 569
        },
        {
          Quote:
            "Con los años aprendí a dejar los mails que escribo sin enviar unos segundos, y leerlos nuevamente con los ojos del lector.",
          Artículo: "Perdón por lo Extenso del Mensaje S02E35",
          Source:
            "https://www.linkedin.com/pulse/perd%C3%B3n-por-lo-extenso-del-mensaje-s02e35-leo-piccioli",
          Seq: 570
        },
        {
          Quote:
            "Las empresas deberían liquidarse todos los años y, luego, fundar otras nuevas más eficientes sin las cargas del pasado.",
          Artículo: "Perdón por lo Extenso del Mensaje S02E35",
          Source:
            "https://www.linkedin.com/pulse/perd%C3%B3n-por-lo-extenso-del-mensaje-s02e35-leo-piccioli",
          Seq: 571
        },
        {
          Quote: "Si no estás experimentando, ¿estás vivo?",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 572
        },
        {
          Quote: "Si “siempre lo hicimos así”... es hora de cambiarlo",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 573
        },
        {
          Quote: "La “carrera profesional” es una zona de confort",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 574
        },
        {
          Quote:
            "¿Y si las campañas de Marketing fueran pensadas para dar Valor y no para tomarlo?",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 575
        },
        {
          Quote: "Pedir ayuda es fácil, tenerla en cuenta es un desafío",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 576
        },
        {
          Quote:
            "Las opiniones de los demás son datos para nutrirnos, pero la nuestra es la que manda",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 577
        },
        {
          Quote:
            "Cuánto más tratás de cambiar la opinión de otro, más difícil es",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 578
        },
        {
          Quote: "Muchas veces no sabemos lo que sabemos",
          Artículo: "El Fin del Soysolismo S02E34",
          Source:
            "https://www.linkedin.com/pulse/el-fin-del-soysolismo-s02e34-leo-piccioli",
          Seq: 579
        },
        {
          Quote: "Publicar esa infografía no convierte a tu jefe en líder",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 580
        },
        {
          Quote:
            "Si la gente renuncia a sus jefes, es lógico que entren a una empresa por su jefe",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 581
        },
        {
          Quote:
            "La diferencia más relevante entre jefe y líder es que el líder entiende que el poder se lo dan los liderados.",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 582
        },
        {
          Quote:
            "Un líder tiene la humildad necesaria para decir “No sé”. Un jefe, no sé. ;-)",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 583
        },
        {
          Quote:
            "Si ponés demasiado empeño en ser jefe, tal vez tus compañeros tengan la mala suerte de que lo consigas",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 584
        },
        {
          Quote:
            "Es nuestra responsabilidad -y no de nuestros jefes- saber lo que se espera de nosotros",
          Artículo: "¿Por qué los Jefes Odian las Infografías? S02E33",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-los-jefes-odian-las-infograf%C3%ADas-s02e33-leo-piccioli",
          Seq: 585
        },
        {
          Quote:
            "No es justo comparar tecnología nueva con tecnología vieja mal aprovechada",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 586
        },
        {
          Quote: "Crear tiene más glamour que mantener",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 587
        },
        {
          Quote:
            "Los cambios drásticos generan grandes titulares, los cambios pequeños mueven el mundo",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 588
        },
        {
          Quote:
            "A pesar de dedicar toda tu energía a un proyecto, tener un menú de opciones te dará paz",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 589
        },
        {
          Quote:
            "Plantear una decisión enorme cuando puede ser fraccionada en muchas pequeñas es una forma de auto-boicot",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 590
        },
        {
          Quote:
            "Poné a un emprendedor en un lugar gerencial y va a cambiar y discutir todo. Poné a un gerente en un emprendimiento y va a mantener y ajustar lo que haya.",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 591
        },
        {
          Quote:
            "Si un emprendedor en una empresa no está emprendiendo, está haciendo daño",
          Artículo: "Mantepreneurship S02E32",
          Source:
            "https://www.linkedin.com/pulse/mantepreneurship-s02e32-leo-piccioli",
          Seq: 592
        },
        {
          Quote: "Lo que para unos es normal, para otros puede ser una locura",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 593
        },
        {
          Quote:
            "Es muy difícil sostenerse en un puesto aceptado por los motivos incorrectos",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 594
        },
        {
          Quote:
            "La zona de confort es una zona. “Fuera de la zona de confort” es mucho más grande. Infinito.",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 595
        },
        {
          Quote: "No hay Entusiasmo dentro de la zona de confort",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 596
        },
        {
          Quote:
            "Opinar apenas uno empieza un trabajo se siente como un insulto",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 597
        },
        {
          Quote:
            "La Selección y la Inducción marcan la Cultura Organizacional. Y pocos les prestan atención.",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 598
        },
        {
          Quote: "Confiá en el empleado que se anima a mostrarse desocupado.",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 599
        },
        {
          Quote:
            "Tratá a tus empleados como niños… Y se comportarán como niños.",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 600
        },
        {
          Quote:
            "Todas las organizaciones cultivan una “Marca Empleadora”, aún sin darse cuenta.",
          Artículo: "Subite al Titanic S02E31",
          Source:
            "https://www.linkedin.com/pulse/subite-al-titanic-s02e31-leo-piccioli",
          Seq: 601
        },
        {
          Quote:
            "Los clientes menos rentables económicamente suelen pagar peor",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 602
        },
        {
          Quote:
            "Cuánto más complejo es el esquema de comisiones, menos tiempo se dedica a construir relaciones con los clientes -esfuerzo que no se puede medir (ergo, tampoco comisionar)",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 603
        },
        {
          Quote:
            "No hagamos a los vendedores responsables de la rentabilidad de la empresa",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 604
        },
        {
          Quote:
            "El trabajo del vendedor nunca termina con la venta, ni con la cobranza. Nunca termina.",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 605
        },
        {
          Quote:
            "No sirve que nos digan algo tanto como que nos hagan preguntas para descubrirlo solos. Si no, pregúntenle a Sócrates. O a su analista.",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 606
        },
        {
          Quote: "No vendemos. Ayudamos a otros a evaluar futuros posibles.",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 607
        },
        {
          Quote:
            "¿Recomendarías a un cliente a ir a la competencia si eso fuera lo que le conviene?",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 608
        },
        {
          Quote:
            "Lo que viene por Precio, por Precio se va. Lo que viene por Valor, se queda.",
          Artículo: "Muerte de un Vendedor S02E30",
          Source:
            "https://www.linkedin.com/pulse/muerte-de-un-vendedor-s02e30-leo-piccioli",
          Seq: 609
        },
        {
          Quote:
            "Si queremos convivir con las computadoras, tenemos que entenderlas",
          Artículo:
            "Las 6 (SEIS) reglas de la programación que todo humano debe conocer S02E29",
          Source:
            "https://www.linkedin.com/pulse/ni-se-te-ocurra-aprender-programar-s02e29-leo-piccioli",
          Seq: 610
        },
        {
          Quote: "Tus tareas repetitivas en el trabajo van a desaparecer",
          Artículo:
            "Las 6 (SEIS) reglas de la programación que todo humano debe conocer S02E29",
          Source:
            "https://www.linkedin.com/pulse/ni-se-te-ocurra-aprender-programar-s02e29-leo-piccioli",
          Seq: 611
        },
        {
          Quote: "Aprendé del más vago",
          Artículo:
            "Las 6 (SEIS) reglas de la programación que todo humano debe conocer S02E29",
          Source:
            "https://www.linkedin.com/pulse/ni-se-te-ocurra-aprender-programar-s02e29-leo-piccioli",
          Seq: 612
        },
        {
          Quote:
            "Hay quien dice que es 95% transpiración y 5% inspiración. Falta el 100% de testeo",
          Artículo:
            "Las 6 (SEIS) reglas de la programación que todo humano debe conocer S02E29",
          Source:
            "https://www.linkedin.com/pulse/ni-se-te-ocurra-aprender-programar-s02e29-leo-piccioli",
          Seq: 613
        },
        {
          Quote: "Tu opinión no me interesa. Testealo y charlamos",
          Artículo:
            "Las 6 (SEIS) reglas de la programación que todo humano debe conocer S02E29",
          Source:
            "https://www.linkedin.com/pulse/ni-se-te-ocurra-aprender-programar-s02e29-leo-piccioli",
          Seq: 614
        },
        {
          Quote:
            "Las organizaciones se olvidan de hacer más eficientes los procesos 'negativos', como las devoluciones, lo que los hace aún más negativos",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 615
        },
        {
          Quote:
            "El cliente es el único que tiene una visión holística de tu empresa",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 616
        },
        {
          Quote:
            "A veces suponemos que el otro actúa con malicia, antes de ponernos en su lugar",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 617
        },
        {
          Quote: "Los objetivos imposibles son cada vez más posibles",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 618
        },
        {
          Quote: "Todos queremos ser parte de algo mayor",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 619
        },
        {
          Quote:
            "El líder es responsable de la coherencia entre los diferentes objetivos",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 620
        },
        {
          Quote:
            "Un objetivo ambicioso compartido ayuda a romper los paradigmas antiguos",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 621
        },
        {
          Quote:
            "“... los que están lo suficientemente locos como para pensar que pueden cambiar el mundo, son los que lo hacen”. Steve Jobs.",
          Artículo: "El Poder de los Objetivos Imposibles S02E28",
          Source:
            "https://www.linkedin.com/pulse/el-poder-de-los-objetivos-imposibles-s02e28-leo-piccioli",
          Seq: 622
        },
        {
          Quote:
            "Al miedo no le importa que racionalmente algo tenga sentido, tiene sus propias razones",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 623
        },
        {
          Quote:
            "No te pongas demasiado feliz por un elogio, porque una crítica te va a generar lo opuesto",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 624
        },
        {
          Quote:
            "Planteate un objetivo que, cada paso que des, te haga sentir bien",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 625
        },
        {
          Quote:
            "Somos más los que no nos quejamos. No nos olvidemos de que el que se queja siempre es más ruidoso.",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 626
        },
        {
          Quote: "Si no cuento los errores, los aciertos no son creíbles",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 627
        },
        {
          Quote:
            "El Branding es al Marketing como Instagram a las Redes Sociales",
          Artículo: "Emprender Duele S02E27",
          Source:
            "https://www.linkedin.com/pulse/emprender-duele-s02e27-leo-piccioli",
          Seq: 628
        },
        {
          Quote:
            "El ROI del entrenamiento está aumentando exponencialmente dada la mayor expectativa de vida y el mayor impacto del humano gracias a la automatización",
          Artículo: "¿Qué vas a Hacer entre tus 70 y 120 Años? S02E26",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-vas-hacer-entre-tus-70-y-120-a%C3%B1os-s02e26-leo-piccioli",
          Seq: 629
        },
        {
          Quote:
            "La expectativa de vida de una persona al nacer es de 75 años, mientras que la de una empresa es de menos de 5",
          Artículo: "¿Qué vas a Hacer entre tus 70 y 120 Años? S02E26",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-vas-hacer-entre-tus-70-y-120-a%C3%B1os-s02e26-leo-piccioli",
          Seq: 630
        },
        {
          Quote: "Nadie más es responsable de nuestro desarrollo",
          Artículo: "¿Qué vas a Hacer entre tus 70 y 120 Años? S02E26",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-vas-hacer-entre-tus-70-y-120-a%C3%B1os-s02e26-leo-piccioli",
          Seq: 631
        },
        {
          Quote:
            "Todos valoraremos más la capacitación que den las empresas. Menos las empresas.",
          Artículo: "¿Qué vas a Hacer entre tus 70 y 120 Años? S02E26",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-vas-hacer-entre-tus-70-y-120-a%C3%B1os-s02e26-leo-piccioli",
          Seq: 632
        },
        {
          Quote:
            "Tener un hijo. Plantar un árbol. Comprar 1 BTC. Hacer un curso en video.",
          Artículo: "¿Qué vas a Hacer entre tus 70 y 120 Años? S02E26",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-vas-hacer-entre-tus-70-y-120-a%C3%B1os-s02e26-leo-piccioli",
          Seq: 633
        },
        {
          Quote:
            "El foco ayuda a direccionar la energía. La diferenciación, a que seas más fácil de elegir. Foco + Diferenciación + Mercado = Éxito.",
          Artículo:
            "Nunca te Rías de un Nerd, Puede Convertirse en tu Jefe S02E25",
          Source:
            "https://www.linkedin.com/pulse/nunca-te-r%C3%ADas-de-un-nerd-puede-convertirse-en-tu-jefe-leo-piccioli",
          Seq: 634
        },
        {
          Quote: "Todo lo repetitivo se puede automatizar. Todo.",
          Artículo:
            "Nunca te Rías de un Nerd, Puede Convertirse en tu Jefe S02E25",
          Source:
            "https://www.linkedin.com/pulse/nunca-te-r%C3%ADas-de-un-nerd-puede-convertirse-en-tu-jefe-leo-piccioli",
          Seq: 635
        },
        {
          Quote:
            "Los humanos no están entrenados para conversar con programadores. Y viceversa.",
          Artículo:
            "Nunca te Rías de un Nerd, Puede Convertirse en tu Jefe S02E25",
          Source:
            "https://www.linkedin.com/pulse/nunca-te-r%C3%ADas-de-un-nerd-puede-convertirse-en-tu-jefe-leo-piccioli",
          Seq: 636
        },
        {
          Quote: "Regla #1 de Programación: no programar algo que ya existe",
          Artículo:
            "Nunca te Rías de un Nerd, Puede Convertirse en tu Jefe S02E25",
          Source:
            "https://www.linkedin.com/pulse/nunca-te-r%C3%ADas-de-un-nerd-puede-convertirse-en-tu-jefe-leo-piccioli",
          Seq: 637
        },
        {
          Quote: "¡Abrazá a un programador hoy!",
          Artículo:
            "Nunca te Rías de un Nerd, Puede Convertirse en tu Jefe S02E25",
          Source:
            "https://www.linkedin.com/pulse/nunca-te-r%C3%ADas-de-un-nerd-puede-convertirse-en-tu-jefe-leo-piccioli",
          Seq: 638
        },
        {
          Quote: "Tenemos inclinación a decir lo que el otro quiere escuchar",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 639
        },
        {
          Quote: "A veces decimos lo que creemos que nos conviene decir",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 640
        },
        {
          Quote: "Decir la verdad con cuidado ayuda a mejorar",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 641
        },
        {
          Quote: "Todos mienten",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 642
        },
        {
          Quote: "El líder ya no es perfecto, ahora es humano",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 643
        },
        {
          Quote:
            "Un Excel o un Powerpoint puede “demostrar” casi cualquier opinión; hay que aprender a ver más allá",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 644
        },
        {
          Quote:
            "Tengo este Excel que demuestra A. Si no te gusta A, tengo otro Excel.",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 645
        },
        {
          Quote:
            "Todos mentimos. No me creas nada. Formá tus propias opiniones y tomá tus propias decisiones sin culpar a nadie más.",
          Artículo: "Todos Mentimos S02E24",
          Source:
            "https://www.linkedin.com/pulse/todos-mentimos-s02e24-leo-piccioli",
          Seq: 646
        },
        {
          Quote:
            "Si querés que tu crítica construya, tomate tu tiempo y generá el contexto para compartirla",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 647
        },
        {
          Quote:
            "La motivación externa, para funcionar, tiene que ser sostenida",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 648
        },
        {
          Quote:
            "Cuando un CEO dice que le gusta el café su equipo va y compra una plantación",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 649
        },
        {
          Quote:
            "Si una capacitación no genera un cambio permanente, fue inútil",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 650
        },
        {
          Quote: "¿Será que queremos que nos traten como individuos?",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 651
        },
        {
          Quote:
            "Para una organización ser eficiente y rápida, las decisiones deben tomarse lo más abajo de la pirámide posible",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 652
        },
        {
          Quote: "No capacitar a quien no se quiere capacitar",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 653
        },
        {
          Quote:
            "Hay básicamente tres formas de colocar precios: basado en el costo, basado en el valor o basado en el mercado.",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 654
        },
        {
          Quote:
            "El precio debe ser función del Valor percibido. El Valor percibido depende de lo que el cliente entiende que va a recibir.",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 655
        },
        {
          Quote:
            "Al no decir “no” a tiempo, estamos prometiendo implícitamente algo. Después no cumplimos.",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 656
        },
        {
          Quote:
            "Es mejor gratis que barato. Gratis da orgullo. Barato lo quita.",
          Artículo: "¿Y si los Entrenamos Mal y se van Por Eso? S02E23",
          Source:
            "https://www.linkedin.com/pulse/y-si-los-entrenamos-mal-se-van-por-eso-s02e23-leo-piccioli",
          Seq: 657
        },
        {
          Quote: "El mal servicio automático es peor servicio",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 658
        },
        {
          Quote: "Automatizar la estupidez es más estúpido",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 659
        },
        {
          Quote: "¿Fue Henry Ford el Uber del siglo XX?",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 660
        },
        {
          Quote:
            "Los robots son siempre protagonistas. Solo los humanos nos victimizamos.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 661
        },
        {
          Quote:
            "Aun cuando uno sabe que va a perder, prefiere ponerse del lado del pequeño",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 662
        },
        {
          Quote: "La tecnología es como la evolución: imparable",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 663
        },
        {
          Quote:
            "Evaluamos y planificamos en base a estadísticas del siglo XX para medir el siglo XXI",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 664
        },
        {
          Quote: "El trabajo no dignifica. La vida es digna.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 665
        },
        {
          Quote:
            "El Ingreso Universal es el inverso de la Esclavitud; uno es trabajo sin ingreso, el otro ingreso sin trabajo",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 666
        },
        {
          Quote: "¿Y si trabajar no fuera tan importante?",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 667
        },
        {
          Quote: "Valor, valor, valor, venta. Freemium.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 668
        },
        {
          Quote:
            "¿El Estado, no debería preguntar a sus ciudadanos si son felices en lugar de asumir que el empleo es tan importante?",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 669
        },
        {
          Quote:
            "Tomemos la rotación de personal como feature en vez de como bug.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 670
        },
        {
          Quote:
            "El veloz le gana al enorme. Tal vez sí haya que estar del lado de David.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 671
        },
        {
          Quote:
            "El desempleo, como lo medimos, va a aumentar; y seremos paradójicamente más felices y más dignos. Resistirse es fútil.",
          Artículo:
            "Los Robots no se Victimizan y los Humanos Seremos Felices S02E22",
          Source:
            "https://www.linkedin.com/pulse/los-robots-se-victimizan-y-humanos-seremos-felices-s02e22-piccioli",
          Seq: 672
        },
        {
          Quote:
            "¿Por qué cuando otro hace algo mal una parte de nosotros quiere copiarlo?",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 673
        },
        {
          Quote:
            "¿Será que nos gusta la adrenalina, por eso posponemos las cosas?",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 674
        },
        {
          Quote:
            "Es sano cuando un título viene después de la realidad consumada",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 675
        },
        {
          Quote:
            "Si no lo hacés, no es porque te falta disciplina: es porque no decidiste realmente hacerlo",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 676
        },
        {
          Quote: "Disciplina: posponer placer presente por placer futuro",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 677
        },
        {
          Quote:
            "Aceptá tus limitaciones. Si hace falta, pedí ayuda en lo que no sos bueno y enfocate en lo que sí.",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 678
        },
        {
          Quote:
            "El exceso de Disciplina es una zona de confort. ¿Una excusa para no ser feliz?",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 679
        },
        {
          Quote:
            "¿Estás haciendo suficiente de lo que querés y de lo que debés?",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 680
        },
        {
          Quote:
            "Podés hacer lo que quieras. Salvo escapar a sus consecuencias. J. M. Keynes",
          Artículo: "Los Niños, el Dulce y el Modelo Industrialista S02E21",
          Source:
            "https://www.linkedin.com/pulse/los-ni%C3%B1os-el-dulce-y-modelo-industrialista-s02e21-leo-piccioli",
          Seq: 681
        },
        {
          Quote:
            "El valor de los commodities, sean tangibles o no, tiende a cero",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 682
        },
        {
          Quote: "Si las empresas solo fueran coherentes...",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 683
        },
        {
          Quote: "No rechaces lo viejo solo porque imaginás un futuro mejor",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 684
        },
        {
          Quote: "Nunca dejes de aprender",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 685
        },
        {
          Quote:
            "Ese momento de ansiedad en donde, con amor por el producto, le ponés precio y lo mostrás al mercado es hermoso. Y terrorífico.",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 686
        },
        {
          Quote: "Vivimos en una zona de confort de contenido",
          Artículo: "Mirá qué interesante... S02E20",
          Source:
            "https://www.linkedin.com/pulse/mir%C3%A1-qu%C3%A9-interesante-s02e20-leo-piccioli",
          Seq: 687
        },
        {
          Quote:
            "Todos somos únicos, el desafío es encontrar en qué intersección",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 688
        },
        {
          Quote:
            "Y el domingo pasado escribí mi artículo bisagra, probablemente el más leído de toda mi vida. Tanto, que a las dos horas de publicado ya tenía gente de India y EE.UU. pidiendo que lo traduciera. Me sorprendió, me llenó de orgullo y me dio placer porque estaba compartiendo algo de acuerdo a mis valores.",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 689
        },
        {
          Quote:
            "A veces te preocupás demasiado por “el qué dirán” como si fueras el centro del Universo",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 690
        },
        {
          Quote:
            "Éxito' es una opinión. Cambiá el objetivo y un fracaso se convierte en éxito.",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 691
        },
        {
          Quote: "Ante la duda, hacé lo que te enorgullezca",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 692
        },
        {
          Quote:
            "Decidí que no me interesa maximizar los lectores, por eso escribo este artículo que maximiza los lectores contándotelo.",
          Artículo: "¿Feliz Cumpleaños Para Mí? S02E19",
          Source:
            "https://www.linkedin.com/pulse/feliz-cumplea%C3%B1os-para-m%C3%AD-s02e19-leo-piccioli",
          Seq: 693
        },
        {
          Quote:
            "Sin darte cuenta, vas a aplicar soluciones similares a problemas totalmente diferentes. A veces es innovador.",
          Artículo: "¿Loco o Burro? S02E18",
          Source:
            "https://www.linkedin.com/pulse/loco-o-burro-s02e18-leo-piccioli",
          Seq: 694
        },
        {
          Quote:
            "Todos podemos tener una Visión individual en el trabajo; el líder tiene que cuidar el alineamiento general",
          Artículo: "¿Loco o Burro? S02E18",
          Source:
            "https://www.linkedin.com/pulse/loco-o-burro-s02e18-leo-piccioli",
          Seq: 695
        },
        {
          Quote:
            "La Visión debe estar enfocada en lo que queremos que el cliente sienta. Compramos y vendemos emociones, no productos o servicios.",
          Artículo: "¿Loco o Burro? S02E18",
          Source:
            "https://www.linkedin.com/pulse/loco-o-burro-s02e18-leo-piccioli",
          Seq: 696
        },
        {
          Quote:
            "Si tu Visión es única, no tendrás competidores. Solo falta validar que haya demanda para esa Visión.",
          Artículo: "¿Loco o Burro? S02E18",
          Source:
            "https://www.linkedin.com/pulse/loco-o-burro-s02e18-leo-piccioli",
          Seq: 697
        },
        {
          Quote: "Siempre copiamos algo, incluso cuando innovamos",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 698
        },
        {
          Quote:
            "La diferenciación basada en Valores es más difícil, pero más sólida",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 699
        },
        {
          Quote:
            "Solemos pensar que tenemos razón y el otro es limitado. También en eso estamos equivocados.",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 700
        },
        {
          Quote: "Nunca aceptes que dos objetivos sean igual de importantes",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 701
        },
        {
          Quote:
            "Cuando somos adolescentes queremos ser parecidos, cuando crecemos queremos ser diferentes",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 702
        },
        {
          Quote:
            "Es importante alinear los objetivos de la organización a los de su líder o viceversa",
          Artículo: "Diferenciación y Visión, más que una Rima S02E17",
          Source:
            "https://www.linkedin.com/pulse/diferenciaci%C3%B3n-y-visi%C3%B3n-m%C3%A1s-que-una-rima-s02e17-leo-piccioli",
          Seq: 703
        },
        {
          Quote:
            "Cuando estés ansioso, preguntate si lo podés cambiar. Si no podés, no es ansiedad. Seguí adelante.",
          Artículo: "Radio Gaga S02E16",
          Source:
            "https://www.linkedin.com/pulse/radio-gaga-s02e16-leo-piccioli",
          Seq: 704
        },
        {
          Quote: "La Confianza es como un puchero: se hace de a poco",
          Artículo: "Radio Gaga S02E16",
          Source:
            "https://www.linkedin.com/pulse/radio-gaga-s02e16-leo-piccioli",
          Seq: 705
        },
        {
          Quote:
            "Periódicamente revisá lo que elegías cuando eras “libre”, de niño o adolescente: tal vez llegó la hora",
          Artículo: "Radio Gaga S02E16",
          Source:
            "https://www.linkedin.com/pulse/radio-gaga-s02e16-leo-piccioli",
          Seq: 706
        },
        {
          Quote:
            "Una vez que colocás tus productos en el mercado, sentate a escuchar el feedback",
          Artículo: "Radio Gaga S02E16",
          Source:
            "https://www.linkedin.com/pulse/radio-gaga-s02e16-leo-piccioli",
          Seq: 707
        },
        {
          Quote:
            "Imaginate si, como los tenistas o músicos, todos cobráramos por algo que no parece trabajo",
          Artículo: "Radio Gaga S02E16",
          Source:
            "https://www.linkedin.com/pulse/radio-gaga-s02e16-leo-piccioli",
          Seq: 708
        },
        {
          Quote: "¿Cuántas veces compramos algo para llenar un agujero?",
          Artículo: "Aprendiendo de los Muebles S02E15",
          Source:
            "https://www.linkedin.com/pulse/aprendiendo-de-los-muebles-s02e15-leo-piccioli",
          Seq: 709
        },
        {
          Quote:
            "Lo importante es no dejar de hacerse preguntas', Albert Einstein",
          Artículo: "Aprendiendo de los Muebles S02E15",
          Source:
            "https://www.linkedin.com/pulse/aprendiendo-de-los-muebles-s02e15-leo-piccioli",
          Seq: 710
        },
        {
          Quote:
            "Si delegás tareas concretas, tendrás gente obediente que hace. Si alineás los Valores y delegás autoridad, formarás líderes.",
          Artículo: "Aprendiendo de los Muebles S02E15",
          Source:
            "https://www.linkedin.com/pulse/aprendiendo-de-los-muebles-s02e15-leo-piccioli",
          Seq: 711
        },
        {
          Quote:
            "Clave para afrontar el futuro: enfocarse en las necesidades -conocidas o no- del cliente y no en tus productos o servicio - tu ombligo",
          Artículo: "Aprendiendo de los Muebles S02E15",
          Source:
            "https://www.linkedin.com/pulse/aprendiendo-de-los-muebles-s02e15-leo-piccioli",
          Seq: 712
        },
        {
          Quote:
            "Pasamos de la idea del “paperless office” al “officeless worker”",
          Artículo: "Aprendiendo de los Muebles S02E15",
          Source:
            "https://www.linkedin.com/pulse/aprendiendo-de-los-muebles-s02e15-leo-piccioli",
          Seq: 713
        },
        {
          Quote: "¿En qué momento dejamos de entender la vida como un juego?",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 714
        },
        {
          Quote:
            "La queja es el recurso de la víctima para mantenerse en esa situación. El que hace, no tiene tiempo de quejarse.",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 715
        },
        {
          Quote: "Ayudar hace bien. Ayudar siempre, hace bien siempre.",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 716
        },
        {
          Quote: "No creas en las encuestas: todos mentimos",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 717
        },
        {
          Quote: "¿Qué pasaría si tomamos cada día como el Día 1?",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 718
        },
        {
          Quote: "Generemos entusiasmo. Es contagioso.",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 719
        },
        {
          Quote:
            "Si nos dejamos quitar los juegos en la infancia, es hora de tomarlos nuevamente",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 720
        },
        {
          Quote: "¿Qué intentaste mejorar hoy?",
          Artículo: "Mary Poppins y el Management S02E14",
          Source:
            "https://www.linkedin.com/pulse/mary-poppins-y-el-management-s02e14-leo-piccioli",
          Seq: 721
        },
        {
          Quote:
            "Frente al cambio tecnológico, tenemos dos opciones: ser Víctimas o Protagonistas",
          Artículo: "“Pitman, ¡y a ponerse a trabajar!” S02E13",
          Source:
            "https://www.linkedin.com/pulse/pitman-y-ponerse-trabajar-leo-piccioli",
          Seq: 722
        },
        {
          Quote:
            "La tecnología amenaza a algunas profesiones, pero también les permite organizarse para resistir o prepararse para liderar el cambio.",
          Artículo: "“Pitman, ¡y a ponerse a trabajar!” S02E13",
          Source:
            "https://www.linkedin.com/pulse/pitman-y-ponerse-trabajar-leo-piccioli",
          Seq: 723
        },
        {
          Quote:
            "La tecnología siempre triunfa, sino preguntale a un Neanderthal.",
          Artículo: "“Pitman, ¡y a ponerse a trabajar!” S02E13",
          Source:
            "https://www.linkedin.com/pulse/pitman-y-ponerse-trabajar-leo-piccioli",
          Seq: 724
        },
        {
          Quote: "Un rechazo puede confirmar el camino correcto",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 725
        },
        {
          Quote:
            "Hay dos tipos de libros, los best-sellers y los que solo compra su autor. Sin término medio.",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 726
        },
        {
          Quote:
            "“Escribir un libro” es un objetivo mediocre. Lo importante es la idea, el fondo, no la forma.",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 727
        },
        {
          Quote: "¿Para qué escribir un libro si con ocho páginas alcanza?",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 728
        },
        {
          Quote: "Compartir las ideas las fortalece",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 729
        },
        {
          Quote: "Hagamos un favor a los lectores, escribamos menos y mejor.",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 730
        },
        {
          Quote: "Las ideas no se queman a 451° Fahrenheit. Los libros sí.",
          Artículo: "Lo Bueno si Breve, se Lee S02E12",
          Source:
            "https://www.linkedin.com/pulse/lo-bueno-si-breve-se-lee-s02e12-leo-piccioli",
          Seq: 731
        },
        {
          Quote: "Si algo es siempre imprevisible, es previsible",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 732
        },
        {
          Quote:
            "¿En qué momento las empresas decidieron alejarse de sus clientes?",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 733
        },
        {
          Quote:
            "Los CEOs de estas empresas deberían ser sus propios clientes también",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 734
        },
        {
          Quote:
            "Ir a la “línea de frente” es una oportunidad genial de aprender",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 735
        },
        {
          Quote: "Éxito = Realidad / Expectativas &gt; 1",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 736
        },
        {
          Quote:
            "Muéstrame tu organigrama y te diré cuán orientado al cliente estás",
          Artículo:
            "Muéstrame tu Organigrama y te Diré qué Piensa tu Cliente S02E10",
          Source:
            "https://www.linkedin.com/pulse/mu%C3%A9strame-tu-organigrama-y-te-dir%C3%A9-qu%C3%A9-piensa-cliente-leo-piccioli",
          Seq: 737
        },
        {
          Quote:
            "Pedile a una “comisión” que cambie la realidad y apenas se va a animar a un 5%.",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 738
        },
        {
          Quote: "Tus competidores sabrán el menor precio al que vendés",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 739
        },
        {
          Quote:
            "Parecería que el miedo a que nos roben información es natural",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 740
        },
        {
          Quote:
            "Cuidá a tus clientes como si supieras que tu competidor tiene esa información tan valiosa",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 741
        },
        {
          Quote:
            "Los simulacros de evacuación son señal de que se cuida a la gente en una organización",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 742
        },
        {
          Quote:
            "La transparencia simplifica; la transparencia absoluta puede ser inhumana",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 743
        },
        {
          Quote:
            "Seamos íntegros: coherentes entre lo que decimos, hacemos y somos.",
          Artículo: "Para CEOs: La Integridad es Clave S02E09",
          Source:
            "https://www.linkedin.com/pulse/para-ceos-la-integridad-es-clave-s02e09-leo-piccioli",
          Seq: 744
        },
        {
          Quote:
            "Cuando dejamos de ser jóvenes dejamos de entenderlos, sin recordar que nos enojaba no ser entendidos",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 745
        },
        {
          Quote:
            "“Work-life balance” es otro oxímoron: work is a part of life. Viví mientras trabajás.",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 746
        },
        {
          Quote:
            "Nos programaron para acumular. Pero tener no nos da felicidad. Tenemos que reprogramarnos.",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 747
        },
        {
          Quote:
            "Los mayores de 45 tenemos que buscar trabajo con más humildad",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 748
        },
        {
          Quote:
            "Antes queríamos una carrera de largo plazo, ahora queremos una vida de largo plazo",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 749
        },
        {
          Quote:
            "De a poco, pasemos los libros de Ciencia Ficción a la sección de Historia",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 750
        },
        {
          Quote:
            "Hay 2 tipos de líderes, los que los jóvenes eligen y los que van a fracasar",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 751
        },
        {
          Quote:
            "No etiquetes. Las etiquetas son para los frascos. Y para las infografías.",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 752
        },
        {
          Quote: "Mi hija millennial lee mis artículos. A veces.",
          Artículo: "Millenials: las Etiquetas son para los Frascos S02E08",
          Source:
            "https://www.linkedin.com/pulse/millenials-las-etiquetas-son-para-los-frascos-leo-piccioli",
          Seq: 753
        },
        {
          Quote:
            "Si estoy a 4 niveles del CEO, hay 7 reportes por nivel, dedica 50% del tiempo al personal interno y el tiempo se reduce 50% por nivel, me va a dedicar una de cada 2744 horas de trabajo",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 754
        },
        {
          Quote: "Prepararse para que falle, para que no falle",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 755
        },
        {
          Quote: "En una presentación lo que menos importa es la presentación",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 756
        },
        {
          Quote:
            "Hablar en público es un músculo. Entrenalo. Igual que Liderar.",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 757
        },
        {
          Quote: "Entender a la audiencia y lo que realmente espera es clave",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 758
        },
        {
          Quote:
            "Es muy, pero muy difícil preparar un Powerpoint para otro y que discurso e imagen sean coherentes",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 759
        },
        {
          Quote:
            "El aplauso es la confirmación de la entrega, de la generosidad",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 760
        },
        {
          Quote: "Tenés que dar charlas hasta cambiar el aire",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 761
        },
        {
          Quote: "Los ritos ayudan a tranquilizar, incluso laboralmente",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 762
        },
        {
          Quote:
            "Cuando hablamos podemos transmitir emociones, hacer el mensaje mucho más completo: esa es la clave de la oratoria, no transmitir ideas, sino que la audiencia las sienta.",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 763
        },
        {
          Quote: "No compitas si sabés que vas a perder y no vas a aprender",
          Artículo: "¿Hablo Yo o Pasa un Tren? S02E07",
          Source:
            "https://www.linkedin.com/pulse/hablo-yo-o-pasa-un-tren-s02e07-leo-piccioli",
          Seq: 764
        },
        {
          Quote:
            "La innovación marginal fue desde dentro, pero la disrupción requirió una empresa nueva",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 765
        },
        {
          Quote:
            "A veces hay que agitar fantasmas de disrupción para que los equipos reaccionen",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 766
        },
        {
          Quote:
            "Una disrupción nace de ver un problema hoy y soñar su solución en el largo plazo",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 767
        },
        {
          Quote:
            "¿Se imaginan un mundo en donde los carteros evitaron el crecimiento del email?",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 768
        },
        {
          Quote: "Todo cambia menos el hecho de que todo cambia",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 769
        },
        {
          Quote:
            "Para que exista un Cambio, se necesitan tres factores: Insatisfacción, Visión y Proceso.",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 770
        },
        {
          Quote: "Equipo que gana se toca. Para que vuelva a ganar.",
          Artículo: "Intrapreneurship: ¿El Oxímoron del Año? S02E06",
          Source:
            "https://www.linkedin.com/pulse/intrapreneurship-el-ox%C3%ADmoron-del-a%C3%B1o-leo-piccioli",
          Seq: 771
        },
        {
          Quote:
            "Una empresa no debe contratar a quien más lo necesita, sino a quien más valor le agrega",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 772
        },
        {
          Quote: "Si estás buscando, no avises; buscá.",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 773
        },
        {
          Quote: "Dejemos de etiquetar. Las etiquetas son para los frascos.",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 774
        },
        {
          Quote:
            "La primera Responsabilidad Social de una empresa es ganar dinero de manera sostenible",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 775
        },
        {
          Quote:
            "Prueba ácida de Responsabilidad Social: si la empresa está en crisis, ¿va a mantener el nivel de ayuda o lo va a reducir?",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 776
        },
        {
          Quote:
            "¿Será realmente que empresas y personas nos movemos solamente por motivos tan egoístas que nos da vergüenza aceptarlo?",
          Artículo: "Mendigos Sociedad Anónima S02E05",
          Source:
            "https://www.linkedin.com/pulse/mendigos-sociedad-an%C3%B3nima-s02e05-leo-piccioli",
          Seq: 777
        },
        {
          Quote:
            "Si hay “n” partes en una negociación, tiene que haber al menos “n” variables en juego para que sea win-win",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 778
        },
        {
          Quote:
            "Contratar solo referidos garantiza camarillas, rumores y descontento",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 779
        },
        {
          Quote: "Liderar requiere equilibrio entre escuchar y hacer",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 780
        },
        {
          Quote:
            "Si los empresarios hubieran sabido que nacerían los sindicatos, ¿habrían cuidado más a sus empleados?",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 781
        },
        {
          Quote:
            "Minimizá la gente que contratás, para poder cuidarlos y desarrollarlos mejor",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 782
        },
        {
          Quote:
            "El mundo se divide en dos tipos de personas, los que entienden que hay infinitos grises y los que dividen al mundo en dos tipos de personas",
          Artículo: "La Tijerita S02E04",
          Source:
            "https://www.linkedin.com/pulse/la-tijerita-s02e04-leo-piccioli",
          Seq: 783
        },
        {
          Quote:
            "Las regulaciones son fáciles de crear y difíciles de eliminar, y después no hay forma de que se cumplan todas.",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 784
        },
        {
          Quote:
            "La experiencia sin capacidad de análisis genera historias interesantes; la capacidad de análisis sin la experiencia genera “expertos que no hicieron nada”; podemos aprender más de quienes combinan ambas cosas",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 785
        },
        {
          Quote:
            "Tu vida laboral es un Emprendimiento, con inversores, proyectos y desafíos de corto y largo plazo",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 786
        },
        {
          Quote:
            "Confiá más en quien te dice “no” a veces que en quien te dice “sí” siempre",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 787
        },
        {
          Quote:
            "Actuá con la convicción de que, vista desde el final, tu vida va a hacer mucho sentido",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 788
        },
        {
          Quote: "Una herencia es un error de cálculo",
          Artículo: "Elige tu Propia Aventura S02E03",
          Source:
            "https://www.linkedin.com/pulse/elige-tu-propia-aventura-leo-piccioli",
          Seq: 789
        },
        {
          Quote:
            "Las limitaciones externas son fuente de inspiración porque fuerzan a enfocarse",
          Artículo: "Vos Sí, Vos No S02E02",
          Source: "https://www.linkedin.com/pulse/vos-s%C3%AD-leo-piccioli",
          Seq: 790
        },
        {
          Quote:
            "Con la misma inversión, trabajar la Marca Empleadora puede generar muchas más ventas que el Branding Tradicional",
          Artículo: "Vos Sí, Vos No S02E02",
          Source: "https://www.linkedin.com/pulse/vos-s%C3%AD-leo-piccioli",
          Seq: 791
        },
        {
          Quote:
            "Si buscás de la misma manera que siempre, vas a encontrar a la misma gente de siempre",
          Artículo: "Vos Sí, Vos No S02E02",
          Source: "https://www.linkedin.com/pulse/vos-s%C3%AD-leo-piccioli",
          Seq: 792
        },
        {
          Quote:
            "¿Qué pasa si asumimos que no nos van a llamar y nos sorprendemos si lo hacen?",
          Artículo: "Vos Sí, Vos No S02E02",
          Source: "https://www.linkedin.com/pulse/vos-s%C3%AD-leo-piccioli",
          Seq: 793
        },
        {
          Quote:
            "Es fácil darle bola a quien necesitás. Pero si prestás atención a quién no necesitás, cosas buenas van a aparecer.",
          Artículo: "Vos Sí, Vos No S02E02",
          Source: "https://www.linkedin.com/pulse/vos-s%C3%AD-leo-piccioli",
          Seq: 794
        },
        {
          Quote:
            "Lo que siempre valoraste de la empresa, ¿es realmente tan importante?",
          Artículo: "Season 02 Episode 01 - CTRL+ALT+DEL",
          Source:
            "https://www.linkedin.com/pulse/season-02-episode-01-ctrlaltdel-leo-piccioli",
          Seq: 795
        },
        {
          Quote:
            "Si somos conscientes de que con disciplina solamente no podemos, pidamos ayuda",
          Artículo: "Season 02 Episode 01 - CTRL+ALT+DEL",
          Source:
            "https://www.linkedin.com/pulse/season-02-episode-01-ctrlaltdel-leo-piccioli",
          Seq: 796
        },
        {
          Quote:
            "Alguna vez te preguntaste -y te respondiste con sinceridad- ¿qué pasa si no vas?",
          Artículo: "Season 02 Episode 01 - CTRL+ALT+DEL",
          Source:
            "https://www.linkedin.com/pulse/season-02-episode-01-ctrlaltdel-leo-piccioli",
          Seq: 797
        },
        {
          Quote: "Solo la gente aburrida se aburre. Y se queja.",
          Artículo: "Season 02 Episode 01 - CTRL+ALT+DEL",
          Source:
            "https://www.linkedin.com/pulse/season-02-episode-01-ctrlaltdel-leo-piccioli",
          Seq: 798
        },
        {
          Quote:
            "Como buen economista, soy capaz de explicar cualquier cosa. Así que no me crean.",
          Artículo: "Season 02 Episode 01 - CTRL+ALT+DEL",
          Source:
            "https://www.linkedin.com/pulse/season-02-episode-01-ctrlaltdel-leo-piccioli",
          Seq: 799
        },
        {
          Quote:
            "Es mejor discutir fuerte un presupuesto que sufrir todo el año por no alcanzarlo",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 800
        },
        {
          Quote:
            "La diferencia entre estar un dólar debajo del presupuesto y uno arriba es mucho más que dos dólares",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 801
        },
        {
          Quote:
            "Enfocarse solo en un resultado numérico destruirá el resto de tus valores",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 802
        },
        {
          Quote: "Si no fluye, no fluye",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 803
        },
        {
          Quote:
            "El MVP (Minimum Viable Product) se puede aplicar a tu carrera",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 804
        },
        {
          Quote: "Pedí ayuda honestamente. Honestamente, te vas a sorprender.",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 805
        },
        {
          Quote: "La jaula de oro suaviza los valles. Pero también los picos.",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 806
        },
        {
          Quote:
            "La vida es una montaña rusa. Levantá los brazos, gritá y disfrutá del viento.",
          Artículo: "Hasta la Vista, Baby",
          Source:
            "https://www.linkedin.com/pulse/hasta-la-vista-baby-leo-piccioli",
          Seq: 807
        },
        {
          Quote:
            "Todo lo que hacemos en la vida nos forma para lo que haremos después.",
          Artículo:
            "Lo que Hacer Política en los Noventa me dio para ser CEO 20 Años Después",
          Source:
            "https://www.linkedin.com/pulse/lo-que-hacer-pol%C3%ADtica-en-los-noventa-me-dio-para-ser-ceo-leo-piccioli",
          Seq: 808
        },
        {
          Quote: "Vulnerability is key to building human connections",
          Artículo: "Water your Grass Prior to Looking over the Fence",
          Source:
            "https://www.linkedin.com/pulse/water-your-grass-prior-looking-over-fence-leo-piccioli",
          Seq: 809
        },
        {
          Quote:
            "Whether criticism is constructive or not depends on the receiver, not on the issuer",
          Artículo: "Water your Grass Prior to Looking over the Fence",
          Source:
            "https://www.linkedin.com/pulse/water-your-grass-prior-looking-over-fence-leo-piccioli",
          Seq: 810
        },
        {
          Quote:
            "Before looking at the neighbor's grass make sure you water your own",
          Artículo: "Water your Grass Prior to Looking over the Fence",
          Source:
            "https://www.linkedin.com/pulse/water-your-grass-prior-looking-over-fence-leo-piccioli",
          Seq: 811
        },
        {
          Quote:
            "Imagine that instead of looking for a job you have to show yourself so that the job will find you",
          Artículo: "Water your Grass Prior to Looking over the Fence",
          Source:
            "https://www.linkedin.com/pulse/water-your-grass-prior-looking-over-fence-leo-piccioli",
          Seq: 812
        },
        {
          Quote:
            "The dream of every independent professional is to have a fixed entrance and that of every employee is to have freedom; What if we find ourselves in the middle?",
          Artículo: "Water your Grass Prior to Looking over the Fence",
          Source:
            "https://www.linkedin.com/pulse/water-your-grass-prior-looking-over-fence-leo-piccioli",
          Seq: 813
        },
        {
          Quote: "La Vulnerabilidad es clave para construir conexiones humanas",
          Artículo: "Antes de Mirar el Pasto del Vecino Regá el Propio",
          Source:
            "https://www.linkedin.com/pulse/antes-de-mirar-el-pasto-del-vecino-reg%C3%A1-propio-leo-piccioli",
          Seq: 814
        },
        {
          Quote:
            "Que una crítica sea constructiva o no depende del receptor, no del emisor",
          Artículo: "Antes de Mirar el Pasto del Vecino Regá el Propio",
          Source:
            "https://www.linkedin.com/pulse/antes-de-mirar-el-pasto-del-vecino-reg%C3%A1-propio-leo-piccioli",
          Seq: 815
        },
        {
          Quote:
            "Antes de mirar el pasto del vecino asegurate de regar el propio",
          Artículo: "Antes de Mirar el Pasto del Vecino Regá el Propio",
          Source:
            "https://www.linkedin.com/pulse/antes-de-mirar-el-pasto-del-vecino-reg%C3%A1-propio-leo-piccioli",
          Seq: 816
        },
        {
          Quote:
            "Imaginate que en vez de buscar trabajo tenés que mostrarte para que el trabajo te busque a vos",
          Artículo: "Antes de Mirar el Pasto del Vecino Regá el Propio",
          Source:
            "https://www.linkedin.com/pulse/antes-de-mirar-el-pasto-del-vecino-reg%C3%A1-propio-leo-piccioli",
          Seq: 817
        },
        {
          Quote:
            "El sueño de todo consultor independiente es tener una entrada fija y el de todo empleado es tener libertad; ¿y si nos encontramos en el medio?",
          Artículo: "Antes de Mirar el Pasto del Vecino Regá el Propio",
          Source:
            "https://www.linkedin.com/pulse/antes-de-mirar-el-pasto-del-vecino-reg%C3%A1-propio-leo-piccioli",
          Seq: 818
        },
        {
          Quote:
            "Animarse a hablar en público es un esfuerzo que la audiencia valora más de lo que pensás",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 819
        },
        {
          Quote:
            "Hay dos actitudes en un escenario. Dar o Esperar algo. Cuando Das, la audiencia lo agradece.",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 820
        },
        {
          Quote: "Decile a tu Ego que esto también pasará.",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 821
        },
        {
          Quote:
            "Hay miles de personas pasando por lo que estás pasando ahora. Los podés ayudar. Y pedir ayuda. Somos todos gurúes.",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 822
        },
        {
          Quote:
            "Yo no tengo la verdad de nada. O mejor dicho, todos la tenemos.",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 823
        },
        {
          Quote:
            "El miedo es una señal de que corrés riesgos. Como el que no arriesga no gana, el miedo a veces muestra el camino al éxito.",
          Artículo: "I am not your Guru",
          Source: "https://www.linkedin.com/pulse/i-am-your-guru-leo-piccioli",
          Seq: 824
        },
        {
          Quote:
            "Se crean más leyes de las que se anulan. Y eso es un problema serio.",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 825
        },
        {
          Quote:
            "Convencido de que los abogados nacieron humanos, creo que todavía hay esperanza",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 826
        },
        {
          Quote:
            "Los abogados, cuando nadie los mira, hacen chistes de humanos.",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 827
        },
        {
          Quote:
            "La gente piensa que cuando uno dice “Abogado del Diablo” lo malo es el Diablo.",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 828
        },
        {
          Quote: "La adolescencia es el peor momento para elegir una carrera",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 829
        },
        {
          Quote: "El mundo necesita más hacedores y menos abogados",
          Artículo: "9 Cosas que Un Abogado puede Hacer para Parecer Humano",
          Source:
            "https://www.linkedin.com/pulse/9-cosas-que-un-abogado-puede-hacer-para-parecer-humano-leo-piccioli",
          Seq: 830
        },
        {
          Quote:
            "¿Por qué la gente no va de frente, en el momento, a preguntar si lo que parece malo realmente lo es?",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 831
        },
        {
          Quote: "Lo que se mide mejora.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 832
        },
        {
          Quote: "El foco es clave para mejorar procesos.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 833
        },
        {
          Quote:
            "Si tus valores son diferentes a los de tu organización, vas a estar incómodo, muy incómodo.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 834
        },
        {
          Quote: "Las Reglas castigan al 99% por culpa del 1%.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 835
        },
        {
          Quote:
            "Las máximas pegadas en la pared son sólo intentos de crear Valores.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 836
        },
        {
          Quote:
            "¿Tenés una organización corrupta? Contratá más mujeres y la Ética va a mejorar.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 837
        },
        {
          Quote:
            "Si una idea le gusta a todo el mundo no debe ser tan buena idea.",
          Artículo: "Todos Sabemos Cómo Robar",
          Source:
            "https://www.linkedin.com/pulse/todos-sabemos-c%C3%B3mo-robar-leo-piccioli",
          Seq: 838
        },
        {
          Quote: "Cuantos más errores marcás, más inseguro te mostrás",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 839
        },
        {
          Quote:
            "Escribo título negativos porque el sufrimiento atrae y genera empatía, y artículos positivos porque la sonrisa y la esperanza hacen un mundo mejor. ¿Maquiavélico? Excelente, Smithers.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 840
        },
        {
          Quote:
            "No hace falta un tatuaje para generar un cambio de conducta permanente. ¿O sí?",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 841
        },
        {
          Quote: "¿De qué te vas a arrepentir más, de hacer mal o de no hacer?",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 842
        },
        {
          Quote:
            "No se puede cambiar todo al mismo tiempo. Necesitamos estabilidad en otros lugares para poder sacudir la estantería.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 843
        },
        {
          Quote:
            "Tomar decisiones -y no el resultado de las mismas- es clave para ser feliz.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 844
        },
        {
          Quote:
            "La libertad que da salir de “la jaula de oro” es una ilusión. Esa libertad solo puede venir de adentro. Y se puede tener en cualquier situación.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 845
        },
        {
          Quote:
            "Las empresas grandes dicen que no, pero nacieron diciendo que sí.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 846
        },
        {
          Quote:
            "Siempre hay, al menos, dos maneras de ver las cosas y ninguna es correcta o equivocada.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 847
        },
        {
          Quote:
            "Un líder tiene que estar convencido de que todo va a salir bien. Pero, al mismo tiempo, ser humilde y disciplinado para trabajar para que esto suceda.",
          Artículo: "YES! En la Jaula de Oro",
          Source:
            "https://www.linkedin.com/pulse/yes-en-la-jaula-de-oro-leo-piccioli",
          Seq: 848
        },
        {
          Quote:
            "Enfocarse solo en ganar (dinero/un partido/una elección/un presupuesto) destruirá el resto de tus valores.",
          Artículo: "Apple va a Quebrar",
          Source:
            "https://www.linkedin.com/pulse/apple-va-quebrar-leo-piccioli",
          Seq: 849
        },
        {
          Quote:
            "No alcanza con estar convencido de que las cosas van a mejorar. Hay que ser Protagonistas de un mundo mejor.",
          Artículo: "Apple va a Quebrar",
          Source:
            "https://www.linkedin.com/pulse/apple-va-quebrar-leo-piccioli",
          Seq: 850
        },
        {
          Quote:
            "A cada taxi le llega su Uber. Pero a cada Uber le llegará otro Uber.",
          Artículo: "Apple va a Quebrar",
          Source:
            "https://www.linkedin.com/pulse/apple-va-quebrar-leo-piccioli",
          Seq: 851
        },
        {
          Quote:
            "Inexorablemente, como le pasó a todos los imperios, Apple también se va a derrumbar.",
          Artículo: "Apple va a Quebrar",
          Source:
            "https://www.linkedin.com/pulse/apple-va-quebrar-leo-piccioli",
          Seq: 852
        },
        {
          Quote:
            "Todas las empresas van a quebrar, la pregunta es cuándo. Todos vamos a morir, la pregunta es cuándo.",
          Artículo: "Apple va a Quebrar",
          Source:
            "https://www.linkedin.com/pulse/apple-va-quebrar-leo-piccioli",
          Seq: 853
        },
        {
          Quote:
            "La felicidad requiere libertad. La libertad requiere coraje. No se puede ser corajudo todo el tiempo. Pero tampoco nunca.",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 854
        },
        {
          Quote:
            "Nunca hagas una pregunta que no estés dispuesto a hacerte a vos mismo.",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 855
        },
        {
          Quote:
            "Ganar dinero como objetivo no solo es malo para el individuo, es malo para la sociedad. Perdón, Adam Smith :-(",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 856
        },
        {
          Quote:
            "Antes de aceptar un desafío, pensá si al terminarlo el mundo va a ser un lugar mejor",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 857
        },
        {
          Quote:
            "Si todo son conversaciones, las herramientas para conversar pueden mejorar el futuro.",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 858
        },
        {
          Quote:
            "A veces los otros ven las cosas más claras de vos. Aprendé de vos a través del espejo de los otros.",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 859
        },
        {
          Quote:
            "O gratis o el precio que considero justo, los descuentos le quitan valor percibido y hacen que nos esforcemos menos",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 860
        },
        {
          Quote:
            "Es fantástico aprovechar al máximo los momentos de energía y adrenalina. Pero no creérsela. Esto también pasará.",
          Artículo: "Esto También Pasará",
          Source:
            "https://www.linkedin.com/pulse/esto-tambi%C3%A9n-pasar%C3%A1-leo-piccioli",
          Seq: 861
        },
        {
          Quote:
            "Cada decisão que você toma, mesmo que seja pequena, terá desconstrutores: isso prova que é uma decisão de verdade e não uma obviedade.",
          Artículo:
            "Por que Deixo uma Posição Sonhada numa Companhia Fantastica",
          Source:
            "https://www.linkedin.com/pulse/por-que-deixo-uma-posi%C3%A7%C3%A3o-sonhada-numa-companhia-leo-piccioli",
          Seq: 862
        },
        {
          Quote:
            "Espero ter ensinado a minha equipe a ser rebelde e a apostar na melhoria das coisas de acordo com os seus valores.",
          Artículo:
            "Por que Deixo uma Posição Sonhada numa Companhia Fantastica",
          Source:
            "https://www.linkedin.com/pulse/por-que-deixo-uma-posi%C3%A7%C3%A3o-sonhada-numa-companhia-leo-piccioli",
          Seq: 863
        },
        {
          Quote:
            "Quando teus report's começam a ficar carecas, talvez seja momento de retirar-se.",
          Artículo:
            "Por que Deixo uma Posição Sonhada numa Companhia Fantastica",
          Source:
            "https://www.linkedin.com/pulse/por-que-deixo-uma-posi%C3%A7%C3%A3o-sonhada-numa-companhia-leo-piccioli",
          Seq: 864
        },
        {
          Quote:
            "Você tem dúvidas do que fazer? Se nutra: convide pessoas que você admira ou respeita para tomar um café.",
          Artículo:
            "Por que Deixo uma Posição Sonhada numa Companhia Fantastica",
          Source:
            "https://www.linkedin.com/pulse/por-que-deixo-uma-posi%C3%A7%C3%A3o-sonhada-numa-companhia-leo-piccioli",
          Seq: 865
        },
        {
          Quote:
            "Vou seguir trabalhando para ajudar que cada líder desenvolva melhores líderes. Para que tenhamos um mundo melhor.",
          Artículo:
            "Por que Deixo uma Posição Sonhada numa Companhia Fantastica",
          Source:
            "https://www.linkedin.com/pulse/por-que-deixo-uma-posi%C3%A7%C3%A3o-sonhada-numa-companhia-leo-piccioli",
          Seq: 866
        },
        {
          Quote: "El cementerio está lleno de imprescindibles",
          Artículo: "Soy Solo",
          Source: "https://www.linkedin.com/pulse/soy-solo-leo-piccioli",
          Seq: 867
        },
        {
          Quote:
            "Aún en las decisiones más matemáticas, conviene dejar un espacio para el lado emocional",
          Artículo: "Soy Solo",
          Source: "https://www.linkedin.com/pulse/soy-solo-leo-piccioli",
          Seq: 868
        },
        {
          Quote:
            "Es mucho más fácil empezar de abajo y hacer un upgrade que al revés",
          Artículo: "Soy Solo",
          Source: "https://www.linkedin.com/pulse/soy-solo-leo-piccioli",
          Seq: 869
        },
        {
          Quote:
            "Mostrarse vulnerable es disruptivo en esta sociedad: somos todos vulnerables y valoro mucho tu ayuda.",
          Artículo: "Soy Solo",
          Source: "https://www.linkedin.com/pulse/soy-solo-leo-piccioli",
          Seq: 870
        },
        {
          Quote:
            "Every decision you make, even the smallest one, will have someone against it; it proves it was a real decision, and not something obvious.",
          Artículo: "Why I am Leaving a Dream Job at a Great Company",
          Source:
            "https://www.linkedin.com/pulse/why-i-am-leaving-dream-job-great-company-leo-piccioli",
          Seq: 871
        },
        {
          Quote:
            "I hope to have tought my team to rebel, to run risks to improve things always aligned with their Values.",
          Artículo: "Why I am Leaving a Dream Job at a Great Company",
          Source:
            "https://www.linkedin.com/pulse/why-i-am-leaving-dream-job-great-company-leo-piccioli",
          Seq: 872
        },
        {
          Quote:
            "When your direct reports start going bald, maybe you have to think about retirement.",
          Artículo: "Why I am Leaving a Dream Job at a Great Company",
          Source:
            "https://www.linkedin.com/pulse/why-i-am-leaving-dream-job-great-company-leo-piccioli",
          Seq: 873
        },
        {
          Quote:
            "Puzzled about what to do? Learn from others. Invite people you admire or respect for coffee.",
          Artículo: "Why I am Leaving a Dream Job at a Great Company",
          Source:
            "https://www.linkedin.com/pulse/why-i-am-leaving-dream-job-great-company-leo-piccioli",
          Seq: 874
        },
        {
          Quote:
            "I will continue working to help leaders develop better leaders. For us to have a better future.",
          Artículo: "Why I am Leaving a Dream Job at a Great Company",
          Source:
            "https://www.linkedin.com/pulse/why-i-am-leaving-dream-job-great-company-leo-piccioli",
          Seq: 875
        },
        {
          Quote:
            "Cada decisión que tomes, aún pequeña, tendrá detractores: eso prueba que era una decisión y no una tautología o una obviedad",
          Artículo: "Por qué dejo un Puesto Soñado en una Compañía Genial",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-en-una-compa%C3%B1%C3%ADa-genial-leo-piccioli",
          Seq: 876
        },
        {
          Quote:
            "Espero haberle enseñado a mi equipo a ser rebelde, a jugarse por mejorar las cosas de acuerdo a sus valores.",
          Artículo: "Por qué dejo un Puesto Soñado en una Compañía Genial",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-en-una-compa%C3%B1%C3%ADa-genial-leo-piccioli",
          Seq: 877
        },
        {
          Quote:
            "Cuando tus reportes se quedan sin pelo tal vez es hora de retirarte.",
          Artículo: "Por qué dejo un Puesto Soñado en una Compañía Genial",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-en-una-compa%C3%B1%C3%ADa-genial-leo-piccioli",
          Seq: 878
        },
        {
          Quote:
            "¿No sabés qué hacer? Nutrite: Invitá a gente que admires o respetes a tomar un café.",
          Artículo: "Por qué dejo un Puesto Soñado en una Compañía Genial",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-en-una-compa%C3%B1%C3%ADa-genial-leo-piccioli",
          Seq: 879
        },
        {
          Quote:
            "Voy a seguir trabajando para ayudar a que cada líder desarrolle líderes mejores. Para que todos tengamos un futuro mejor.",
          Artículo: "Por qué dejo un Puesto Soñado en una Compañía Genial",
          Source:
            "https://www.linkedin.com/pulse/por-qu%C3%A9-dejo-un-puesto-so%C3%B1ado-en-una-compa%C3%B1%C3%ADa-genial-leo-piccioli",
          Seq: 880
        },
        {
          Quote:
            "Conseguem imaginar um mundo aonde todo líder inspira seus liderados a superá-lo?",
          Artículo:
            "Que aconteceria se cada Líder desenvolve Melhores Líderes?",
          Source:
            "https://www.linkedin.com/pulse/que-aconteceria-se-cada-l%C3%ADder-desenvolve-melhores-lideres-piccioli",
          Seq: 881
        },
        {
          Quote:
            "Como objetivo, ser líder é medíocre. O desafio é liderar para tornar o mundo um mundo melhor.",
          Artículo:
            "Que aconteceria se cada Líder desenvolve Melhores Líderes?",
          Source:
            "https://www.linkedin.com/pulse/que-aconteceria-se-cada-l%C3%ADder-desenvolve-melhores-lideres-piccioli",
          Seq: 882
        },
        {
          Quote:
            "Como líder hay que asumir que uno escucha un pequeño porcentaje de lo que la gente conversa",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 883
        },
        {
          Quote:
            "Los rumores circulan más rápido cuando se basan en temores que en deseos",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 884
        },
        {
          Quote:
            "El rumor suele buscar hacer daño: dolor o enojo. Por eso lo mejor es hacer el esfuerzo de ignorarlo.",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 885
        },
        {
          Quote:
            "Muchas veces el rumor se alimenta del dolor que causa… Ocultar ese dolor, por más absurdo que sea, ayuda a minimizar el rumor.",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 886
        },
        {
          Quote: "Los rumores dicen mucho de quién los crea y los difunde",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 887
        },
        {
          Quote:
            "Un rumor le gana a un discurso, pero no puede ganarle a los hechos.",
          Artículo: "Quiero que Hablen a mis Espaldas: Anatomía de un Rumor",
          Source:
            "https://www.linkedin.com/pulse/quiero-que-hablen-mis-espaldas-anatom%C3%ADa-de-un-rumor-leo-piccioli",
          Seq: 888
        },
        {
          Quote:
            "La cultura de una organización se ve mejor en las pequeñas conductas que en las grandes declaraciones",
          Artículo: "El Líder Feliz",
          Source:
            "https://www.linkedin.com/pulse/el-l%C3%ADder-feliz-leo-piccioli",
          Seq: 889
        },
        {
          Quote:
            "Casi siempre un 15% de la gente adora una idea, al 70% le es irrelevante y el resto está (irreversiblemente) en contra. Convencer a los del medio es clave.",
          Artículo: "El Líder Feliz",
          Source:
            "https://www.linkedin.com/pulse/el-l%C3%ADder-feliz-leo-piccioli",
          Seq: 890
        },
        {
          Quote:
            "Sin miedo, no estaríamos vivos. Pero si el miedo supera a la pasión por hacer, tampoco lo estaríamos.",
          Artículo: "El Líder Feliz",
          Source:
            "https://www.linkedin.com/pulse/el-l%C3%ADder-feliz-leo-piccioli",
          Seq: 891
        },
        {
          Quote:
            "Para ser felices necesitamos libertad. La libertad tiene su precio: coraje y tolerancia.",
          Artículo: "El Líder Feliz",
          Source:
            "https://www.linkedin.com/pulse/el-l%C3%ADder-feliz-leo-piccioli",
          Seq: 892
        },
        {
          Quote:
            "Así funciona la cultura: los símbolos y procesos nacen, se contagian y se instalan sin que nadie sepa cómo empezaron.",
          Artículo: "Al CEO no lo Invitan a Afters",
          Source:
            "https://www.linkedin.com/pulse/al-ceo-lo-invitan-afters-leo-piccioli",
          Seq: 893
        },
        {
          Quote:
            "Para ser un buen líder, un introvertido debe esforzarse para interactuar y dejarse conocer.",
          Artículo: "Al CEO no lo Invitan a Afters",
          Source:
            "https://www.linkedin.com/pulse/al-ceo-lo-invitan-afters-leo-piccioli",
          Seq: 894
        },
        {
          Quote:
            "Un equipo será tan sólido como la relación de confianza más débil entre dos de sus integrantes.",
          Artículo: "Al CEO no lo Invitan a Afters",
          Source:
            "https://www.linkedin.com/pulse/al-ceo-lo-invitan-afters-leo-piccioli",
          Seq: 895
        },
        {
          Quote:
            "Pero, a pesar de que todos sabemos que “sentimos” cuando trabajamos, nos hicieron creer que está mal expresarlo.",
          Artículo: "¿Alguna vez Lloraste en el Trabajo? Yo sí.",
          Source:
            "https://www.linkedin.com/pulse/los-l%C3%ADderes-tambi%C3%A9n-lloramos-leo-piccioli",
          Seq: 896
        },
        {
          Quote: "Las emociones nunca se equivocan.",
          Artículo: "¿Alguna vez Lloraste en el Trabajo? Yo sí.",
          Source:
            "https://www.linkedin.com/pulse/los-l%C3%ADderes-tambi%C3%A9n-lloramos-leo-piccioli",
          Seq: 897
        },
        {
          Quote:
            "As a goal, being boss, CEO, manager or leader is irrelevant; it must be a tool for a larger good.",
          Artículo: "7 Reasons Why Being CEO Sucks",
          Source:
            "https://www.linkedin.com/pulse/7-reasons-why-being-ceo-sucks-leo-piccioli",
          Seq: 898
        },
        {
          Quote:
            "It’s all about finding and hiring people smarter than you. Getting them to join your business. And giving them good work. Then getting out of their way. And trusting them. '",
          Artículo:
            "What if All Leaders Developed Better Leaders Than Themselves?",
          Source:
            "https://www.linkedin.com/pulse/what-all-leaders-developed-better-than-themselves-leo-piccioli",
          Seq: 899
        },
        {
          Quote:
            "As a goal, being a leader is mediocre. It must be a tool to make the world a better place.",
          Artículo:
            "What if All Leaders Developed Better Leaders Than Themselves?",
          Source:
            "https://www.linkedin.com/pulse/what-all-leaders-developed-better-than-themselves-leo-piccioli",
          Seq: 900
        },
        {
          Quote:
            "Todo se basa en encontrar y contratar gente más inteligente que uno. Lograr que se unan a tu negocio. Y darle desafíos interesantes ('good work' en el original). Después, salir del medio. Y confiar.'",
          Artículo:
            "¿Qué Pasaría si cada Líder se Empeñase en Formar Gente Mejor que Uno?",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-pasar%C3%ADa-si-cada-l%C3%ADder-se-empe%C3%B1ase-en-formar-gente-leo-piccioli",
          Seq: 901
        },
        {
          Quote:
            "Ser líder como objetivo es mediocre. El desafío es liderar para hacer del mundo un mundo mejor.",
          Artículo:
            "¿Qué Pasaría si cada Líder se Empeñase en Formar Gente Mejor que Uno?",
          Source:
            "https://www.linkedin.com/pulse/qu%C3%A9-pasar%C3%ADa-si-cada-l%C3%ADder-se-empe%C3%B1ase-en-formar-gente-leo-piccioli",
          Seq: 902
        },
        {
          Quote:
            "El arte supremo de la Guerra es vencer al enemigo sin luchar.' Sun Tzu",
          Artículo:
            "9 Formas en que Emprendedores Empiezan una Guerra de Precios en Latinoamérica",
          Source:
            "https://www.linkedin.com/pulse/8-formas-en-que-emprendedores-empiezan-una-guerra-de-precios-leo",
          Seq: 903
        },
        {
          Quote:
            "La clave es entender el Valor que ofrecemos y mostrarlo; el precio será luego evidente.",
          Artículo:
            "9 Formas en que Emprendedores Empiezan una Guerra de Precios en Latinoamérica",
          Source:
            "https://www.linkedin.com/pulse/8-formas-en-que-emprendedores-empiezan-una-guerra-de-precios-leo",
          Seq: 904
        },
        {
          Quote:
            "¿Por qué hago esto? Porque si no atendemos bien a quienes quieren trabajar con nosotros, no va a ser creíble que cuidamos a quienes ya lo hacen.",
          Artículo:
            "Terrible Error de Reclutadores: Tienen que Conocer Mejor a su Cliente",
          Source:
            "https://www.linkedin.com/pulse/terrible-error-de-reclutadores-tienen-que-conocer-mejor-leo-piccioli",
          Seq: 905
        },
        {
          Quote:
            "No hay que olvidar que la reputación es nuestro mayor activo para conseguir un cliente o un empleo.",
          Artículo:
            "Terrible Error de Reclutadores: Tienen que Conocer Mejor a su Cliente",
          Source:
            "https://www.linkedin.com/pulse/terrible-error-de-reclutadores-tienen-que-conocer-mejor-leo-piccioli",
          Seq: 906
        },
        {
          Quote:
            "Ya no falta nada para poder traducir en tiempo real una conversación... ¿Cuánto falta para que los no videntes puedar ver a través del crowdsourcing, los sordos puedan oír, etc.?",
          Artículo: "Un Milagro: Ver Por Crowdsourcing",
          Source:
            "https://www.linkedin.com/pulse/un-milagro-ver-por-crowdsourcing-leo-piccioli",
          Seq: 907
        },
        {
          Quote:
            "Cuando uno persigue un objetivo de negocios, si lo hace bien, tiene suerte y el mercado acompaña puede ganar dinero. Cuando uno persigue puramente ganar dinero es más difícil lograrlo!",
          Artículo: "Seguí lo que te Apasiona - los $ Vienen Después",
          Source:
            "https://www.linkedin.com/pulse/segu%C3%AD-lo-que-te-apasiona-los-vienen-despu%C3%A9s-leo-piccioli",
          Seq: 908
        },
        {
          Quote:
            "La buena noticia es que podés garantizar el éxito más allá del éxito, incluso en un mundo en donde el éxito está más allá de tu control. Siempre podés elegir actuar con integridad, porque controlás tus conductas. No importa lo que otros hagan, como Ghandi nos incitaba, podés 'ser el cambio que querés ver en el mundo'. La integridad te da el poder incondicional de expresar tus valores y estar orgulloso de vos mismo. (Kofman)",
          Artículo: "Seguí lo que te Apasiona - los $ Vienen Después",
          Source:
            "https://www.linkedin.com/pulse/segu%C3%AD-lo-que-te-apasiona-los-vienen-despu%C3%A9s-leo-piccioli",
          Seq: 909
        },
        {
          Quote:
            "Some years ago my relationship with Excel changed dramatically. From abuse to almost leaving it. Now, I am human. I have conversations. I Listen.",
          Artículo: "Excel is Killing You - But You Have not Realized Yet",
          Source:
            "https://www.linkedin.com/pulse/excel-killing-you-have-realized-yet-leo-piccioli",
          Seq: 910
        },
        {
          Quote:
            "Hace unos años mi relación con el Excel cambió radicalmente. De abusar a casi dejarlo. Ahora soy humano. Converso. Escucho.",
          Artículo: "El Excel te está Matando y no te Diste Cuenta",
          Source:
            "https://www.linkedin.com/pulse/el-excel-te-est%C3%A1-matando-y-diste-cuenta-leo-piccioli",
          Seq: 911
        },
        {
          Quote: "Me gustaría añadirte a mi red profesional en LinkedIn'",
          Artículo: "El Coleccionista de Links",
          Source:
            "https://www.linkedin.com/pulse/el-coleccionista-de-links-leo-piccioli",
          Seq: 912
        },
        {
          Quote:
            "La verdad, acepto a todo el que me dé una explicación razonable, algún interés presente o futuro laboral en estar en contacto.",
          Artículo: "El Coleccionista de Links",
          Source:
            "https://www.linkedin.com/pulse/el-coleccionista-de-links-leo-piccioli",
          Seq: 913
        },
        {
          Quote:
            "Quien siempre prioriza las comisiones tiene una visión de muy corto plazo.",
          Artículo: "Las Comisiones Están Destruyendo las Empresas",
          Source:
            "https://www.linkedin.com/pulse/las-comisiones-est%C3%A1n-destruyendo-empresas-leo-piccioli",
          Seq: 914
        },
        {
          Quote:
            "Quiero gente con objetivos de largo plazo ambiciosos de verdad, que vean más allá del mes, trimestre, o año. No digo que no tome esas decisiones yo, muchas veces lo hago. Al fin, la Corporación me dice qué es importante y yo elijo . Pero es mucho más sano para la Empresa y para la Persona compartir una Visión de Largo Plazo perseguirla con pasión.",
          Artículo: "Las Comisiones Están Destruyendo las Empresas",
          Source:
            "https://www.linkedin.com/pulse/las-comisiones-est%C3%A1n-destruyendo-empresas-leo-piccioli",
          Seq: 915
        },
        {
          Quote:
            "Como objetivo, ser jefe, CEO, gerente o líder es solo una anécdota o casualidad; no sirve si no es una herramienta para lograr algo mayor.",
          Artículo: "7 Motivos por los que Ser CEO está Sobrevaluado",
          Source:
            "https://www.linkedin.com/pulse/7-motivos-por-los-que-ser-ceo-est%C3%A1-sobrevaluado-leo-piccioli",
          Seq: 916
        },
        {
          Quote:
            "I have found this to be a useful tool for doing business. You might want to give it a try.",
          Artículo: "4041 Días en LinkedIn: qué Obtuve y qué Viene",
          Source:
            "https://www.linkedin.com/pulse/4041-d%C3%ADas-en-linkedin-qu%C3%A9-obtuve-y-creo-que-viene-leo-piccioli",
          Seq: 917
        },
        {
          Quote: "Achei LinedIn uma ferramenta boa para fazer negócios.",
          Artículo: "4041 Días en LinkedIn: qué Obtuve y qué Viene",
          Source:
            "https://www.linkedin.com/pulse/4041-d%C3%ADas-en-linkedin-qu%C3%A9-obtuve-y-creo-que-viene-leo-piccioli",
          Seq: 918
        },
        {
          Quote:
            "Creo que LinkedIn es una buena herramienta para los negocios. Tal vez quieras probarla.",
          Artículo: "4041 Días en LinkedIn: qué Obtuve y qué Viene",
          Source:
            "https://www.linkedin.com/pulse/4041-d%C3%ADas-en-linkedin-qu%C3%A9-obtuve-y-creo-que-viene-leo-piccioli",
          Seq: 919
        },
        {
          Quote:
            "LinkedIn lets you reach recommended employees, hiring managers and business partners through referrals from people you already know and trust. You won't receive spam or unwanted requests since people can only reach you if I decide to forward a message to you because it looks like a good opportunity.",
          Artículo: "4041 Días en LinkedIn: qué Obtuve y qué Viene",
          Source:
            "https://www.linkedin.com/pulse/4041-d%C3%ADas-en-linkedin-qu%C3%A9-obtuve-y-creo-que-viene-leo-piccioli",
          Seq: 920
        },
        {
          Quote:
            "It would be great to have you in my professional network on LinkedIn. It's free to join through the link below.",
          Artículo: "4041 Días en LinkedIn: qué Obtuve y qué Viene",
          Source:
            "https://www.linkedin.com/pulse/4041-d%C3%ADas-en-linkedin-qu%C3%A9-obtuve-y-creo-que-viene-leo-piccioli",
          Seq: 921
        }
      ]
    };
  },
  mounted() {
    return this.reloadSelectedData();
  },
  methods: {
    getRandomNumber: function() {
      let rnd = Math.floor(Math.random() * (this.quotes.length - 0));
      return rnd;
    },
    reloadSelectedData: function() {
      this.selectedData = this.quotes[this.getRandomNumber()];
    },
    shareOnTwitter: function() {
      // Opens a pop-up with twitter sharing dialog
      var shareURL = "http://twitter.com/share?"; //url base
      //params
      var params = {
        url: this.selectedData.Source,
        text: this.formatedQuote + " by @LeoPiccioli"
      };
      for (var prop in params)
        shareURL += "&" + prop + "=" + encodeURIComponent(params[prop]);

      return window.open(
        shareURL,
        "",
        "left=0,top=0,width=550,height=450,personalbar=0,toolbar=0,scrollbars=0,resizable=0"
      );
    }
  },
  computed: {
    formatedQuote: function() {
      return '"' + this.selectedData.Quote + '"';
    }
  }
};
</script>
<style scoped>
.buttons {
  display: table;
  margin: 0 auto;
  padding-top: 3em;
}
.buttons img {
  height: 3em;
  width: 3em;
  padding: 0.5em;
}

.quote .principal {
  height: 15vh;
  font-size: 4vw;
}
.quote .sign {
  padding-top: 2em;
  font-size: 1.2em;
}
.quote .sign a {
  color: rgb(10, 10, 10);
}
.quote hr {
  width: 20%;
  height: 0.2rem;
  margin-left: auto;
  margin-right: auto;
  background-color: rgb(10, 10, 10);
  margin-top: 70px;
  margin-bottom: 70px;
}
</style>
