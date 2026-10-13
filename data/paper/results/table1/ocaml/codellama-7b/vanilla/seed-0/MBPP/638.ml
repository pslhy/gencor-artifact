let rec wind_chill (v : int) (t : int) : int =
  if t < -58 then t
  else if t = -58 then -50
  else if t < 11 then 13 + Int.of_float (0.15 * Float.of_int v)
  else if t < 26 then 30 + Int.of_float (0.125 * Float.of_int v)
  else 35 + Int.of_float (0.1 * Float.of_int v)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
