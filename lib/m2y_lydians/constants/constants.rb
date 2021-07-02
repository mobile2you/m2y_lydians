module M2yLydians
  ### Base paths ###
  BASE_AUTHENTICATOR_PATH = 'Aut.svc'
  BASE_ACCOUNT_PATH = 'Coc.svc'
  BASE_GLB_PATH = 'Glb.svc'

  ### Authenticator ###
  UPDATE_CREDENTIALS_PATH = '/AtualizarCredencial_37'
  CREATE_ACCESS_PASSWORD_PATH = '/AlterarSenhaAcesso_37'
  CHECK_ACCESS_PASSWORD_PATH = '/ValidarSenhaAcesso_37'
  UPDATE_ACCESS_PASSWORD_PATH = '/AtualizarSenhaAcesso_37'
  RANDOM_QUESTIONS_PATH = '/ConsultarIdPositiva_37'
  CHECK_RANDOM_ANSWER_PATH = '/ValidarIdPositiva_37'
  CREATE_TRANSACTION_PASSWORD_PASS = '/AlterarSenhaTrans_37'
  CHECK_TRANSACTION_PASSWORD_PATH = '/ValidarSenhaTrans_37'

  ### Account ###
  CREATE_ACCOUNT_PATH = '/IncluirCCDigital_37'
  BALANCE_PATH = '/ContaSaldo_37'
  LINK_CARD_PATH = '/CartDebAtivarCartao_37'
  DESTINATION_ACCOUNT_PATH = '/ContaConsTitular_37'

  ### Billets ###
  GENERATE_BILLET_PATH = '/ContaDepBoleto_37'
  LIST_BILLET_PATH = '/ContaCartBoletos_37'
  BILLET_PDF_PATH = '/ContaDepBoletoPDF_37'
  CHECK_BILLET_DATA_PATH = '/ContaPgtoBoleCons_37'
  PAY_BILLET_PATH = '/ContaPgtoBoleto_37'

  ### SMS ###
  SEND_SMS_PATH = '/EnviarMensagemSMS_37'
  TOKEN_SMS_PATH = '/EnviarCodigoSMS_37'
  VALIDATE_TOKEN_SMS_PATH = '/ValidarCodigoSMS_37'

  ### Statement & receipts ###
  BANK_STATEMENT_PATH = '/ContaExtrato_37'
  RECEIPT_PATH = '/ContaExtratoDet_37'

  ### Transactions ###
  PERFORM_P2P_PATH = '/ContaPgtoTEF_37'
  PERFORM_TED_PATH = '/ContaPgtoTED_37'
  PERFORM_DOC_PATH = '/ContaPgtoDOC_37'
  BANK_LIST_PATH = '/IFsConsultar_37'
end
