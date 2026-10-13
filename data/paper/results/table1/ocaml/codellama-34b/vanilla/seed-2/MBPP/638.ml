let rec wind_chill (v : int) (t : int) : int =
    let wci = (33 + (0.79 * v) + (0.56 * v) - (0.0036 * v * v)) * (t - 10) in
    if wci < 0 then
        0
    else
        wci / 10


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
