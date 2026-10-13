let rec frequency (a : int list) (x : int) : int =
  match a with
  | [] -> 0
  | h :: t -> if h = x then 1 + frequency t x else frequency t x

let () =
  Printf.printf "5 occurs %d times in [3; 4; 5; 5; 2; 5]\n" (frequency [3; 4; 5; 5; 2; 5] 5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurrences of a number in a given list. *)
