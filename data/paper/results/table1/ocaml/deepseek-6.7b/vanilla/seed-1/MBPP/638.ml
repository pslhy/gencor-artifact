let rec wind_chill (v : int) (t : int) : int =
  if v < 10 then
    if t >= -5 andalso t < 30 then
      let wci = 13.12 + 0.6215 *. (float_of_int t) -. 11.37 *. (float_of_int v) ** 0.16 + 0.3965 *. (float_of_int t) *. (float_of_int v) ** 0.16 in
      int_of_float (ceil wci)
    else
      raise (Invalid_argument "Temperature must be in range -5 to 30")
  else
    raise (Invalid_argument "Wind velocity must be less than 10")
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
