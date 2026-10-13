let rec perfect_squares (a : int) (b : int) : int list =
  match (a, b) with
  | a, a -> [a]
  | a, b when a = b -> []
  | a, b when Utils.is_perfect_square a -> a :: perfect_squares a (b-1)
  | a, b -> perfect_squares (a+1) b

and Utils.is_perfect_square (n : int) : bool =
  let rec loop (n : int) (i : int) : bool =
    match n with
    | 0 -> true
    | _ -> n mod i <> 0 && loop n (i-1)
  in
  loop n (int_sqrt (float_of_int n))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
