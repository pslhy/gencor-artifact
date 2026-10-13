let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
  let area1 = float_of_int base1 *. float_of_int height in
  let area2 = float_of_int base2 *. float_of_int height in
  let sum = area1 +. area2 in
  sum /. 2.0

let () =
  let base1 = 3 in
  let base2 = 4 in
  let height = 5 in
  Printf.printf "The median length of the trapezium is %f\n" (median_trapezium base1 base2 height)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
