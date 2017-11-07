vkGetAdBudget <- function(account_id = NULL, access_token = NULL){
  
  #�������� ���������� ����������
  if(is.null(account_id)){
    stop("Enter a account_id, is required.")
  }
  
  if(is.null(access_token)){
    stop("Enter access_token, is required.")
  }
  #��������� ������
  query <- paste0("https://api.vk.com/method/ads.getBudget?account_id=",account_id,"&access_token=",access_token)
  answer <- GET(query)
  stop_for_status(answer)
  dataRaw <- content(answer, "parsed", "application/json")
  
  #�������� ������ �� ������� ������
  if(!is.null(dataRaw$error)){
    stop(paste0("Error ", dataRaw$error$error_code," - ", dataRaw$error$error_msg))
  }
  
  return(as.numeric(dataRaw$response))
}