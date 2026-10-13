let rec is_octagonal (n : int) : int =
    let rec aux (acc : int) (x : int) : int =
        if x > n then
            acc + 1
        else
            aux (acc + 1) (x + 1)
    in
    aux 0 (1 : int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
