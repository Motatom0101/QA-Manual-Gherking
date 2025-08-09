Feature: Emissão do certificado

    Eu, como aluno da platafoma X
    Gostaria, ao completar um curso, seja emitido certificado
    Porque, assim consigo compravar meu conhecimento técnico

Background: Estar matriculado no curso Gherkin completo
Given que estou logado na plataforma X
And e possuo matrícula ativa

Scenario Outline: Emissão de certificado
And matriculado no curso <nomeCurso>
When finalizo meu curso
Then tenho meu certificado emitido

Examples:
    | nomeCurso |
    | "Gherkin completo" |
    | "JavaScript completo" |
    | "Cypress completo" |

Scenario: Curso em andamento 
When assisto algumas aulas
Then não tenho meu certifica disponível
But possuo aulas assistidas

