let rec wind_chill (v : int) (t : int) : int =
  let c = 0.6215 *. float_of_int(t) and 
      f = (0.4275 *. float_of_int(t) +. 35.75) and 
      s = float_of_int(v) ** 0.16 in
  let wci = 35.74 + 0.6215 *. float_of_int(t) -. 35.75 *. s +. 0.4275 *. float_of_int(t) *. s in
  ceil (wci) |> int_of_float


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
