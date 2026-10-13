
let rec wind_chill (v : int) (t : int) : int = 
    (* Calculate the wind chill index for a given wind velocity and temperature *)
    let wind_chill = ((Complex.sqrt 17.2) *. (float v) -. (35.74)) /. (0.6215 + (0.3784 *. (float t)) + (0.12032 *. (float v)) + (0.0134 *. (float v) ** 2)) in
    (* Round to the next integer *)
    (int_of_float @@ ceil wind_chill)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
