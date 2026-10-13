(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
let rec is_octagonal (n : int) : int =
    match n with
    | 1 -> 1
    | n -> 4 * (is_octagonal (n - 1)) + 1

let find_nth_octagonal (n : int) : int =
    let rec find (n : int) (count : int) : int =
        if count = n then
            is_octagonal (count)
        else
            find (n) (count - 1)
    in
    find (n) (1)

