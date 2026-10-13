let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
  let rec calculate_max acc = function
    | [] -> acc
    | (key, value)::rest -> 
      let (max_key, max_value) = acc in
      if value > max_value then
        calculate_max (key, value) rest
      else
        calculate_max (max_key, max_value) rest
  in
  calculate_max ("", 0) stdata


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
