let rec is_nonagonal (n : int) : int =
    if n <= 0 then 1
    else if n = 1 then 9
    else is_nonagonal (n - 1)

let nth_nonagonal (n : int) : int =
    assert (n > 0);
    is_nonagonal (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
