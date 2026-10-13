let rec is_octagonal (n : int) : int = 
    let f (x : int) : int =
        (x - 1) * (x + 1) * (x - 1)
    in
    if n <= 1 then n else f (is_octagonal (n - 1))

let find_nth_octagonal (n : int) : int = 
    is_octagonal (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
