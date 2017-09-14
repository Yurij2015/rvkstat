\name{vkGetAds}
\alias{vkGetAds}
\title{��������� ������ ���������� �� ���������}
\description{������� vkGetAds ��� ����������� �������� ������ ��������� ���������� �� ���������� �������� ���������}
\usage{
vkGetAds(account_id = NULL, client_id = NULL, include_deleted = TRUE, campaign_ids = "null", ad_ids = "null", access_token = NULL))
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkgetAccounts.}
  \item{client_id}{������������� �������, � �������� ������������� ��������� ����������. �������� � ����������� ��� ��������� ��������.}
  \item{include_deleted}{���������� TRUE ��� FALSE, ����, �������� ������������� ������ �������� ����������.}
  \item{campaign_ids}{�������� ������, ������ �� ��������� ���������.}
  \item{ad_ids}{�������� ������, ������ �� ��������� �����������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\details{
���� ������������ �������� ������� campaign_ids � ad_ids, �� �������� ����� ��������� ����������:
1. ���� id ���������� ������� � ad_ids, �� ��� ���������.
2. ���� ���������� ����������� ��������� ��������, ��� id ������ � campaign_ids, �� ��� ���������.
3. ���� ��������� ���������� � id, ��������� � ad_ids � ��� ����������� ��������, ��� id ������ � campaign_ids, �� ��� ��������� �������� ������������, �.�. ��� ��� ������� 2 �� ��������.

��������� �� ����� 2000 ���������� �� �� ����� ��� 2000 ��������. 
}
\value{���� ����� �� ���������� ����������:
1. id - ������������� ����������.
2. campaign_id - ������������� ��������.
3. name - �������� ����������.
4. status - ������ ����������. 
5. ad_format - ������ ����������.
6. approved - ������ ��������� ����������.
7. all_limit - ����� ����� ���������� � ������. 0 � ����� �� �����
8. create_time - ���� � ����� �������� ����������.
9. update_time - ���� � ����� ���������� ��������� ����������.
10. age_restriction - ����� � ���������� ����������� ����������.
11. category1_id - ID �������� ��� ���������� �������� ����������.
12. category2_id - ID �������� ��� ���������� �������� ����������. �������������� ��������.
13. cost_type - ��� ������.
14. cpc - ���� �� ������� � ��������.
15. cpm - ���� �� 1000 ������� � ��������.
16. impressions_limit -  ����������� ���������� ������� ������� ���������� �� ������ ������������. 
17. impressions_limited - ������� ����, ��� ���������� ������� ���������� �� ������ ������������ ����������. 
18. ad_platform - ��������� ��������, �� ������� ����� ������������ ����������. (���� ad_format ����� 1, 0 � ��������� � �����-��������, 1 � ������ ���������, (���� ad_format ����� 9) all � ��� ��������, desktop � ������ ������ �����, mobile � ��������� ���� � ����������.)
19. video - 1 � ���������� �������� �������������.


}
\author{
Alexey Seleznev
}

\examples{
##����������� � ���������
my_tok <- vkAuth(client_id = 1,client_secret = "H2Pk8htyFD8024mZaPHm")
#�������� ������ ����������
my_vk_ads <- vkGetAds(account_id = 11111111, 
                      access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.