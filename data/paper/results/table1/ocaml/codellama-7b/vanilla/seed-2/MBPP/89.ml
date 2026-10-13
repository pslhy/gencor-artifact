let rec closest_num (n : int) : int =
  match n with
  | 1 -> 1
  | n when n > 1 -> n - 1
  | n when n < 0 -> n
  | n when n > 0 -> closest_num (n - 1)

let () = print_int (closest_num 5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
