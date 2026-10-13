let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
  if base1 <= 0 || base2 <= 0 || height <= 0 then
    failwith "Invalid input"
  else
    (float_of_int base1 +. float_of_int base2) *. float_of_int height /. 2.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
