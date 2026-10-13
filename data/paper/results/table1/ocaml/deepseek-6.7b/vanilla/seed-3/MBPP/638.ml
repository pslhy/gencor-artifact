let rec wind_chill (v : int) (t : int) : int =
  let wci = (0.000125 *. (float_of_int t ** 2.0)) - (0.0275 *. (float_of_int t)) + (10.75 *. (float_of_int v)) - 40.5 in
  int_of_float (ceil wci)

(* Test cases *)
let () = assert (wind_chill 10 10 = 23)
let () = assert (wind_chill 30 2 => 25)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
