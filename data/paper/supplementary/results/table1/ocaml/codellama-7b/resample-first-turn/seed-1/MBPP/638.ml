let rec wind_chill (v : int) (t : int) : int =
    let v_kmh = 3.6 *. float_of_int v in
    let t_celsius = float_of_int t in
    let t_kelvin = (t_celsius + 273.) in
    let vs = 4.2676 .*. v_kmh .*. (1.2 .*. t_celsius + 13.12) in
    let vi = vs / t_kelvin in
    truncate (vi +. 0.5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
