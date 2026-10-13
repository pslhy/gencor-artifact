let rec is_nonagonal (n : int) : int =
  match n with
  | 1 -> false
  | 2 -> false
  | 3 -> false
  | _ -> is_nonagonal (n - 1) || is_nonagonal (n - 2) || is_nonagonal (n - 3)

let nonagonal_count = ref 0

let rec nth_nonagonal (n : int) : int =
  if is_nonagonal n then
    nonagonal_count := !nonagonal_count + 1;
    if n = !nonagonal_count then
      n
    else
      nth_nonagonal (n + 1)
  else
    nth_nonagonal (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
