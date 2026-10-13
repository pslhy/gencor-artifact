(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
let rec wind_chill (v : int) (t : int) : int =
    let v2 = v * v in
    let c = 1312. + 0.6215 * t - 11.37 * v + 0.3965 * t * v - 0.0117 * v2 in
    let c = if c < 0.0 then 0.0 else c in
    int_of_float (c +. 0.5)

