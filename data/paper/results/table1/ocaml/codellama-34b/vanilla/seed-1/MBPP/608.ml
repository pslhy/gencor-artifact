let rec bell_Number (n : int) : int =
    if n <= 1 then 1
    else if n = 2 then 2
    else List.fold_left (fun acc (k, v) -> acc + v) 0 (bell_num, n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
