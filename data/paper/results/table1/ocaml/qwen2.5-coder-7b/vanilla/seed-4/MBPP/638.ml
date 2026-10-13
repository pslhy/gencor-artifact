let rec wind_chill (v : int) (t : int) : int = 
  if v < 4 then t
  else (int_of_float (13.12 + 0.6215 *. float t -. 11.37 *. (float_of_int (abs v) ** 0.16) +. 0.3965 *. float t *. (float_of_int (abs v) ** 0.16)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
