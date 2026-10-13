let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
  if height <= 0 then
    failwith "The height must be positive."
  else if base1 <= 0 || base2 <= 0 then
    failwith "The bases must be positive."
  else if height < min base1 base2 then
    let smaller_base = min base1 base2 in
    let larger_base = max base1 base2 in
    smaller_base +. (larger_base -. smaller_base) *. height /. 2.
  else
    let base_diff = float_of_int base2 -. float_of_int base1 in
    let height_f = float_of_int height in
    base1 *. height_f /. (2. *. base_diff)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
