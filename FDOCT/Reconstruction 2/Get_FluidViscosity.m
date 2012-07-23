function [fviscosity] = Get_FluidViscosity(Diameter,HctT)

% INPUT : Diameter est un vecteur contenant le diam�tre en microns des
% segments vasculaires pour lesquels la viscosit� du sang doit �tre
% calcul�e. HctT est un vecteur de m�me dimension qui donne la
% concentration par unit� de volume de l'h�matocrite dans le sang. Les
% valeurs d'h�matocrite vont de 0 � 1.
% 
% OUTPUT : Viscosit� du sang dans les segments vis�s
% 
% Les �quations utilis�s proviennent de l'article Pries1992
% 
% Auteur : Jo�l Lefebvre
% Derni�re modification : 2011-03-03

% global PlasmaViscosity

% PlasmaViscosity = 2; % Viscosit� du plasma en cP. Source : Boas 2008
% PlasmaViscosity = 1.6; % Viscosit� du plasma en cP. Source : Haidekker et al. 2002
PlasmaViscosity = 1.9696; % Viscosit� du plasma en CP. Source : Optimisation PlamaViscosity par least mean square

% On calcule d'abord la viscosit� relative apparente pour un h�matocrite de
% 0.45.

Nrel45 = 220*exp(-1.3*Diameter) + 3.2 - 2.44*exp(-0.06*Diameter.^0.645);

% On calcule ensuite la courbure de la courbe nrel, qui d�pend du diam�tre

C = (0.8 + exp(-0.075*Diameter)).*(1./(1 + 10^(-11)*Diameter.^12) - 1) + 1./(1 + 10^(-11)*Diameter.^12);

% On doit ensuite tranformer HctT en HctD, soit le taux d'h�matocrite
% entrant et quittant un certain volume. La transition de HctT �  HctD
% d�pend du diam�tre du segment vasculaire consid�r�.

X = 1 + 1.7*exp(-0.35*Diameter) - 0.6*exp(-0.01*Diameter);
Hematocrit = - X./(2 - 2*X) + ((X./(2-2*X)).^2 + HctT./(1-X)).^0.5;

% On calcule finalement la viscosit� relative apparente du sang, et on
% trouve la viscosit� du sang en multipliant la viscosit� relative avec la
% viscosit� du plasma.

relativeViscosity = 1 + (Nrel45 - 1).*((1-Hematocrit).^C - 1)./((1 - 0.45).^C -1);
fviscosity = relativeViscosity * PlasmaViscosity;
%fviscosity = fviscosity(:);