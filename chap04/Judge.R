rc <- read.csv("judge.csv")
D <- tapply(rc$��������, rc$��ͥ����, sum)
A <- tapply(rc$���߰�����, rc$��ͥ����, sum)
R <- tapply(rc$�Ʒ�������, rc$��ͥ����, sum)

���߰����� <- round(A/D*100000)/100; ���߰�����
�Ʒ������� <- round(R/D*100000)/100; �Ʒ�������

D <- tapply(rc$��������, rc$����, sum)
A <- tapply(rc$���߰�����, rc$����, sum)
R <- tapply(rc$�Ʒ�������, rc$����, sum)

ii <- order(�Ʒ�������, ���߰�����)
cbind(���߰�����, �Ʒ�������)[ii,]