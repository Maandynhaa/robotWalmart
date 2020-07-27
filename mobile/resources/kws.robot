***Settings***
Documentation   Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***
Dado que acesso a página principal
   Wait Until Page Contains     ${TEXTO_WELCOME}    30 
   Click Text        ${TEXTO_NEXT}
   Click Text        ${TEXTO_NEXT}
   Click Text        ${TEXTO_STARTED} 
   Sleep             3
   Click Element     ${BOTAO_ENABLE}  
   Wait Until Page Contains     ${TEXTO_DENY}     15
   Click Element     ${BOTAO_DENY} 

Quando submeto o meu email "${email}"
    Wait Until Page Contains     ${TEXTO_SINGNIN}   15
    Click Element    ${BOTAO_SINGN}
    Sleep            2
    Input Value      ${CAMPO_EMAIL}     ${email}
    

E submeto minha senha "${senha}"
    Input Value      ${CAMPO_SENHA}    ${senha}
    Click Element    ${BOTAO_SINGNIN} 

Então devo receber a mensagem "${msg}"
    Wait Until Page Contains    ${msg}       15
