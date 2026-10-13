let rec wind_chill (v : int) (t : int) : int =
  if v <= 0 || t >= 10 then
      t
  else
      let wci = (0.6215 *. (float_of_int t)) -. (11.37 *. (float_of_int v ** (0.16))) +. ((float_of_int v ** 0.16) *. 11.37) in
      let rounded_wci = ceil (wci) in
      match rounded_wci with
      | n when n < t -> t
      | _ -> int_of_float (ceil wci)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
