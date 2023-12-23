classdef Basic_TLine
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here

    properties
        % properties of wire, defined at construction
        Rel_Permitivity
        Rel_Permeability
        Resistivity
        Diameter
        Distance
        Type
        Length
        % resistance, capacitance, inductance, and leakage, per meter
        unit_res
        unit_cap
        unit_ind
        unit_leak
        % characteristic impedance of line
        Z0_char
        % propagation coefficient
        gamma_prop
        attenuation_const
        phase_const
        % transfer function with a given load
        load_transfer_function
        ideal_transfer_function
    end

    methods
        function obj = Basic_TLine(ep_r,mu_r, Rho, type, diam, dist, len)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            obj.Rel_Permitivity = ep_r;
            obj.Rel_Permeability = mu_r;
            obj.Resistivity = Rho;
            obj.Type = type;
            obj.Diameter=diam;
            obj.Distance=dist;
            obj.Length = len;
        end

        function obj = Set_Unit_Cap(obj,rel_permit)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            if obj.Type == "parallel"
                obj.unit_cap = C_prime_2wire(obj.Distance, obj.Diameter, obj.Diameter, rel_permit);
            end
            if obj.Type == "coax"
                obj.unit_cap = C_prime_coax(obj.Distance, obj.Diameter, rel_permit);
            end
            if obj.Type == "ground"
                obj.unit_cap = C_prime_ground(obj.Distance, obj.Diameter, rel_permit);
            end
        end

        function obj = Set_Unit_Ind(obj,rel_permia)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            if obj.Type == "parallel"
                obj.unit_ind = L_prime_2wire(obj.Distance, obj.Diameter, obj.Diameter, rel_permia);
            end
            if obj.Type == "coax"
                obj.unit_ind = L_prime_coax(obj.Distance, obj.Diameter, rel_permia);
            end
            if obj.Type == "ground"
                obj.unit_ind = L_prime_ground(obj.Distance, obj.Diameter, rel_permia);
            end
        end

        function obj = Set_Unit_Leakage(obj, leakage)
            obj.unit_leak = leakage;
        end

        function obj = Set_Unit_Resistance(obj, freq)
            obj.unit_res = R_prime(obj.Resistivity, freq, obj.Rel_Permeability, obj.Diameter);

        end

        function obj = Set_Char_Impedance(obj, frequency, r_permit, r_permia, leakage)
            obj = Set_Unit_Cap(obj, r_permit);
            obj = Set_Unit_Ind(obj, r_permia);
            obj = Set_Unit_Leakage(obj, leakage);
            obj = Set_Unit_Resistance(obj, frequency);
            obj.Z0_char = Characteristic_Impedance(obj.unit_res, obj.unit_cap, obj.unit_ind, obj.unit_leak, frequency);
        end

        function [obj, out_signal, time_steps] = Estimate_Ideal_Output(obj,input_signal, input_time, s_domain_load_numerator, s_domain_load_denominator , sampling_frequency)
            mean_f = meanfreq(input_signal, sampling_frequency);
            obj = Set_Unit_Resistance(obj, mean_f);
            if obj.Type == "ground"
                R_line = obj.unit_res*obj.Length;
            else
                R_line = 2*obj.unit_res*obj.Length;
            end
            C_line = obj.unit_cap*obj.Length;
            L_line = obj.unit_ind*obj.Length;

            scx = conv([C_line, 0], s_domain_load_numerator);
            len_scx = size(scx,2);
            len_load_den = size(s_domain_load_denominator,2);
            t1 = scx + [zeros(1,(len_scx-len_load_den)), s_domain_load_denominator];
            den = [L_line, R_line];
            den = conv(t1, den);
            len_den = size(den,2);
            len_load = size(s_domain_load_numerator, 2);
            den = den + [zeros(1, (len_den-len_load)) s_domain_load_numerator];
            num = s_domain_load_numerator;
            
            H = tf(num, den);
            obj.ideal_transfer_function = H;
            obj.load_transfer_function = tf(s_domain_load_numerator, s_domain_load_denominator);
            [out_signal, time_steps] = lsim(H, input_signal, input_time);

        end

        function obj = Set_Propagation_Const(obj, frequency, r_permit, r_permia, leakage)
            obj = Set_Unit_Cap(obj, r_permit);
            obj = Set_Unit_Ind(obj, r_permia);
            obj = Set_Unit_Leakage(obj, leakage);
            obj = Set_Unit_Resistance(obj, frequency);
            obj.gamma_prop = Propagation_Coefficient(obj.unit_res, obj.unit_cap, obj.unit_ind, obj.unit_leak, frequency);
            obj.attenuation_const = real(obj.gamma_prop);
            obj.phase_const = imag(obj.gamma_prop);
        end

    end
end