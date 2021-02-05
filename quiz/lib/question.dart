class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(
    this.questionText, 
    this.option1,
    this.option2,
    this.option3, 
    this.option4, 
    this.answer
  );

  static List<Question> getQuestionList(){
    List<Question> questions = [];

    questions.add(Question(
      'Depois de uma década escrevendo canções em espanhol, qual artista alcançou fama internacional a partir de 2001 com as inglesas?', 
      'Enrique Iglesias', 
      'Camila Cabello', 
      'Shakira', 
      'Luis Fonsi', 
      3
    ));

    questions.add(Question(
      'Quais são os cantores que ficaram famosos nas rádios nas décadas de 20, 30 e 40?', 
      'Lamartine Babo, Carmem Miranda, Francisco Alves', 
      'Ivete Sangalo, Cláudia Leite, Daniela Mercury', 
      'Mc Marcinho, Mc Anita, Claudinho e Buchecha', 
      'Carmem Miranda, Daniela Mercury, Claudinho e Buchecha',
      1
    ));

    questions.add(Question(
      'А múѕіса "Еrа um Gаrоtо..." fоі rеgrаvаdа реlоѕ Еngеnhеіrоѕ dо Наwаіі еm 1990. Quаl múѕісо оu bаndа fеz ѕuсеѕѕо соm еѕѕа múѕіса nа éроса dа Јоvеm Guаrdа?', 
      'Roberto Carlos', 
      'Os Incríveis', 
      'Erasmo Carlos', 
      'Ronnie Von', 
      2
    ));

    questions.add(Question(
      'Qual é o tipo de Samba cantado nos desfiles das Escolas de Samba?', 
      'Samba de Enredo', 
      'Pagode', 
      'Samba', 
      'Todas as opções acima', 
      1
    ));

    questions.add(Question(
      'Qual o nome do vocalista da banda Jota Quest?', 
      'Marcus Menna', 
      'Di Ferrero', 
      'Rogério Flausino', 
      'Fernando Dias', 
      3
    ));

    questions.add(Question(
      'Qual é o nome verdadeiro da XUXA?', 
      'Maria da Graça', 
      'Maria de Fátima', 
      'Maria Isabel', 
      'Maria Helena', 
      1
    ));

    questions.add(Question(
      'Quem canta a música "As máscaras"?', 
      'Ivete Sangalo', 
      'Paula Toller', 
      'Pitty', 
      'Alinne Rosa', 
      2
    ));

    return questions;
  }
}