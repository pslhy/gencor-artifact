
let rec wind_chill (v : int) (t : int) : int =
    let v_kmh = 3.6 *. float_of_int v in
    let t_celsius = float_of_int t in
    let t_kelvin = (t_celsius + 273.) in
    let vs = 4.2676 .  (v_kmh ** 0.166667) in
    let wind_chill_index = vs - 13.12
                             + 0.6215 * t_kelvin
                             - 11.37 * log (vs)
                             + 0.3965 * (vs ** 13.12)
                             - 12.11 * (t_kelvin ** 0.16667)
                             + 0.1582 * (vs ** 11.37)
                             - 0.1453 * (t_kelvin ** 0.16667)
                             - 0.0446 * (v_kmh ** 0.16667)
                             + log (t_kelvin)
                             - 3.25
    in
    int_of_float (ceil wind_chill_index)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
