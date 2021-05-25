module M2yLydians
  # Registration methods
  BASE_AUTHENTICATOR_PATH = 'Aut.svc'
  UPDATE_CREDENTIALS_PATH = '/AtualizarCredencial_37'
  CREATE_ACCESS_PASSWORD_PATH = '/AlterarSenhaAcesso_37'
  CHECK_ACCESS_PASSWORD_PATH = '/ValidarSenhaAcesso_37'
  UPDATE_ACCESS_PASSWORD_PATH = '/AtualizarSenhaAcesso_37'
  SAVE_SECURITY_QUESTIONS_PATH = '/AtualizarPerguntasSeg_37'
  CHECK_SECURITY_QUESTIONS_PATH = '/ValidarPerguntasSeg_37'
  SEND_SMS_PATH = '/EnviarMensagemSMS_37'
  TOKEN_SMS_PATH = '/EnviarCodigoSMS_37'
  VALIDATE_TOKEN_SMS_PATH = '/ValidarCodigoSMS_37'

  # Account methods
  BASE_ACCOUNT_PATH = 'Coc.svc'
  CREATE_ACCOUNT_PATH = '/IncluirCCDigital_37'
  LIST_ACCOUNTS_PATH = '/ListarCC_37'
  BALANCE_PATH = '/ContaSaldo_37'
  LINK_CARD_PATH = '/CartDebAtivarCartao_37'
  DESTINATION_ACCOUNT_PATH = '/ContaConsTitular_37'
  RANDOM_QUESTIONS_PATH = '/ConsultarIdPositiva_37'

  ### Billets ###
  GENERATE_BILLET_PATH = '/ContaDepBoleto_37'
  LIST_BILLET_PATH = '/ContaCartBoletos_37'
  BILLET_PDF_PATH = '/ContaDepBoletoPDF_37'

  ### Statement and receipts ###
  BANK_STATEMENT_PATH = '/ContaExtrato_37'
  RECEIPT_PATH = '/ContaExtratoDet_37'

  ### Transactions ###
  PERFORM_P2P_PATH = '/ContaPgtoTEF_37'
  PERFORM_TED_PATH = '/ContaPgtoTED_37'
  PERFORM_DOC_PATH = '/ContaPgtoDOC_37'
end
