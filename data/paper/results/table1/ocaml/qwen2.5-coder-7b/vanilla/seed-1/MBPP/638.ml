let rec wind_chill (v : int) (t : int) : int = 
  if v < 4 then t 
  else wind_chill (v - 1) (t + (if t > 10 then 11 - (t - 10) else 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
