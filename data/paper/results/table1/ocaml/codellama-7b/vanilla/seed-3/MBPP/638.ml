let rec wind_chill (v : int) (t : int) : int =
  if v = 0 || t = 50 then 0
  else
    let wci = 35.74 + 0.6215 * (to_float v) - 35.75 * (to_float t)** 0.16 + 0.4275 * (to_float v) * (to_float t)** 0.16 in
    int_of_float (ceil (wci +. 0.5))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
