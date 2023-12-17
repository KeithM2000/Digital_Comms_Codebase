function sd = Skin_Depth(Rho,f,ur)
%Skin_Depth: skin depth of a conductor at an arbitrary frequency
%   Rho: resistivity of the conductor in Ohm meters
%   f: frequency in Hertz
%   ur: relative permeability of the conductor

sd = sqrt(Rho/(pi*f*ur*(4*pi*0.0000001)))
end