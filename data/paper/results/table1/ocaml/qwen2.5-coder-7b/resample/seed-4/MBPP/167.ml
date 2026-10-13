(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest power of 2 greater than or equal to n. *)
let rec next_power_of_2 (n : int) : int = 
  if (n &&& (n - 1)) = 0 then n else next_power_of_2 (n lsl 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "(&&&)" *)
(*     Hint: Did you mean "&&"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_power_of_2 (n : int) : int = 
  if (n land (n - 1)) = 0 then n else next_power_of_2 (n lsl 1)

