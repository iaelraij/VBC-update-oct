%%the updated here are mainly applied in the PlottingFunction_3BW_Ks.
%%Change inputs and outputs, as well as aplotting instructions in other
%%plotting files so that it makes sense (28.8.18)

function [Ca,Mg,Na,K,S,Cl,AvgRel,SoluteBal,PHsoil,PHrel]=avgSubreg(Ca,Mg,Na,K,S,Cl,vol,SoluteBal,PHsoil,PHcup)

Ca(8,:)=(Ca(5,:)*vol(2)+Ca(6,:)*vol(3)+Ca(7,:)*vol(4))./sum(vol(2:4));
Mg(8,:)=(Mg(5,:)*vol(2)+Mg(6,:)*vol(3)+Mg(7,:)*vol(4))./sum(vol(2:4));
Na(8,:)=(Na(5,:)*vol(2)+Na(6,:)*vol(3)+Na(7,:)*vol(4))./sum(vol(2:4));
K(8,:)=(K(5,:)*vol(2)+K(6,:)*vol(3)+K(7,:)*vol(4))./sum(vol(2:4));
S(8,:)=(S(5,:)*vol(2)+S(6,:)*vol(3)+S(7,:)*vol(4))./sum(vol(2:4));
Cl(8,:)=(Cl(5,:)*vol(2)+Cl(6,:)*vol(3)+Cl(7,:)*vol(4))./sum(vol(2:4));
PHsoil(:,5)=(PHsoil(:,2)*vol(2)+PHsoil(:,3)*vol(3)+PHsoil(:,4)*vol(4))./sum(vol(2:4));
for i=1:size(SoluteBal,2)
SoluteBal(i).Ca(:,7)=(SoluteBal(i).Ca(:,4)*vol(2)+SoluteBal(i).Ca(:,5)*vol(3)+SoluteBal(i).Ca(:,6)*vol(4))./sum(vol(2:4));
SoluteBal(i).Mg(:,7)=(SoluteBal(i).Mg(:,4)*vol(2)+SoluteBal(i).Mg(:,5)*vol(3)+SoluteBal(i).Mg(:,6)*vol(4))./sum(vol(2:4));
SoluteBal(i).Na(:,7)=(SoluteBal(i).Na(:,4)*vol(2)+SoluteBal(i).Na(:,5)*vol(3)+SoluteBal(i).Na(:,6)*vol(4))./sum(vol(2:4));
SoluteBal(i).K(:,7)=(SoluteBal(i).K(:,4)*vol(2)+SoluteBal(i).K(:,5)*vol(3)+SoluteBal(i).K(:,6)*vol(4))./sum(vol(2:4));
SoluteBal(i).SO4(:,7)=(SoluteBal(i).SO4(:,4)*vol(2)+SoluteBal(i).SO4(:,5)*vol(3)+SoluteBal(i).SO4(:,6)*vol(4))./sum(vol(2:4));
SoluteBal(i).Cl(:,7)=(SoluteBal(i).Cl(:,4)*vol(2)+SoluteBal(i).Cl(:,5)*vol(3)+SoluteBal(i).Cl(:,6)*vol(4))./sum(vol(2:4));


end
Ca(9,:)=[Ca(2,:)./Ca(8,:)];
Mg(9,:)=(Mg(2,:)./Mg(8,:));
Na(9,:)=(Na(2,:)./Na(8,:));
K(9,:)=(K(2,:)./K(8,:));
S(9,:)=(S(2,:)./S(8,:));
Cl(9,:)=(Cl(2,:)./Cl(8,:));
PHrel=PHcup'./PHsoil(:,5);
AvgRel=[mean(Ca(9,:)),mean(Mg(9,:)),mean(Na(9,:)),mean(K(9,:)),mean(S(9,:)),mean(Cl(9,:))];
end